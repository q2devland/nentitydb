using NEntityDb.Unit.Test;
using NEntityDb.Data;
using NEntityDb.Data.Model;
using NEntityDb.Test.Model.Application;
using NEntityDb.Test.Model.Customers;
using NEntityDb.Test.Model.Geometry;
using NEntityDb.Test.Model.Suppliers;
using NEntityDb.Unit.Test.Utility;
using System;

namespace NEntityDb.Test.Oracle
{
    public class DbTestInstance: NEntityDb.Data.Oracle.DbInstance
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

            (builder.DbEntityOf<Customer>() as DbEntity<Customer>).Property(c => c.Id).WithIdentitySequence("Customers_Seq");
            (builder.DbEntityOf<User>() as DbEntity<User>).Property(u => u.Id).WithIdentitySequence("Users_Seq");
            (builder.DbEntityOf<Supplier>() as DbEntity<Supplier>).Property(u => u.Id).WithIdentitySequence("Suppliers_Seq");
            (builder.DbEntityOf<Shape>() as DbEntity<Shape>).Property(u => u.Id).WithIdentitySequence("Shapes_Seq");
        }        
    }
}
