using NEntityDb.Data;
using NEntityDb.Data.Common;
using NEntityDb.Data.Model;
using NEntityDb.Model;
using NEntityDb.Test.Model.Geometry;

namespace NEntityDb.Test.Data.Model.Geometry
{
    public class DbPolygonTPH: DbEntity<Polygon>
    {
        public DbPolygonTPH()
        {
            this.LoadEntityDb<DbShapeTPH>();

            this.Property(p => p.Angle).ToColumn("SHA_Angle");
            this.Property(p => p.Length).ToColumn("SHA_Length");

            this.AddShapeTPHTriggers<Polygon>(ShapeType.Polygon);
        }
    }
}
