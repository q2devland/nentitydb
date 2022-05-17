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
    public class DbCurvedTPH: DbEntity<Curved>
    {
        public DbCurvedTPH()
        {
            this.LoadEntityDb<DbShapeTPH>();

            this.Property(c => c.Radius).ToColumn("SHA_Radius");

            this.AddShapeTPHTriggers<Curved>(ShapeType.Circle, ShapeType.Ellipses);
        }
    }
}
