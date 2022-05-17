using NEntityDb.Data;
using NEntityDb.Data.Model;
using NEntityDb.Unit.Test.Utility;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using NEntityDb.Unit.Test;


namespace NEntityDb.Test.Db2
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
