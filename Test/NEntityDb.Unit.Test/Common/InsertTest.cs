using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Data;
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
using System.Linq;
using System.Threading.Tasks;

namespace NEntityDb.Unit.Test.Common
{
    public class InsertTest<TInstance> : BaseTest<TInstance> where TInstance : NEntityDb.Data.Common.DbInstance, new()
    {
        [TestMethod]
        public void SimpleTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Customer> response = dbInstance.NonQueryOf<Customer>(new Customer
                    {
                        FirstName = Guid.NewGuid().ToString(),
                        LastName = Guid.NewGuid().ToString(),
                        TaxCode = Guid.NewGuid().ToString(),
                        Email = $"{Guid.NewGuid()}@test.com",
                        BirthDate = DateTime.Now.AddYears(-20),
                        Points = 1
                    })
                    .WithTag(this, nameof(SimpleTest))
                    .Insert();

                this.AssertNonEmptyValueResponse(response);
                Assert.IsNotNull(response.Value.Id);
            }
        }

        [TestMethod]
        public async Task SimpleAsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Customer> response = await dbInstance.NonQueryOf<Customer>(new Customer
                    {
                        FirstName = Guid.NewGuid().ToString(),
                        LastName = Guid.NewGuid().ToString(),
                        TaxCode = Guid.NewGuid().ToString(),
                        Email = $"{Guid.NewGuid()}@test.com",
                        BirthDate = DateTime.Now.AddYears(-20),
                        Points = 1
                    })
                    .WithTag(this, nameof(SimpleAsyncTest))
                    .InsertAsync();

                this.AssertNonEmptyValueResponse(response);
                Assert.IsNotNull(response.Value.Id);
            }
        }

        [TestMethod]
        public void Simple2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                Customer customer = dbInstance.NonQueryOf<Customer>(new Customer
                    {
                        FirstName = Guid.NewGuid().ToString(),
                        LastName = Guid.NewGuid().ToString(),
                        TaxCode = Guid.NewGuid().ToString(),
                        Email = $"{Guid.NewGuid()}@test.com",
                        BirthDate = DateTime.Now.AddYears(-20),
                        Points = 1
                    })
                    .WithTag(this, nameof(Simple2Test))
                    .Insert()
                    .FirstOrDefault();

                Assert.IsNotNull(customer.Id);
            }
        }

        [TestMethod]
        public async Task Simple2AsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                Customer customer = (await dbInstance.NonQueryOf<Customer>(new Customer
                    {
                        FirstName = Guid.NewGuid().ToString(),
                        LastName = Guid.NewGuid().ToString(),
                        TaxCode = Guid.NewGuid().ToString(),
                        Email = $"{Guid.NewGuid()}@test.com",
                        BirthDate = DateTime.Now.AddYears(-20),
                        Points = 1
                    })
                    .WithTag(this, nameof(Simple2AsyncTest))
                    .InsertAsync())
                    .FirstOrDefault();

                Assert.IsNotNull(customer.Id);
            }
        }

        [TestMethod]
        public void DynamicSimple2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                Customer customer = new Customer
                {
                    FirstName = Guid.NewGuid().ToString(),
                    LastName = Guid.NewGuid().ToString(),
                    TaxCode = Guid.NewGuid().ToString(),
                    Email = $"{Guid.NewGuid()}@test.com",
                    BirthDate = DateTime.Now.AddYears(-20),
                    Points = 1
                };

                NonQueryRequest<Customer> request = dbInstance.NonQueryOf<Customer>();
                request.Value = customer;
                request.Tag = $"{this.GetType().Name.Replace("`", "-")}.{nameof(DynamicSimple2Test)}";
                customer = request.Insert().FirstOrDefault();

                Assert.IsNotNull(customer.Id);
            }
        }

        [TestMethod]
        public void MultipleTest()
        {
            List<Customer> customers = new List<Customer>();

            for (int i = 0; i < 10; i++)
            {
                customers.Add(new Customer
                {
                    FirstName = Guid.NewGuid().ToString(),
                    LastName = Guid.NewGuid().ToString(),
                    TaxCode = Guid.NewGuid().ToString(),
                    Email = $"{Guid.NewGuid()}@test.com",
                    BirthDate = DateTime.Now.AddYears(-(20 + i)),
                    Points = 1
                });
            }

            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Customer> response = dbInstance.InsertData(customers.Select(c => dbInstance.NonQueryOf<Customer>(c).WithTag(this, nameof(MultipleTest))).ToArray());

                this.AssertNonEmptyValuesResponse(response);
                response.ToList().ForEach(customer =>
                {
                    Assert.IsNotNull(customer.Id);
                });
            }
        }

        [TestMethod]
        public void ConvertersTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<User> response = dbInstance.NonQueryOf<User>(new User
                    {
                        FullName = Guid.NewGuid().ToString(),
                        Username = $"{Guid.NewGuid()}@test.com",
                        Settings = new UserSettings
                        {
                            ContactMethod = "SMS",
                            Locale = "en-US",
                            Theme = 1
                        }
                    })
                    .WithTag(this, nameof(ConvertersTest))
                    .Insert();

                this.AssertNonEmptyValueResponse(response);
                Assert.IsNotNull(response.Value.Id);
            }
        }

        [TestMethod]
        public void HierarchyTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Polygon> response = dbInstance.NonQueryOf<Polygon>(new Polygon
                    {
                        Angle = 90,
                        Length = 2,
                        Name = Guid.NewGuid().ToString(),
                        Options = new ShapeOptions
                        {
                            Id = 1
                        }
                    })
                    .WithTag(this, nameof(HierarchyTest))
                    .Insert();

                this.AssertNonEmptyValueResponse(response);
                Assert.IsNotNull(response.Value.Id);
            }
        }

        [TestMethod]
        public void HierarchyNTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Ellipse> response = dbInstance.NonQueryOf<Ellipse>(new Ellipse
                    {
                        Radius = 90,
                        Radius2 = 60,
                        Name = Guid.NewGuid().ToString(),
                        Options = new ShapeOptions
                        {
                            Id = 1
                        }
                    })
                    .WithTag(this, nameof(HierarchyNTest))
                    .Insert();

                this.AssertNonEmptyValueResponse(response);
                Assert.IsNotNull(response.Value.Id);
            }
        }

        [TestMethod]
        public void HierarchyMultipleTest()
        {
            List<NonQueryRequest<Ellipse>> request = new List<NonQueryRequest<Ellipse>>();

            for (int i = 0; i < 10; i++)
            {
                request.Add(new NonQueryRequest<Ellipse>()
                    .WithTag(this, nameof(HierarchyMultipleTest))
                    .Insert(new Ellipse
                    {
                        Radius = 90,
                        Radius2 = 60,
                        Name = Guid.NewGuid().ToString(),
                        Options = new ShapeOptions
                        {
                            Id = 1
                        }
                    }));
            }

            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Ellipse> response = dbInstance.InsertData(request.ToArray());

                this.AssertNonEmptyValuesResponse(response);
                response.Values.ForEach(ellipse =>
                {
                    Assert.IsNotNull(ellipse.Id);
                });
            }
        }

        [TestMethod]
        public void PartialTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<User> response = dbInstance.NonQueryOf<User>(() => new User
                    {
                        FullName = Guid.NewGuid().ToString(),
                        Username = $"{Guid.NewGuid()}@test.com"
                    })
                    .WithTag(this, nameof(PartialTest))
                    .Insert();

                this.AssertNonEmptyValueResponse(response);
                Assert.IsNotNull(response.Value.Id);
            }
        }

        [TestMethod]
        public void PartialWithOnlyTest()
        {
            User user = new User
            {
                FullName = Guid.NewGuid().ToString(),
                Username = $"{Guid.NewGuid().ToString()}@test.com",
            };
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<User> response = dbInstance.NonQueryOf<User>(user)
                    .Only(u => Property.ToArray(u.Username, u.FullName))
                    .WithTag(this, nameof(PartialWithOnlyTest))
                    .Insert();

                this.AssertNonEmptyValueResponse(response);
                Assert.IsNotNull(response.Value.Id);
            }
        }

        [TestMethod]
        public virtual void BatchTest()
        {
            List<User> users = new List<User>();
            for (int i = 0; i < 100; i++)
            {
                users.Add(new User
                {
                    FullName = Guid.NewGuid().ToString(),
                    Username = $"{Guid.NewGuid()}@test.com",
                    Settings = new UserSettings
                    {
                        ContactMethod = "SMS",
                        Locale = "en-US",
                        Theme = 1
                    }
                });
            }

            using (TInstance dbInstance = new TInstance())
            {
                this.OnBatchTestDbInstanceCreated(dbInstance);
                NonQueryResponse<User> response = dbInstance.NonQueryOf<User>(users.ToArray())
                    .WithTag(this, nameof(BatchTest))
                    .Insert();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public async Task BatchAsyncTest()
        {
            List<User> users = new List<User>();
            for (int i = 0; i < 100; i++)
            {
                users.Add(new User
                {
                    FullName = Guid.NewGuid().ToString(),
                    Username = $"{Guid.NewGuid()}@test.com",
                    Settings = new UserSettings
                    {
                        ContactMethod = "SMS",
                        Locale = "en-US",
                        Theme = 1
                    }
                });
            }

            using (TInstance dbInstance = new TInstance())
            {
                this.OnBatchTestDbInstanceCreated(dbInstance);
                NonQueryResponse<User> response = await dbInstance.NonQueryOf<User>(users.ToArray())
                    .WithTag(this, nameof(BatchAsyncTest))
                    .InsertAsync();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void NonIdentityPrimaryKeyTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Company> response = dbInstance.NonQueryOf<Company>(new Company
                    {
                        Id = Guid.NewGuid(),
                        Name = Guid.NewGuid().ToString(),
                    })
                    .WithTag(this, nameof(NonIdentityPrimaryKeyTest))
                    .Insert();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void BinaryPropertyTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Company> response = dbInstance.NonQueryOf<Company>(new Company
                    {
                        Id = Guid.NewGuid(),
                        Name = Guid.NewGuid().ToString(),
                        Logo = this.SampleImage1
                    })
                    .WithTag(this, nameof(BinaryPropertyTest))
                    .Insert();

                this.AssertNonEmptyResponse(response);
            }
        }

        protected virtual void OnBatchTestDbInstanceCreated(IDbInstance instance)
        {
        }       

        [TestMethod]
        public void IntoSelectTest()
        {            
            using (TInstance dbInstance = new TInstance())
            {                
                NonQueryResponse<User> response = dbInstance.NonQueryOf<User>()
                    .WithSelection(new QueryRequest<Supplier>()
                        .Select(s => new User
                        {
                            Username = s.Email,
                            FullName = s.Name,
                            Settings = new UserSettings
                            {
                                ContactMethod = "SMS",
                                Locale = "en-US",
                                Theme = 1
                            }.As<UserSettings>(),
                            IsActive = true
                        })                        
                        .Where(s => s.TaxCode.Contains("1")))
                    .WithOptions((options =>
                    {
                        options.WithoutRepeated();
                    }))
                    .WithTag(this, nameof(IntoSelectTest))
                    .Insert();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public async Task IntoSelectAsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<User> response = await dbInstance.NonQueryOf<User>()
                    .WithSelection(new QueryRequest<Supplier>()
                        .Select(s => new User
                        {
                            Username = s.Email,
                            FullName = s.Name,
                            Settings = new UserSettings
                            {
                                ContactMethod = "SMS",
                                Locale = "en-US",
                                Theme = 1
                            }.As<UserSettings>(),
                            IsActive = true
                        })
                        .Where(s => s.TaxCode.Contains("1")))
                    .WithOptions((options =>
                    {
                        options.WithoutRepeated();
                    }))
                    .WithTag(this, nameof(IntoSelectAsyncTest))
                    .InsertAsync();

                this.AssertEmptyResponse(response);
            }
        }

        [TestMethod]
        public void FunctionTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                Customer customer = dbInstance.NonQueryOf<Customer>(() => new Customer
                    {
                        FirstName = Guid.NewGuid().ToString(),
                        LastName = Guid.NewGuid().ToString(),
                        TaxCode = Guid.NewGuid().ToString(),
                        Email = $"{Guid.NewGuid()}@test.com",
                        BirthDate = DateTime.Now.AddYears(-20),
                        Points = new RandomFunction(10, 100).As<int>()
                    })
                    .WithTag(this, nameof(FunctionTest))
                    .Insert()
                    .FirstOrDefault();

                Assert.IsNotNull(customer.Id);
            }
        }

        [TestMethod]
        public void QueryValueTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Customer> response = dbInstance.NonQueryOf<Customer>(new Customer
                {
                    FirstName = Guid.NewGuid().ToString(),
                    LastName = Guid.NewGuid().ToString(),
                    TaxCode = Guid.NewGuid().ToString(),
                    Email = $"{Guid.NewGuid()}@test.com",
                    BirthDate = DateTime.Now.AddYears(-20),
                    Points = new QueryRequest<Invoice>()
                                .Select(i => i.Count())
                                .Where(i => i.IsPaid.Value)
                                .As<int>()
                })
                .WithTag(this, nameof(QueryValueTest))
                .Insert();

                this.AssertNonEmptyValueResponse(response);
                Assert.IsNotNull(response.Value.Id);
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
                new OrderedTest(MultipleTest),
                new OrderedTest(ConvertersTest),
                new OrderedTest(HierarchyTest),
                new OrderedTest(HierarchyNTest),
                new OrderedTest(HierarchyMultipleTest),
                new OrderedTest(PartialTest),
                new OrderedTest(PartialWithOnlyTest),
                new OrderedTest(BatchTest),
                new OrderedTest(BatchAsyncTest),
                new OrderedTest(IntoSelectTest),
                new OrderedTest(IntoSelectAsyncTest),
                new OrderedTest(NonIdentityPrimaryKeyTest),
                new OrderedTest(BinaryPropertyTest),
                new OrderedTest(FunctionTest),
                new OrderedTest(QueryValueTest)
            };
        }
    }
}
