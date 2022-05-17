using NEntityDb.Data.Model;
using NEntityDb.Unit.Test.Utility;
using NEntityDb.Unit.Test;

namespace NEntityDb.Test.Firebird
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
