using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Model;
using NEntityDb.Model.Expressions;
using NEntityDb.Test.Data.Functions;
using NEntityDb.Test.Model.Application;
using NEntityDb.Test.Model.Billing;
using NEntityDb.Test.Model.Customers;
using NEntityDb.Test.Model.Geometry;
using NEntityDb.Test.Model.Organization;
using NEntityDb.Test.Model.Suppliers;
using NEntityDb.Unit.Test.Utility;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace NEntityDb.Unit.Test.Common
{
    public class UpdateTest<TInstance> : BaseTest<TInstance> where TInstance : NEntityDb.Data.Common.DbInstance, new()
    {
        [TestMethod]
        public void SimpleTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Customer> response = dbInstance.NonQueryOf<Customer>()
                    .Set(() => new Customer
                    {
                        Email = $"{Guid.NewGuid()}@test.com",
                        TaxCode = Guid.NewGuid().ToString()
                    })
                    .Where(c => c.Id == 11)
                    .WithTag(this, nameof(SimpleTest))
                    .Update();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public async Task SimpleAsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Customer> response = await dbInstance.NonQueryOf<Customer>()
                    .Set(() => new Customer
                    {
                        Email = $"{Guid.NewGuid()}@test.com",
                        TaxCode = Guid.NewGuid().ToString()
                    })
                    .Where(c => c.Id == 11)
                    .WithTag(this, nameof(SimpleAsyncTest))
                    .UpdateAsync();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void Simple2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                int rowsAffected = dbInstance.NonQueryOf<Customer>()
                    .Set(() => new Customer
                    {
                        Email = $"{Guid.NewGuid()}@test.com",
                        TaxCode = Guid.NewGuid().ToString()
                    })
                    .Where(c => c.Id == 11)
                    .WithTag(this, nameof(Simple2Test))
                    .Update()
                    .RowsAffected;

                this.AssertRowsAffected(rowsAffected);
            }
        }

        [TestMethod]
        public async Task Simple2AsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                int rowsAffected = (await dbInstance.NonQueryOf<Customer>()
                    .Set(() => new Customer
                    {
                        Email = $"{Guid.NewGuid()}@test.com",
                        TaxCode = Guid.NewGuid().ToString()
                    })
                    .Where(c => c.Id == 11)
                    .WithTag(this, nameof(Simple2AsyncTest))
                    .UpdateAsync())
                    .RowsAffected;

                this.AssertRowsAffected(rowsAffected);
            }
        }

        [TestMethod]
        public void DynamicSimple2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryRequest<Customer> request = dbInstance.NonQueryOf<Customer>();
                request.SetPropertyValues(new Dictionary<Property, object>
                {
                    { Property.GetProperty("Email"), $"{Guid.NewGuid()}@test.com" },
                    { Property.GetProperty("TaxCode"), Guid.NewGuid().ToString() }
                });
                request.Filter = new List<Filter>
                {
                    new ValueFilter("Id", FilterOperator.Equal, 11)
                };
                request.Tag = $"{this.GetType().Name.Replace("`", "-")}.{nameof(DynamicSimple2Test)}";

                int rowsAffected = request.Update().RowsAffected;

                this.AssertRowsAffected(rowsAffected);
            }
        }

        [TestMethod]
        public void WithJoinTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Employee> response = dbInstance.NonQueryOf<Employee>()
                    .Set(() => new Employee
                    {
                        PhoneNumber = "11111"                        
                    })
                    .Where(e => e.Department.Name == "Accounting")
                    .WithTag(this, nameof(WithJoinTest))
                    .Update();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void MultipleTest()
        {
            List<NonQueryRequest<Customer>> request = new List<NonQueryRequest<Customer>>();

            for (int i = 0; i < 50; i++)
            {
                request.Add(new NonQueryRequest<Customer>()
                    .Set(() => new Customer
                    {
                        Email = $"{Guid.NewGuid()}@test.com",
                        TaxCode = Guid.NewGuid().ToString()
                    })
                    .Where(c => c.Id == (10 + i))
                    .WithTag(this, nameof(MultipleTest)));
            }

            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Customer> response = dbInstance.UpdateData(request.ToArray());

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void ConvertersTest()
        {
            UserSettings settings = new UserSettings
            {
                ContactMethod = "SMS",
                Locale = "en-US",
                Theme = 1
            };

            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<User> response = dbInstance.NonQueryOf<User>()
                    .Set(() => new User
                    {
                        Settings = settings
                    })
                    .Where(u => u.Id == 20)
                    .WithTag(this, nameof(ConvertersTest))
                    .Update();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void HierarchyTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Polygon> response = dbInstance.NonQueryOf<Polygon>()
                    .Set(() => new Polygon
                    {
                        Angle = 60,
                        Options = new ShapeOptions
                        {
                            Id = 2
                        }
                    })
                    .Where(p => p.Id == 13)
                    .WithTag(this, nameof(HierarchyTest))
                    .Update();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void HierarchyNTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Ellipse> response = dbInstance.NonQueryOf<Ellipse>()
                    .Set(() => new Ellipse
                    {
                        Radius = 60,
                        Radius2 = 80,
                        Options = new ShapeOptions
                        {
                            Id = 2
                        }
                    })
                    .Where(e => e.Options.Id == 7)
                    .WithTag(this, nameof(HierarchyNTest))
                    .Update();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void HierarchyMultipleTest()
        {
            List<NonQueryRequest<Ellipse>> request = new List<NonQueryRequest<Ellipse>>();

            for (int i = 0; i < 4; i++)
            {
                request.Add(new NonQueryRequest<Ellipse>()
                    .Set(() => new Ellipse
                    {
                        Radius = 60,
                        Radius2 = 90,
                        Options = new ShapeOptions
                        {
                            Id = 2
                        }
                    })
                    .Where(e => e.Options.Id == (8 + i))
                    .WithTag(this, nameof(HierarchyMultipleTest)));
            }

            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Ellipse> response = dbInstance.UpdateData(request.ToArray());

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void PropertyValue()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Customer> response = dbInstance.NonQueryOf<Customer>()
                    .Set(c => new Customer
                    {
                        Email = $"{Guid.NewGuid()}@test.com",
                        Points = c.Age,
                        IsActive = true,
                    })
                    .Where(c => c.Id > 80 && c.Id <= 90)
                    .WithTag(this, nameof(PropertyValue))
                    .Update();

                this.AssertNonEmptyResponse(response);

            }
        }       

        [TestMethod]
        public void BinaryPropertyTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Company> response = dbInstance.NonQueryOf<Company>()
                    .Set(() => new Company
                    {
                        Logo = this.SampleImage2
                    })
                    .Where(c => c.Name.Contains("e"))
                    .WithTag(this, nameof(BinaryPropertyTest))
                    .Update();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void FunctionValue()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Customer> response = dbInstance.NonQueryOf<Customer>()
                    .Set(c => new Customer
                    {
                        Email = $"{Guid.NewGuid()}@test.com",
                        IsActive = true,
                        Points = new SumFunction(c.Points, 10).As<int>()
                    })
                    .Where(c => c.Id > 90 && c.Id <= 100)
                    .WithTag(this, nameof(FunctionValue))
                    .Update();

                this.AssertNonEmptyResponse(response);

            }
        }

        [TestMethod]
        public void NestedFunctionValue()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Customer> response = dbInstance.NonQueryOf<Customer>()
                    .Set(c => new Customer
                    {
                        Email = $"{Guid.NewGuid()}@test.com",
                        IsActive = true,
                        Points = new SumFunction(c.Points, new GetAgeFunction(c.BirthDate, c.DeathDate)).As<int>()
                    })
                    .Where(c => c.Id > 90 && c.Id <= 100)
                    .WithTag(this, nameof(NestedFunctionValue))
                    .Update();

                this.AssertNonEmptyResponse(response);

            }
        }

        [TestMethod]
        public void QueryValueTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Customer> response = dbInstance.NonQueryOf<Customer>()
                    .Set(() => new Customer
                    {
                        Points = new QueryRequest<Invoice>()
                            .Select(i => i.Count())
                            .Where(i => i.IsPaid.Value)
                            .As<int>()
                    })
                    .Where(c => c.Id == 11)
                    .WithTag(this, nameof(QueryValueTest))
                    .Update();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void QueryValue2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Customer> response = dbInstance.NonQueryOf<Customer>()
                    .Set(c => new Customer
                    {
                        Points = new QueryRequest<Invoice>()
                            .Select(i => i.Count())
                            .Where(i => i.IsPaid.Value && i.Customer.Id == c.Id)
                            .As<int>()
                    })
                    .Where(c => c.Id.Between(20, 30))
                    .WithTag(this, nameof(QueryValue2Test))
                    .Update();

                this.AssertNonEmptyResponse(response);
            }
        }

        public virtual List<OrderedTest> GetPlayListTest()
        {
            return new List<OrderedTest>
            {
                new OrderedTest(SimpleTest),
                new OrderedTest(SimpleAsyncTest),
                new OrderedTest(Simple2Test),
                new OrderedTest(Simple2AsyncTest),
                new OrderedTest(DynamicSimple2Test),
                new OrderedTest(WithJoinTest),
                new OrderedTest(MultipleTest),
                new OrderedTest(ConvertersTest),
                new OrderedTest(HierarchyTest),
                new OrderedTest(HierarchyNTest),
                new OrderedTest(HierarchyMultipleTest),
                new OrderedTest(PropertyValue),
                new OrderedTest(BinaryPropertyTest),
                new OrderedTest(FunctionValue),
                new OrderedTest(NestedFunctionValue),
                new OrderedTest(QueryValueTest),
                new OrderedTest(QueryValue2Test),
            };
        }
    }
}
