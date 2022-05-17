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
    public class DbShapeOptions: DbEntity<ShapeOptions>
    {
        public DbShapeOptions()
        {
            this.ToTable("ShapeOptions");

            this.Property(s => s.Id).ToColumn("SHO_Id").IsIdentity();
            this.Property(s => s.OutlineColor).ToColumn("SHO_OutlineColor");
            this.Property(s => s.BackgroundColor).ToColumn("SHO_BackgroundColor");

            this.WithPrimaryKey(s => s.Id);
        }
    }
}
