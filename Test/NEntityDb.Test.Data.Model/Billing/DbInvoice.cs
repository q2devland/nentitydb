using NEntityDb.Data;
using NEntityDb.Data.Common;

using NEntityDb.Data.Model;
using NEntityDb.Model;
using NEntityDb.Test.Data.Functions;
using NEntityDb.Test.Model.Billing;
using NEntityDb.Test.Model.Customers;

namespace NEntityDb.Test.Data.Model.Billing
{
    public class DbInvoice: DbEntity<Invoice>
    {
        public DbInvoice()
        {
            this.ToTable("Invoices");

            this.Property(i => i.Id).ToColumn("INV_Id").IsIdentity();
            this.Property(i => i.Number).ToColumn("INV_Number");
            this.Property(i => i.Date).ToColumn("INV_Date");
            this.Property(i => i.IsPaid).ToColumn("INV_IsPaid");
            this.Property(i => i.Customer.Id).ToColumn("CUS_Id");                       

            this.WithPrimaryKey(i => i.Id);

            this.WithForeignKey<Customer>(i => i.Customer).IsNotNull();

            this.WithForeignKey<BlackList>(i => i.BlackList)
                .Is<Invoice, BlackList>((i, b) => i.Customer.Email == b.Email && new YearFunction(i.Date).As<int>() == b.Year);

            this.Include<InvoiceLine>(l => l.Invoice, c => c.Lines);
        }
    }
}
