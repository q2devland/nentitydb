using NEntityDb.Data.Model;
using NEntityDb.Test.Model.Customers;

namespace NEntityDb.Test.Data.Model.Customers
{
    public class DbBlackList: DbEntity<BlackList>
    {
        public DbBlackList()
        {
            this.ToTable("BlackList");

            this.Property(b => b.Year).ToColumn("BLL_Year");
            this.Property(b => b.Email).ToColumn("BLL_Email");
            this.Property(b => b.Amount).ToColumn("BLL_Amount");

            this.WithPrimaryKey(b => NEntityDb.Model.Property.ToArray(b.Year, b.Email));           
        }        
    }
}
