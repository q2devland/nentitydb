
using NEntityDb.Data.Model;
using NEntityDb.Test.Model.Application;
using NEntityDb.Test.Model.Customers;
using NEntityDb.Test.Model.Geometry;
using NEntityDb.Test.Model.Suppliers;

namespace NEntityDb.Test.Oracle
{
    public class DbTestInstanceIdentity: DbTestInstance
    {
        protected override void OnModelCreating(DbModelBuilder builder)
        {
            base.OnModelCreating(builder);

            (builder.DbEntityOf<Customer>() as DbEntity<Customer>).Property(c => c.Id).IdentitySequence = null;
            (builder.DbEntityOf<User>() as DbEntity<User>).Property(u => u.Id).IdentitySequence = null;
            (builder.DbEntityOf<Supplier>() as DbEntity<Supplier>).Property(u => u.Id).IdentitySequence = null;
            (builder.DbEntityOf<Shape>() as DbEntity<Shape>).Property(u => u.Id).IdentitySequence = null;
        }
    }
}
