using NEntityDb.Data;

using NEntityDb.Data.Context;
using NEntityDb.Data.Model;
using NEntityDb.Model;
using NEntityDb.Model.Expressions;
using NEntityDb.Test.FirstApp.Model;
using System;
using System.Data;

namespace NEntityDb.Test.FirstApp.Data
{
    public class DbCustomer: DbEntity<Customer>
    {
        public DbCustomer()
        {
            this.ToTable("Customers");

            this.Property(c => c.Id).ToColumn("CUS_Id").IsIdentity();
            this.Property(c => c.FirstName).ToColumn("CUS_FirstName");
            this.Property(c => c.LastName).ToColumn("CUS_LastName");
            this.Property(c => c.Email).ToColumn("CUS_Email");
            this.Property(c => c.CreationDate).ToColumn("CUS_CreationDate");

            this.Property(c => c.FullName).Is<Customer>(c => new ConcatFunction(c.LastName, "', '", c.FirstName));

            this.WithPrimaryKey(c => c.Id);

            this.WithForeignKey<Address>(c => c.MainAddress)
                .Is<Customer, Address>((c, a) => c.Id == a.Customer.Id && a.IsMain.Value);

            this.Include<Address>(a => a.Customer, c => c.Addresses);

            this.WithTrigger((IDbInsertContext context) => {
                context.PropertyValueProvider.SetValue<Customer>(c => c.CreationDate, DateTime.Now);
            }).OnBeforeInsert();
        }        
    }
}
