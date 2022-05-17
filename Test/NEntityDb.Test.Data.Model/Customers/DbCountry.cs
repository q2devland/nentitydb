using NEntityDb.Data.Model;
using NEntityDb.Test.Model.Customers;

namespace NEntityDb.Test.Data.Model.Customers
{
    public class DbCountry: DbEntity<Country>
    {
        public DbCountry()
        {
            this.ToTable("Countries");

            this.Property(c => c.Id).ToColumn("COU_Id").IsIdentity();
            this.Property(c => c.Name).ToColumn("COU_Name");

            this.WithPrimaryKey(c => c.Id);

            this.Include<Address>(a => a.Country, c => c.Addresses);
        }
    }
}
