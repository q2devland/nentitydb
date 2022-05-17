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
    public class DbEllipseTPH: DbEntity<Ellipse>
    {
        public DbEllipseTPH()
        {
            this.LoadEntityDb<DbCurvedTPH>();

            this.Property(e => e.Radius2).ToColumn("SHA_Radius2");

            this.AddShapeTPHTriggers<Ellipse>(ShapeType.Ellipses);
        }
    }
}
