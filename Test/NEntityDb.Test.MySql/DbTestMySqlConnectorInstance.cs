extern alias MySqlConnectorAlias;
using NEntityDb.Data;
using NEntityDb.Data.Model;
using NEntityDb.Unit.Test.Utility;
using System;
using System.Collections.Generic;
using NEntityDb.Unit.Test;

namespace NEntityDb.Test.MySql
{
    public class DbTestMySqlConnectorInstance: NEntityDb.Data.MySql.DbInstance
    {
        public DbTestMySqlConnectorInstance(): base(TestSettings.ConnectionString)
        {
        }

        public DbTestMySqlConnectorInstance(System.Data.IDbConnection connection) : base(connection)
        {
        }

        protected DbTestMySqlConnectorInstance(NEntityDb.Data.IDbConnection connection) : base(connection)
        {
        }

        protected override void OnConfiguring(IDbSettings settings)
        {
            settings.AddTestSqlListener();
            
            settings.AddTypeConversions(new Dictionary<Type, object>
            {
                [typeof(int)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Int32,
                [typeof(int?)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Int32,
                [typeof(short)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Int16,
                [typeof(short?)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Int16,
                [typeof(long)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Int64,
                [typeof(long?)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Int64,
                [typeof(decimal)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Decimal,
                [typeof(decimal?)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Decimal,
                [typeof(double)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Double,
                [typeof(double?)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Double,
                [typeof(float)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Float,
                [typeof(float?)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Float,
                [typeof(DateTime)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.DateTime,
                [typeof(DateTime?)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.DateTime,
                [typeof(bool)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Bit,
                [typeof(bool?)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Bit,
                [typeof(byte)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Byte,
                [typeof(byte?)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Byte,
                [typeof(char)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.VarChar,
                [typeof(char?)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.VarChar,
                [typeof(string)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.VarChar,
                [typeof(Guid)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Guid,
                [typeof(Guid?)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Guid,
                [typeof(TimeSpan)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Timestamp,
                [typeof(TimeSpan?)] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Timestamp,
                [typeof(byte[])] = MySqlConnectorAlias::MySqlConnector.MySqlDbType.Binary,
            });

            settings.DbTypeConversionHandler = (Type type, Func<Type, object> defaultConverter) =>
            {
                if (type.IsEnum)
                    return MySqlConnectorAlias::MySqlConnector.MySqlDbType.Int32;
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
            return new MySqlConnectorDataFactory();
        }
    }
}
