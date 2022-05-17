using NEntityDb.Unit.Test;
using NEntityDb.Data.Model;
using NEntityDb.Unit.Test.Utility;

namespace NEntityDb.Test.SqlServer
{
    public class DbTestTPHInstance : DbTestInstance
    {
        public DbTestTPHInstance(): base()
        {
        }

        public DbTestTPHInstance(System.Data.IDbConnection connection) : base(connection)
        {
        }
       
        protected override void OnModelCreating(DbModelBuilder builder)
        {
            builder.AddModel(TestSettings.Schema, true);
        }        
    }
}
