using NEntityDb.Data;
using NEntityDb.Data.Common;
using NEntityDb.Data.Model;
using NEntityDb.Model;
using NEntityDb.Model.Expressions;
using NEntityDb.Test.Model.Billing;
using NEntityDb.Test.Model.Customers;
using NEntityDb.Test.Model.Geometry;
using System;

namespace NEntityDb.Test.Data.Model.Geometry
{
    public class DbShapeTPH: DbEntity<Shape>
    {
        public DbShapeTPH()
        {
            this.ToTable("ShapesTPH");

            this.Property(s => s.Id).ToColumn("SHA_Id").IsIdentity();
            this.Property(s => s.Name).ToColumn("SHA_Name");
            this.Property(s => s.Type).ToColumn("SHA_Type").WithConversion<string>(
                value => value.ToString(),
                value => Enum.Parse<ShapeType>(value.ToString()));
            this.Property(s => s.Options.Id).ToColumn("SHO_Id");

            this.WithPrimaryKey(s => s.Id);

            this.WithForeignKey<ShapeOptions>(s => s.Options).IsNotNull();
        }
    }
}
