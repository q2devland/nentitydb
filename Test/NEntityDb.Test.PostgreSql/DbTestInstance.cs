using NEntityDb.Unit.Test;
using NEntityDb.Data;
using NEntityDb.Data.Model;
using NEntityDb.Unit.Test.Utility;

namespace NEntityDb.Test.PostgreSql
{
    public class DbTestInstance: NEntityDb.Data.PostgreSql.DbInstance
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

        protected override void OnModelCreating(DbModelBuilder builder)
        {
            builder.AddModel(TestSettings.Schema);
        }        
    }
}
