using NEntityDb.Data;
using NEntityDb.Data.Model;
using NEntityDb.Data.Sqlite;
using NEntityDb.Unit.Test.Utility;
using System;
using NEntityDb.Unit.Test;

namespace NEntityDb.Test.Sqlite
{
    public class DbTestInstance: NEntityDb.Data.Sqlite.DbInstance
    {
        public DbTestInstance(): base(TestSettings.ConnectionString)
        {
        }

        public DbTestInstance(System.Data.IDbConnection connection) : base(connection)
        {
        }

        protected DbTestInstance(IDbConnection connection) : base(connection)
        {
        }

        protected override void OnConfiguring(IDbSettings settings)
        {
            settings.AddTestSqlListener();
        }

        protected override void OnConnectionOpened(System.Data.IDbConnection connection)
        {
            connection.BindFunction("df_GetAge", (DateTime? birthDate, DateTime? deathDate) => TestFunctions.GetAge(birthDate, deathDate));
            connection.BindFunction("sp_AddSupplier", (string name, string taxCode, string email) => TestFunctions.AddSupplier(name, taxCode, email, connection));
            connection.BindFunction("sp_GetInvoices", (int pageNumber, int pageSize) => TestFunctions.GetInvoices(pageNumber, pageSize, connection));
            connection.BindFunction("sp_GetInvoice", (int id) => TestFunctions.GetInvoice(id, connection));
            connection.BindFunction("sp_GetCountAddress", (int id) => TestFunctions.GetCountAddress(id, connection));
            connection.BindFunction("sp_GetCountAddresses", (int pageNumber, int pageSize) => TestFunctions.GetCountAddresses(pageNumber, pageSize, connection));
            connection.BindFunction("sp_GetInvoicesAmount", () => TestFunctions.GetInvoicesAmount(connection));
        }

        protected override void OnModelCreating(DbModelBuilder builder)
        {
            builder.AddModel();
        }      
    }
}
