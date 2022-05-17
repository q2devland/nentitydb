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
    public class DbEllipsesKit: DbEntity<EllipsesKit>
    {
        public DbEllipsesKit()
        {
            this.ToTable("EllipsesKit");

            this.Property(k => k.Id).ToColumn("ELK_Id").IsIdentity();
            this.Property(k => k.Name).ToColumn("ELK_Name");
            this.Property(k => k.Ellipse1.Id).ToColumn("ELL_Id1");
            this.Property(k => k.Ellipse2.Id).ToColumn("ELL_Id2");
            this.Property(k => k.Ellipse3.Id).ToColumn("ELL_Id3");

            this.WithPrimaryKey(e => e.Id);

            this.WithForeignKey<Ellipse>(k => k.Ellipse1).IsNotNull();
            this.WithForeignKey<Ellipse>(k => k.Ellipse2).IsNotNull();
            this.WithForeignKey<Ellipse>(k => k.Ellipse3).IsNotNull();
        }
    }
}
