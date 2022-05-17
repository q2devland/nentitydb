using NEntityDb.Data;
using NEntityDb.Data.Common;
using NEntityDb.Data.Model;
using NEntityDb.Model;
using NEntityDb.Model.Expressions;
using NEntityDb.Test.Data.Triggers;
using NEntityDb.Test.Model.Billing;
using NEntityDb.Test.Model.Organization;
using System.Data;

namespace NEntityDb.Test.Data.Model.Organization
{
    public class DbCompany: DbEntity<Company>
    {
        public DbCompany()
        {
            this.ToTable("Companies");

            this.Property(c => c.Id).ToColumn("COM_Id");
            this.Property(c => c.Name).ToColumn("COM_Name");
            this.Property(c => c.Logo).ToColumn("COM_Logo");

            this.WithPrimaryKey(c => c.Id);
        }
    }
}
