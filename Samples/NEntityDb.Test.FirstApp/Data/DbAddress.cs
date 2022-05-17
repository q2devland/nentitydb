using NEntityDb.Data;
using NEntityDb.Data.Common;

using NEntityDb.Data.Model;
using NEntityDb.Test.FirstApp.Model;

namespace NEntityDb.Test.FirstApp.Data
{
    public class DbAddress: DbEntity<Address>
    {
        public DbAddress()
        {
            this.ToTable("Addresses");

            this.Property(a => a.Id).ToColumn("ADR_Id").IsIdentity();
            this.Property(a => a.Street).ToColumn("ADR_Street");
            this.Property(a => a.PostalCode).ToColumn("ADR_PostalCode");
            this.Property(a => a.City).ToColumn("ADR_City");
            this.Property(a => a.IsMain).ToColumn("ADR_IsMain");
            this.Property(a => a.Customer.Id).ToColumn("CUS_Id");
            this.Property(a => a.Country.Id).ToColumn("COU_Id");

            this.WithPrimaryKey(a => a.Id);

            this.WithForeignKey<Customer>(a => a.Customer).IsNotNull();
            this.WithForeignKey<Country>(a => a.Country).IsNotNull();
        }
    }
}
