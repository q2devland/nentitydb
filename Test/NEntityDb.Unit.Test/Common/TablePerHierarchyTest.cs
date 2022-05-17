using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Model;
using NEntityDb.Model.Expressions;
using NEntityDb.Test.Model.Application;
using NEntityDb.Test.Model.Billing;
using NEntityDb.Test.Model.Customers;
using NEntityDb.Test.Model.Geometry;
using NEntityDb.Test.Model.Suppliers;
using NEntityDb.Unit.Test.Utility;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq.Expressions;

namespace NEntityDb.Unit.Test.Common
{
    public class TablePerHierarchyTest<TInstance> : BaseTest<TInstance> where TInstance : NEntityDb.Data.Common.DbInstance, new()
    {
        [TestMethod]
        public void InsertTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                int rowsAffected = dbInstance.NonQueryOf<Polygon>(() => new Polygon
                {
                    Name = Guid.NewGuid().ToString(),
                    Angle = 48, 
                    Length = 12,
                    Options = new ShapeOptions
                    {
                        Id = 1
                    }
                })
                .WithTag(this, nameof(InsertTest), 1)
                .Insert()
                .RowsAffected;

                rowsAffected += dbInstance.NonQueryOf<Polygon>(() => new Polygon
                {
                    Name = Guid.NewGuid().ToString(),
                    Angle = 50,
                    Length = 25,
                    Options = new ShapeOptions
                    {
                        Id = 2
                    }
                })
                .WithTag(this, nameof(InsertTest), 2)
                .Insert()
                .RowsAffected;

                rowsAffected += dbInstance.NonQueryOf<Circle>(() => new Circle
                {
                    Name = Guid.NewGuid().ToString(),
                    Radius = 5,
                    Options = new ShapeOptions
                    {
                        Id = 1
                    }
                })
                .WithTag(this, nameof(InsertTest), 3)
                .Insert()
                .RowsAffected;


                rowsAffected += dbInstance.NonQueryOf<Ellipse>(() => new Ellipse
                {
                    Name = Guid.NewGuid().ToString(),
                    Radius = 10,
                    Radius2 = 20,
                    Options = new ShapeOptions
                    {
                        Id = 1
                    }
                })
                .WithTag(this, nameof(InsertTest), 4)
                .Insert()
                .RowsAffected;

                rowsAffected += dbInstance.NonQueryOf<Ellipse>(() => new Ellipse
                {
                    Name = Guid.NewGuid().ToString(),
                    Radius = 50,
                    Radius2 = 25,
                    Options = new ShapeOptions
                    {
                        Id = 1
                    }
                })
                .WithTag(this, nameof(InsertTest), 5)
               .Insert()
               .RowsAffected;

                rowsAffected += dbInstance.NonQueryOf<Ellipse>(() => new Ellipse
                {
                    Name = Guid.NewGuid().ToString(),
                    Radius = 60,
                    Radius2 = 80,
                    Options = new ShapeOptions
                    {
                        Id = 2
                    }
                })
                .WithTag(this, nameof(InsertTest), 6)
               .Insert()
               .RowsAffected;

                Assert.AreEqual(rowsAffected, 6);
            }
        }

        [TestMethod]
        public void UpdateTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                int rowsAffected = dbInstance.NonQueryOf<Polygon>()
                    .Set(() => new Polygon
                    {
                        Options = new ShapeOptions
                        {
                            Id = 3
                        }
                    })
                    .WithTag(this, nameof(UpdateTest))
                    .Update()
                    .RowsAffected;

                Assert.AreEqual(rowsAffected, 2);
            }
        }

        [TestMethod]
        public void QueryTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                List<Polygon> polygons = dbInstance.QueryOf<Polygon>()
                    .Select(p => Property.ToArray(p.Id, p.Name, p.Options.BackgroundColor, p.Angle, p.Length))
                    .OrderBy(p => p.Length)
                    .WithTag(this, nameof(QueryTest), 1)
                    .ToList();

                Assert.AreEqual(polygons.Count, 2);

                List<Circle> circles = dbInstance.QueryOf<Circle>()
                    .Select(c => Property.ToArray(c.Id, c.Name, c.Options.BackgroundColor, c.Radius))
                    .OrderBy(c => c.Name)
                    .WithTag(this, nameof(QueryTest), 2)
                    .ToList();

                Assert.AreEqual(circles.Count, 1);

                List<Ellipse> ellipses = dbInstance.QueryOf<Ellipse>()
                    .Select(e => Property.ToArray(e.Id, e.Name, e.Options.BackgroundColor, e.Radius, e.Radius2))
                    .OrderBy(e => e.Radius2)
                    .WithTag(this, nameof(QueryTest), 3)
                    .ToList();

                Assert.AreEqual(ellipses.Count, 3);

                List<Curved> curved = dbInstance.QueryOf<Curved>()
                    .Select(c => Property.ToArray(c.Id, c.Name, c.Options.BackgroundColor, c.Radius))
                    .OrderBy(c => c.Radius)
                    .WithTag(this, nameof(QueryTest), 4)
                    .ToList();

                Assert.AreEqual(curved.Count, 4);

                List<Shape> shapes = dbInstance.QueryOf<Shape>()
                    .Select(s => Property.ToArray(s.Id, s.Name, s.Options.BackgroundColor, s.Type))
                    .OrderBy(s => s.Name)
                    .WithTag(this, nameof(QueryTest), 5)
                    .ToList();

                Assert.AreEqual(shapes.Count, 6);
            }
        }

        [TestMethod]
        public void DeleteTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                int rowsAffected = dbInstance.NonQueryOf<Polygon>()
                    .WithTag(this, nameof(DeleteTest), 1)
                    .Delete()
                    .RowsAffected;

                Assert.AreEqual(rowsAffected, 2);

                ScalarResponse<Shape> response = dbInstance.ScalarOf<Shape>()
                    .Select(s => s.Count())
                    .WithTag(this, nameof(DeleteTest), 2)
                    .Read();

                this.AssertCount(response, 4);                
            }
        }

        public virtual List<OrderedTest> GetPlayListTest()
        {
            return new List<OrderedTest>
            {
                new OrderedTest(InsertTest),
                new OrderedTest(UpdateTest),
                new OrderedTest(QueryTest),
                new OrderedTest(DeleteTest),
            };
        }
    }
}
