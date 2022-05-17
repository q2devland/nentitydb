using NEntityDb.Data;
using NEntityDb.Data.Common;
using NEntityDb.Data.Model;
using NEntityDb.Model;
using NEntityDb.Model.Expressions;
using NEntityDb.Test.Model.Billing;
using NEntityDb.Test.Model.Customers;
using NEntityDb.Test.Model.Suppliers;

namespace NEntityDb.Test.Data.Model.Suppliers
{
    public class DbSupplier: DbEntity<Supplier>
    {
        public DbSupplier()
        {
            this.ToTable("Suppliers");

            this.Property(s => s.Id).ToColumn("SUP_Id").IsIdentity();
            this.Property(s => s.Name).ToColumn("SUP_Name");
            this.Property(s => s.TaxCode).ToColumn("SUP_TaxCode");
            this.Property(s => s.Email).ToColumn("SUP_Email");

            this.WithPrimaryKey(s => s.Id);
        }
    }
}
