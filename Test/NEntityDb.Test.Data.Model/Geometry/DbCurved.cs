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
    public class DbCurved: DbEntity<Curved>
    {
        public DbCurved()
        {
            this.Extends<Shape>();

            this.ToTable("Curved");

            this.Property(c => c.Id).ToColumn("CUR_Id");
            this.Property(c => c.Radius).ToColumn("CUR_Radius");
        }
    }
}
