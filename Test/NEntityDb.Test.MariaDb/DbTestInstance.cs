
using NEntityDb.Data;
using NEntityDb.Data.Model;
using NEntityDb.Test.Utility;
using System;
using System.Data;

namespace NEntityDb.Test.MariaDb
{
    public class DbTestInstance: NEntityDb.Data.MariaDb.DbInstance
    {
        public DbTestInstance(): base(TestSettings.ConnectionString)
        {
        }

        public DbTestInstance(System.Data.IDbConnection connection) : base(connection)
        {
        }

        protected override void OnConfiguring(IDbSettings settings)
        {
            settings.AddTestSqlListener();
        }

        protected override void OnModelCreating(DbModelBuilder builder)
        {
            builder.AddModel(TestSettings.Schema);
        }        
    }
}
