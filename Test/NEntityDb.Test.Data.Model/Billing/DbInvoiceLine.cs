using NEntityDb.Data;
using NEntityDb.Data.Common;
using NEntityDb.Data.Model;
using NEntityDb.Test.Model.Billing;
using NEntityDb.Test.Model.Customers;

namespace NEntityDb.Test.Data.Model.Billing
{
    public class DbInvoiceLine: DbEntity<InvoiceLine>
    {
        public DbInvoiceLine()
        {
            this.ToTable("InvoiceLines");

            this.Property(l => l.Id).ToColumn("ILI_Id").IsIdentity();
            this.Property(l => l.Concept).ToColumn("ILI_Concept");
            this.Property(l => l.Amount).ToColumn("ILI_Amount");
            this.Property(l => l.Invoice.Id).ToColumn("INV_Id");

            this.WithPrimaryKey(l => l.Id);

            this.WithForeignKey<Invoice>(i => i.Invoice).IsNotNull();
        }
    }
}
