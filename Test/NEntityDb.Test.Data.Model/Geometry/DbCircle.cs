using NEntityDb.Data;
using NEntityDb.Data.Common;
using NEntityDb.Data.Model;
using NEntityDb.Model;
using NEntityDb.Model.Expressions;
using NEntityDb.Test.Model.Billing;
using NEntityDb.Test.Model.Customers;
using NEntityDb.Test.Model.Geometry;

namespace NEntityDb.Test.Data.Model.Geometry
{
    public class DbCircle: DbEntity<Circle>
    {
        public DbCircle()
        {
            this.Extends<Curved>();

            this.ToTable("Circles");

            this.Property(c => c.Id).ToColumn("CIR_Id");
        }
    }
}
