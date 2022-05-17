using NEntityDb.Unit.Test;
using NEntityDb.Data;
using NEntityDb.Data.Model;
using NEntityDb.Unit.Test.Utility;
using System;
using System.Data;

namespace NEntityDb.Test.MySql
{
    public class DbTestInstance: NEntityDb.Data.MySql.DbInstance
    {
        public DbTestInstance(): base(TestSettings.ConnectionString)
        {
        }

        public DbTestInstance(System.Data.IDbConnection connection) : base(connection)
        {
        }

        protected DbTestInstance(NEntityDb.Data.IDbConnection connection) : base(connection)
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
