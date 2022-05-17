using Microsoft.Data.Sqlite;
using NEntityDb.Data;
using NEntityDb.Data.Model;
using NEntityDb.Data.Sqlite;
using NEntityDb.Unit.Test;
using NEntityDb.Unit.Test.Utility;
using System;
using System.Collections.Generic;

namespace NEntityDb.Test.Sqlite
{
    public class DbTestSqliteInstance: NEntityDb.Data.Sqlite.DbInstance
    {
        public DbTestSqliteInstance(): base(TestSettings.ConnectionString)
        {
        }

        public DbTestSqliteInstance(System.Data.IDbConnection connection) : base(connection)
        {
        }

        protected DbTestSqliteInstance(IDbConnection connection) : base(connection)
        {
        }

        protected override void OnConnectionOpened(System.Data.IDbConnection connection)
        {
            (connection as SqliteConnection).CreateFunction("df_GetAge", (DateTime? birthDate, DateTime? deathDate) => TestFunctions.GetAge(birthDate, deathDate));
            (connection as SqliteConnection).CreateFunction("sp_AddSupplier", (string name, string taxCode, string email) => TestFunctions.AddSupplier(name, taxCode, email, connection));
            (connection as SqliteConnection).CreateFunction("sp_GetInvoices", (int pageNumber, int pageSize) => SqliteFunction.Returns(TestFunctions.GetInvoices(pageNumber, pageSize, connection)));
            (connection as SqliteConnection).CreateFunction("sp_GetInvoice", (int id) => SqliteFunction.Returns(TestFunctions.GetInvoice(id, connection)));
            (connection as SqliteConnection).CreateFunction("sp_GetCountAddress", (int id) => SqliteFunction.Returns(TestFunctions.GetCountAddress(id, connection)));
            (connection as SqliteConnection).CreateFunction("sp_GetCountAddresses", (int pageNumber, int pageSize) => SqliteFunction.Returns(TestFunctions.GetCountAddresses(pageNumber, pageSize, connection)));
            (connection as SqliteConnection).CreateFunction("sp_GetInvoicesAmount", () => TestFunctions.GetInvoicesAmount(connection));
        }

        protected override void OnConfiguring(IDbSettings settings)
        {
            settings.AddTestSqlListener();

            settings.AddTypeConversions(new Dictionary<Type, object>
            {
                [typeof(int)] = SqliteType.Integer,
                [typeof(int?)] = SqliteType.Integer,
                [typeof(short)] = SqliteType.Integer,
                [typeof(short?)] = SqliteType.Integer,
                [typeof(long)] = SqliteType.Integer,
                [typeof(long?)] = SqliteType.Integer,
                [typeof(decimal)] = SqliteType.Real,
                [typeof(decimal?)] = SqliteType.Real,
                [typeof(double)] = SqliteType.Real,
                [typeof(double?)] = SqliteType.Real,
                [typeof(float)] = SqliteType.Real,
                [typeof(float?)] = SqliteType.Real,
                [typeof(DateTime)] = SqliteType.Text,
                [typeof(DateTime?)] = SqliteType.Text,
                [typeof(bool)] = SqliteType.Integer,
                [typeof(bool?)] = SqliteType.Integer,
                [typeof(byte)] = SqliteType.Integer,
                [typeof(byte?)] = SqliteType.Integer,
                [typeof(char)] = SqliteType.Text,
                [typeof(char?)] = SqliteType.Text,
                [typeof(string)] = SqliteType.Text,
                [typeof(Guid)] = SqliteType.Text,
                [typeof(Guid?)] = SqliteType.Text,
                [typeof(TimeSpan)] = SqliteType.Text,
                [typeof(TimeSpan?)] = SqliteType.Text,
                [typeof(byte[])] = SqliteType.Blob,
            });

            settings.DbTypeConversionHandler = (Type type, Func<Type, object> defaultConverter) =>
            {
                if (type.IsEnum)
                    return SqliteType.Integer;
                else
                    return defaultConverter(type);
            };
        }

        protected override void OnModelCreating(DbModelBuilder builder)
        {
            builder.AddModel(TestSettings.Schema);
        }

        protected override IDbDataFactory OnCreateDataFactory()
        {
            return new SqliteDataFactory();
        }
    }
}
