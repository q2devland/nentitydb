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
    public class DbPolygon: DbEntity<Polygon>
    {
        public DbPolygon()
        {
            this.Extends<Shape>();

            this.ToTable("Polygons");

            this.Property(p => p.Id).ToColumn("POL_Id");
            this.Property(p => p.Angle).ToColumn("POL_Angle");
            this.Property(p => p.Length).ToColumn("POL_Length");
        }
    }
}
