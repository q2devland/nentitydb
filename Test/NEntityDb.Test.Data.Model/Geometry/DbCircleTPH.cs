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
    public class DbCircleTPH: DbEntity<Circle>
    {
        public DbCircleTPH()
        {
            this.LoadEntityDb<DbCurvedTPH>();

            this.AddShapeTPHTriggers<Circle>(ShapeType.Circle);
        }
    }
}
