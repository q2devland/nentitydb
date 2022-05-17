using NEntityDb.Data;
using NEntityDb.Data.Model;
using NEntityDb.Data.SqlServer;
using System;
using System.Collections.Generic;
using System.Text;

namespace NEntityDb.Test.FirstApp.Data
{
    public class DbFirstApp: DbInstance
    {
        public static string ConnectionString { get; set; }
        public static string Schema { get; set; }

        public DbFirstApp(): base(DbFirstApp.ConnectionString)
        {
        }

        protected override void OnModelCreating(DbModelBuilder builder)
        {
            builder.Add(new DbCustomer(),
                    new DbAddress(),
                    new DbCountry())
                .WithDefaultSchema(DbFirstApp.Schema);
        }
    }
}
