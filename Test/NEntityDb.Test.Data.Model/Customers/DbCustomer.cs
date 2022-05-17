using NEntityDb.Data;
using NEntityDb.Data.Common;

using NEntityDb.Data.Context;
using NEntityDb.Data.Model;
using NEntityDb.Model;
using NEntityDb.Model.Expressions;
using NEntityDb.Test.Data.Functions;
using NEntityDb.Test.Data.Triggers;
using NEntityDb.Test.Model;
using NEntityDb.Test.Model.Billing;
using NEntityDb.Test.Model.Customers;
using System;
using System.Data;

namespace NEntityDb.Test.Data.Model.Customers
{
    public class DbCustomer: DbEntity<Customer>
    {
        public DbCustomer()
        {
            this.ToTable("Customers");

            this.Property(c => c.Id).ToColumn("CUS_Id").IsIdentity();
            this.Property(c => c.FirstName).ToColumn("CUS_FirstName");
            this.Property(c => c.LastName).ToColumn("CUS_LastName");
            this.Property(c => c.TaxCode).ToColumn("CUS_TaxCode");
            this.Property(c => c.Email).ToColumn("CUS_Email");
            this.Property(c => c.IsActive).ToColumn("CUS_IsActive");
            this.Property(c => c.BirthDate).ToColumn("CUS_BirthDate");
            this.Property(c => c.DeathDate).ToColumn("CUS_DeathDate");
            this.Property(c => c.Points).ToColumn("CUS_Points");
            this.Property(c => c.CreationDate).ToColumn("CUS_CreationDate");

            this.Property(c => c.FullName).Is<Customer>(c => new ConcatFunction(c.LastName, "', '", c.FirstName));
            this.Property(c => c.Age).Is<Customer>(c => new GetAgeFunction(c.BirthDate, c.DeathDate));
            this.Property(c => c.PendingAmount).Is<Customer>(c => new QueryRequest<InvoiceLine>()
                .Select(l => l.Amount.Sum())
                .Where(l => !l.Invoice.IsPaid.Value && l.Invoice.Customer.Id == c.Id));

            this.WithPrimaryKey(c => c.Id);

            this.WithForeignKey<Address>(c => c.MainAddress)
                .Is<Customer, Address>((c, a) => c.Id == a.Customer.Id && a.IsMain.Value);

            this.WithForeignKey<Address>(c => c.MainAddress2)
                .Is<Customer, Address>((c, a) => c.Id == a.Customer.Id && a.IsMain.Value, new QueryRequest<Address>()
                    .SelectAll()
                    .Where(a => a.IsMain.Value));

            this.Include<Address>(a => a.Customer, c => c.Addresses);
            this.Include<Invoice>(i => i.Customer, c => c.Invoices);

            this.WithJoinConditions<Address, Customer>((a, c) => c.IsActive.Value);

            this.WithTrigger((IDbInsertContext context) => {
                context.PropertyValueProvider.SetValue<Customer>(c => c.CreationDate, DateTime.Now);
            }).OnBeforeInsert();

            this.WithTrigger<ActiveTrigger>()
                .OnBeforeSelect()
                .OnBeforeInsert()
                .OnBeforeUpdate()
                .OnInsteadOfDelete();
        }        
    }
}
