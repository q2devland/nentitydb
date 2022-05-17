using NEntityDb.Data.Model;
using NEntityDb.Unit.Test.Utility;
using NEntityDb.Test.Firebird.Resolvers;
using NEntityDb.Data;
using NEntityDb.Data.Resolvers;
using NEntityDb.Unit.Test;

namespace NEntityDb.Test.Firebird
{
    public class DbTestInstance: NEntityDb.Data.Firebird.DbInstance
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
            settings.AddResolver<IColumnToSqlResolver>(new ColumnToSqlResolver());
        }

        protected override void OnModelCreating(DbModelBuilder builder)
        {
            builder.AddModel(TestSettings.Schema);
        }       
    }
}
