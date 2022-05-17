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
    public class DbEllipse: DbEntity<Ellipse>
    {
        public DbEllipse()
        {
            this.Extends<Curved>();

            this.ToTable("Ellipses");

            this.Property(e => e.Id).ToColumn("ELL_Id");
            this.Property(e => e.Radius2).ToColumn("ELL_Radius2");            
        }
    }
}
