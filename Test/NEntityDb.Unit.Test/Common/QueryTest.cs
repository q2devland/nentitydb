using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Linq;
using NEntityDb.Model;
using NEntityDb.Model.Expressions;
using NEntityDb.Test.Data.Functions;
using NEntityDb.Test.Model.Application;
using NEntityDb.Test.Model.Billing;
using NEntityDb.Test.Model.Customers;
using NEntityDb.Test.Model.Geometry;
using NEntityDb.Test.Model.Mapping;
using NEntityDb.Test.Model.Organization;
using NEntityDb.Unit.Test.Utility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NEntityDb.Unit.Test.Common
{
    public class QueryTest<TInstance> : BaseTest<TInstance> where TInstance : NEntityDb.Data.Common.DbInstance, new()
    {

        [TestMethod]
        public void SimpleTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .Page(1, 50)
                    .WithTag(this, nameof(SimpleTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public async Task SimpleAsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = await dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .Page(1, 50)
                    .WithTag(this, nameof(SimpleAsyncTest))
                    .ReadAsync();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void Simple2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                List<Customer> customers = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .Page(1, 50)
                    .WithTag(this, nameof(Simple2Test))
                    .ToList();

                Assert.IsNotNull(customers);
                Assert.IsTrue(customers.Count > 0);
            }
        }

        [TestMethod]
        public async Task Simple2AsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                List<Customer> customers = await dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .Page(1, 50)
                    .WithTag(this, nameof(Simple2AsyncTest))
                    .ToListAsync();

                Assert.IsNotNull(customers);
                Assert.IsTrue(customers.Count > 0);
            }
        }

        [TestMethod]
        public void SimpleMapTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                List<Client> clients = dbInstance.QueryOf<Customer>()
                    .Select(c => new Client
                    {
                        Code = c.Id,
                        Name = c.FirstName,
                        Surname = c.LastName,
                        TaxId = c.TaxCode,
                        Mail = c.Email,
                        AddressesCount = new QueryRequest<Address>().Select(a => a.Count()).Where(a => a.Customer.Id == c.Id).As<int>(),
                        Age = new GetAgeFunction(c.BirthDate, c.DeathDate).As<int>(),
                        MainDirection = new Direction
                        {
                            PostalCode = c.MainAddress.PostalCode,
                            City = c.MainAddress.City,
                            Country = c.MainAddress.Country.Name
                        }
                    })
                    .Page(1, 50)
                    .WithTag(this, nameof(SimpleMapTest))
                    .ToList();

                Assert.IsNotNull(clients);
                Assert.IsTrue(clients.Count > 0);
            }
        }

        [TestMethod]
        public void SimpleAnonymousMapTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                var customers = dbInstance.QueryOf<Customer>()
                    .Select(c => new
                    {
                        Code = c.Id,
                        Name = c.FirstName,
                        Surname = c.LastName,
                        TaxId = c.TaxCode,
                        Mail = c.Email,
                        AddressesCount = new QueryRequest<Address>().Select(a => a.Count()).Where(a => a.Customer.Id == c.Id).As<int>(),
                        Age = new GetAgeFunction(c.BirthDate, c.DeathDate).As<int>(),
                        MainDirection = new
                        {
                            c.MainAddress.PostalCode,
                            c.MainAddress.City,
                            Country = c.MainAddress.Country.Name
                        }
                    })
                    .Page(1, 50)
                    .WithTag(this, nameof(SimpleAnonymousMapTest))
                    .ToList();

                Assert.IsNotNull(customers);
                Assert.IsTrue(customers.Count > 0);
            }
        }


        [TestMethod]
        public void PagingWithLimitTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .Limit(15, 5)
                    .WithTag(this, nameof(PagingWithLimitTest))
                    .Read();

                this.AssertNonEmptyWithoutPageResponse(response);
                Assert.IsNull(response.PageInfo.Total);
            }
        }

        [TestMethod]
        public void PagingWithLimitRetrievingTotalTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .Limit(15, 5)
                    .WithTotalRows()
                    .WithTag(this, nameof(PagingWithLimitRetrievingTotalTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
                Assert.IsNotNull(response.PageInfo.Total);
                List<Customer> customers = response.ToList();
                Assert.IsTrue(customers.Count == 15 || customers.Count == response.PageInfo.Total);
            }
        }

        [TestMethod]
        public void LastPageTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                var total = dbInstance.ScalarOf<Customer>()
                    .Select(c => c.Count())
                    .Where(c => c.Age > 50)
                    .WithTag(this, nameof(LastPageTest), 1)
                    .Read()
                    .Value;

                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .Where(c => c.Age > 50)
                    .OrderBy(c => Property.ToArray(c.Age, c.FullName))
                    .Limit(20, Int.Parse(total) - 12, true)
                    .WithTag(this, nameof(LastPageTest), 2)
                    .Read();

                this.AssertNonEmptyResponse(response);
                Assert.IsNotNull(response.PageInfo.Total);
                Assert.IsTrue(response.Values.Count == 12);
            }
        }

        [TestMethod]
        public void OrderTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .OrderBy(c => Property.ToArray(c.LastName, c.FirstName))
                    .Page(1, 50)
                    .WithTag(this, nameof(OrderTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void FilterTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email, c.BirthDate, c.CreationDate))
                    .Where(c => c.FirstName.Contains("a") || c.Email.Contains("a"))
                    .OrderByDescending(c => c.Age)
                    .OrderBy(c => c.FirstName)
                    .OrderByDescending(c => c.Id)
                    .Page(1, 50)
                    .WithTag(this, nameof(FilterTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void DynamicFilterTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryRequest<Customer> request = dbInstance.QueryOf<Customer>();
                request.Properties = Property.GetProperties("Id", "FirstName", "LastName", "TaxCode", "Email", "BirthDate", "CreationDate");
                request.Filter = new List<Filter>
                {
                    new ValueFilter("FirstName", FilterOperator.Contains, "a"),
                    new ValueFilter("Email", FilterOperator.Contains, "a", LogicOperator.Or),
                };
                request.Filter.Enclose();
                request.Order = new List<Order>
                {
                    new Order("Age", OrderType.Descending),
                    new Order("FirstName"),
                    new Order("Id", OrderType.Descending)
                };
                request.PageInfo = PageInfo.FromPage(1, 50);
                request.Tag = $"{this.GetType().Name.Replace("`", "-")}.{nameof(DynamicFilterTest)}";

                QueryResponse<Customer> response = request.Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void ComputedPropertiesTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Age, c.BirthDate, c.TaxCode, c.Email))
                    .Where(c => c.Age > 18 && c.FullName.Contains("a"))
                    .OrderBy(c => c.FullName)
                    .OrderByDescending(c => c.Age)
                    .Page(1, 50)
                    .WithTag(this, nameof(ComputedPropertiesTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void ComputedPropertiesWithDependencies1Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Address> response = dbInstance.QueryOf<Address>()
                    .Select(a => Property.ToArray(a.Id, a.ContactInfo))
                    .Page(1, 50)
                    .WithTag(this, nameof(ComputedPropertiesWithDependencies1Test))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void ComputedPropertiesWithDependencies2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Invoice> response = dbInstance.QueryOf<Invoice>()
                    .Select(i => Property.ToArray(i.Id, i.Number, i.Date, i.Customer.MainAddress.ContactInfo))
                    .Page(1, 50)
                    .WithTag(this, nameof(ComputedPropertiesWithDependencies2Test))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void InFilterTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Age, c.BirthDate, c.TaxCode, c.Email))
                    .Where(c => c.Id.In(1, 2, 3, 4, 5))
                    .WithTag(this, nameof(InFilterTest))
                    .Read();

                this.AssertNonEmptyWithoutPageResponse(response);
            }
        }

        [TestMethod]
        public void InFilterWithQueryTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Age, c.BirthDate, c.TaxCode, c.Email))
                    .Where(c => c.Id.In(new QueryRequest<Address>()
                        .Select(a => a.Customer.Id)
                        .Where(a => a.Customer.Id.Between(1, 50) && a.IsMain.Value)))
                    .WithTag(this, nameof(InFilterWithQueryTest))
                    .Read();

                this.AssertNonEmptyWithoutPageResponse(response);
            }
        }

        [TestMethod]
        public void NotInFilterTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Age, c.BirthDate, c.TaxCode, c.Email))
                    .Where(c => c.FirstName.NotIn(new string[] { "Grace", "Barry", "Prince" }))
                    .Page(1, 50)
                    .WithTag(this, nameof(NotInFilterTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void NotInFilterWithQueryTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Age, c.BirthDate, c.TaxCode, c.Email))
                    .Where(c => c.Id.NotIn(new QueryRequest<Address>()
                        .Select(a => a.Customer.Id)
                        .Where(a => a.Customer.Id.Between(1, 50) && a.IsMain.Value)))
                    .Page(1, 50)
                    .WithTag(this, nameof(NotInFilterWithQueryTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void BetweenFilterTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Age, c.BirthDate, c.TaxCode, c.Email))
                    .Where(c => c.Id.Between(1, 10))
                    .Page(1, 50)
                    .WithTag(this, nameof(BetweenFilterTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void NotBetweenFilterTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Age, c.BirthDate, c.TaxCode, c.Email))
                    .Where(c => c.Id.NotBetween(1, 10))
                    .Page(1, 50)
                    .WithTag(this, nameof(NotBetweenFilterTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void NegationFilterTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Age, c.BirthDate, c.TaxCode, c.Email))
                    .Where(c => !c.FullName.Contains("a"))
                    .Page(1, 50)
                    .WithTag(this, nameof(NegationFilterTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void DateFormulaFilterTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Invoice> response = dbInstance.QueryOf<Invoice>()
                    .Select(i => Property.ToArray(i.Id, i.Number, i.Date, i.IsPaid))
                    .Where(i => i.Date == new DateFormulaFilter(DateFormulaValue.PreviousYear).As<DateTime>())
                    .Page(1, 50)
                    .WithTag(this, nameof(DateFormulaFilterTest))
                    .Read();

                this.AssertEmptyResponse(response);
            }
        }

        [TestMethod]
        public void ComputedQueryRequestPropertyTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.Email, c.PendingAmount))
                    .Where(c => c.PendingAmount > 0)
                    .Page(1, 50)
                    .WithTag(this, nameof(ComputedQueryRequestPropertyTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void ComputedRelationTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Email,
                        c.MainAddress.Id, c.MainAddress.City, c.MainAddress.Country.Name))
                    .Where(c => c.Age > 18)
                    .Page(1, 50)
                    .WithTag(this, nameof(ComputedRelationTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void ComputedRelationWithDependencies1Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Invoice> response = dbInstance.QueryOf<Invoice>()
                    .Select(i => Property.ToArray(i.Id, i.Number, i.Date, i.BlackList.Amount))
                    .Where(i => i.BlackList.Email != null)
                    .Page(1, 50)
                    .WithTag(this, nameof(ComputedRelationWithDependencies1Test))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void ComputedRelationWithDependencies2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<InvoiceLine> response = dbInstance.QueryOf<InvoiceLine>()
                    .Select(l => Property.ToArray(l.Invoice.Id, l.Invoice.Number, l.Invoice.Date,
                        l.Invoice.BlackList.Amount, l.Amount))
                    .Where(l => l.Invoice.BlackList.Email != null)
                    .Page(1, 50)
                    .WithTag(this, nameof(ComputedRelationWithDependencies2Test))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void ComputedQueryRequestRelationTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Email, c.MainAddress2.Id, c.MainAddress2.City))
                    .Page(1, 50)
                    .WithTag(this, nameof(ComputedQueryRequestRelationTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void GroupByTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                var response = dbInstance.QueryOf<Address>()
                    .Select(a => new Client
                    {
                        Code = a.Customer.Id,
                        Name = a.Customer.FullName,
                        AddressesCount = a.Count()
                    })
                    .GroupBy(a => Property.ToArray(a.Customer.Id, a.Customer.FullName))
                    .OrderBy(a => a.Customer.Id)
                    .Page(1, 50)
                    .WithTag(this, nameof(GroupByTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
                response.Values.Apply(c =>
                {
                    Assert.IsTrue(c.AddressesCount >= 0);
                });
            }
        }

        [TestMethod]
        public void GroupByAnonymousTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                var response = dbInstance.QueryOf<Address>()
                    .Select(a => new
                    {
                        a.Customer.Id,
                        a.Customer.FullName,
                        AddressesCount = a.Count()
                    })
                    .GroupBy(a => Property.ToArray(a.Customer.Id, a.Customer.FullName))
                    .OrderBy(a => a.Customer.Id)
                    .Page(1, 50)
                    .WithTag(this, nameof(GroupByAnonymousTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
                response.Values.Apply(c =>
                {
                    Assert.IsTrue(c.AddressesCount >= 0);
                });
            }
        }

        [TestMethod]
        public void HavingByTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                var response = dbInstance.QueryOf<Address>()
                    .Select(a => new Client
                    {
                        Code = a.Customer.Id,
                        Name = a.Customer.FullName,
                        AddressesCount = a.Count()
                    })
                    .GroupBy(a => Property.ToArray(a.Customer.Id, a.Customer.FullName))
                    .Having(a => a.Count() > 1)
                    .OrderBy(a => a.Customer.Id)
                    .Page(1, 50)
                    .WithTag(this, nameof(HavingByTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
                response.Values.Apply(c =>
                {
                    Assert.IsTrue(c.AddressesCount > 1);
                });
            }
        }

        [TestMethod]
        public void HavingByAnonymousTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                var response = dbInstance.QueryOf<Address>()
                    .Select(a => new 
                    {
                        a.Customer.Id,
                        a.Customer.FullName,
                        AddressesCount = a.Count()
                    })
                    .GroupBy(a => Property.ToArray(a.Customer.Id, a.Customer.FullName))
                    .Having(a => a.Count() > 1)
                    .OrderBy(a => a.Customer.Id)
                    .Page(1, 50)
                    .WithTag(this, nameof(HavingByAnonymousTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
                response.Values.Apply(c =>
                {
                    Assert.IsTrue(c.AddressesCount > 1);
                });
            }
        }

        [TestMethod]
        public void MasterDetailTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.FullName, c.Email))
                    .Where(c => c.Age > 50 && c.MainAddress.Id != null)
                    .OrderBy(c => c.MainAddress.City)
                    .Include(c => c.Addresses, new QueryRequest<Address>()
                        .Select(a => Property.ToArray(a.Street, a.PostalCode, a.City))
                        .OrderBy(a => a.City))
                    .WithTag(this, nameof(MasterDetailTest))
                    .Read();

                this.AssertNonEmptyWithoutPageResponse(response);
            }
        }

        [TestMethod]
        public async Task MasterDetailAsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = await dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.FullName, c.Email))
                    .Where(c => c.Age > 50 && c.MainAddress.Id != null)
                    .OrderBy(c => c.MainAddress.City)
                    .Include(c => c.Addresses, new QueryRequest<Address>()
                        .Select(a => Property.ToArray(a.Street, a.PostalCode, a.City))
                        .OrderBy(a => a.City))
                    .WithTag(this, nameof(MasterDetailAsyncTest))
                    .ReadAsync();

                this.AssertNonEmptyWithoutPageResponse(response);
            }
        }

        [TestMethod]
        public void MasterDetail2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Email))
                    .Where(c => c.Age > 50 && c.MainAddress.Id != null)
                    .OrderBy(c => c.MainAddress.City)
                    .Include(c => c.Addresses, new QueryRequest<Address>()
                        .Select(a => Property.ToArray(a.Id, a.Street, a.PostalCode, a.City, a.Customer.Id))
                        .OrderBy(a => a.City))
                    .WithTag(this, nameof(MasterDetail2Test))
                    .Read();

                this.AssertNonEmptyWithoutPageResponse(response);
            }
        }

        [TestMethod]
        public void MasterDetailMapTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Client> response = dbInstance.QueryOf<Customer>()
                    .Select(c => new Client
                    {
                        Name = c.FirstName,
                        Surname = c.LastName,
                        Mail = c.Email
                    })
                    .Where(c => c.Age > 50 && c.MainAddress.Id != null)
                    .OrderBy(c => c.MainAddress.City)
                    .Include(c => c.Addresses, i => i.Directions, new QueryRequest<Address>()
                        .Select(a => new Direction
                        {    
                            PostalCode = a.PostalCode,
                            City = a.City,
                            Country = a.Country.Name
                        })
                        .OrderBy(a => a.City))
                    .WithTag(this, nameof(MasterDetailMapTest))
                    .Read();

                this.AssertNonEmptyWithoutPageResponse(response);
            }
        }

        [TestMethod]
        public void MasterDetailMap2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Client> response = dbInstance.QueryOf<Customer>()
                    .Select(c => new Client
                    {
                        Code = c.Id,
                        Name = c.FirstName,
                        Surname = c.LastName,
                        Mail = c.Email
                    })
                    .Where(c => c.Age > 50 && c.MainAddress.Id != null)
                    .OrderBy(c => c.MainAddress.City)
                    .Include(c => c.Addresses, i => i.Directions, new QueryRequest<Address>()
                        .Select(a => new Direction
                        {
                            Id = a.Id,
                            PostalCode = a.PostalCode,
                            City = a.City,
                            Country = a.Country.Name,
                            Client = new Client
                            {
                                Code = a.Customer.Id
                            }
                        })
                        .OrderBy(a => a.City))
                    .WithTag(this, nameof(MasterDetailMap2Test))
                    .Read();

                this.AssertNonEmptyWithoutPageResponse(response);
            }
        }

        [TestMethod]
        public void MasterDetailsTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.FullName, c.Email))
                    .Where(c => c.Age > 50)
                    .OrderBy(c => c.MainAddress.City)
                    .Include(c => c.Invoices, new QueryRequest<Invoice>().
                        Select(i => Property.ToArray(i.Number, i.Date))
                        .Where(i => i.IsPaid.Value)
                        .Include(i => i.Lines, new QueryRequest<InvoiceLine>()
                            .Select(l => Property.ToArray(l.Concept, l.Amount))))
                    .WithTag(this, nameof(MasterDetailsTest))
                    .Read();

                this.AssertNonEmptyWithoutPageResponse(response);
            }
        }

        [TestMethod]
        public async Task MasterDetailsAsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = await dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.FullName, c.Email))
                    .Where(c => c.Age > 50)
                    .OrderBy(c => c.MainAddress.City)
                    .Include(c => c.Invoices, new QueryRequest<Invoice>().
                        Select(i => Property.ToArray(i.Number, i.Date))
                        .Where(i => i.IsPaid.Value)
                        .Include(i => i.Lines, new QueryRequest<InvoiceLine>()
                            .Select(l => Property.ToArray(l.Concept, l.Amount))))
                    .WithTag(this, nameof(MasterDetailsAsyncTest))
                    .ReadAsync();

                this.AssertNonEmptyWithoutPageResponse(response);
            }
        }

        [TestMethod]
        public void MasterDetails2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Email))
                    .Where(c => c.Age > 50)
                    .OrderBy(c => c.MainAddress.City)
                    .Include(c => c.Invoices, new QueryRequest<Invoice>().
                        Select(i => Property.ToArray(i.Id, i.Number, i.Date, i.Customer.Id))
                        .Where(i => i.IsPaid.Value)
                        .Include(i => i.Lines, new QueryRequest<InvoiceLine>()
                            .Select(l => Property.ToArray(l.Id, l.Concept, l.Amount, l.Invoice.Id))))
                    .WithTag(this, nameof(MasterDetails2Test))
                    .Read();

                this.AssertNonEmptyWithoutPageResponse(response);
            }
        }

        [TestMethod]
        public void MasterDetailsMapTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Client> response = dbInstance.QueryOf<Customer>()
                    .Select(c => new Client
                    {
                        Name = c.FirstName,
                        Surname = c.LastName,
                        Mail = c.Email
                    })
                    .Where(c => c.Age > 50)
                    .OrderBy(c => c.MainAddress.City)
                    .Include(c => c.Invoices, ci => ci.Charges, new QueryRequest<Invoice>()
                        .Select(i => new Charge
                        {                           
                            Date = i.Date,
                            Number = i.Number,
                        })
                        .Where(i => i.IsPaid.Value)
                        .Include(i => i.Lines, ca => ca.Lines, new QueryRequest<InvoiceLine>()
                            .Select(l => new ChargeLine
                            {
                                Description = l.Concept,
                                Amount = l.Amount
                            })))
                    .WithTag(this, nameof(MasterDetailsMapTest))
                    .Read();

                this.AssertNonEmptyWithoutPageResponse(response);
            }
        }

        [TestMethod]
        public void MasterDetailsMap2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Client> response = dbInstance.QueryOf<Customer>()
                    .Select(c => new Client
                    {
                        Code = c.Id,
                        Name = c.FirstName,
                        Surname = c.LastName,
                        Mail = c.Email
                    })
                    .Where(c => c.Age > 50)
                    .OrderBy(c => c.MainAddress.City)
                    .Include(c => c.Invoices, ci => ci.Charges, new QueryRequest<Invoice>()
                        .Select(i => new Charge
                        {
                            Code = i.Id,
                            Date = i.Date,
                            Number = i.Number,
                            Client = new Client
                            {
                                Code = i.Customer.Id
                            }
                        })
                        .Where(i => i.IsPaid.Value)
                        .Include(i => i.Lines, ca => ca.Lines, new QueryRequest<InvoiceLine>()
                            .Select(l => new ChargeLine
                            {
                                Code = l.Id,
                                Description = l.Concept,
                                Amount = l.Amount,
                                Charge = new Charge
                                {
                                    Code = l.Invoice.Id
                                }
                            })))
                    .WithTag(this, nameof(MasterDetailsMap2Test))
                    .Read();

                this.AssertNonEmptyWithoutPageResponse(response);
            }
        }

        [TestMethod]
        public void IncludeTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.FullName, c.Email))
                    .Where(c => c.Age > 50)
                    .OrderBy(c => c.Age)
                    .Page(2, 50)
                    .Include(c => c.Addresses, new QueryRequest<Address>()
                        .Select(a => Property.ToArray(a.Street, a.PostalCode, a.City))
                        .OrderBy(a => a.City))
                    .WithTag(this, nameof(IncludeTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public async Task IncludeAsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = await dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.FullName, c.Email))
                    .Where(c => c.Age > 50)
                    .OrderBy(c => c.Age)
                    .Page(2, 50)
                    .Include(c => c.Addresses, new QueryRequest<Address>()
                        .Select(a => Property.ToArray(a.Street, a.PostalCode, a.City))
                        .OrderBy(a => a.City))
                    .WithTag(this, nameof(IncludeAsyncTest))
                    .ReadAsync();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void Include2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Email))
                    .Where(c => c.Age > 50)
                    .OrderBy(c => c.Age)
                    .Page(2, 50)
                    .Include(c => c.Addresses, new QueryRequest<Address>()
                        .Select(a => Property.ToArray(a.Id, a.Street, a.PostalCode, a.City, a.Customer.Id))
                        .OrderBy(a => a.City))
                    .WithTag(this, nameof(Include2Test))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void IncludeMapTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Client> response = dbInstance.QueryOf<Customer>()
                    .Select(c => new Client
                    {
                        Name = c.FirstName,
                        Surname = c.LastName,
                        Mail = c.Email
                    })
                    .Where(c => c.Age > 50)
                    .OrderBy(c => c.Age)
                    .Page(2, 50)
                    .Include(c => c.Addresses, i => i.Directions, new QueryRequest<Address>()
                        .Select(a => new Direction
                        {
                            PostalCode = a.PostalCode,
                            City = a.City,
                            Country = a.Country.Name                           
                        })
                        .OrderBy(a => a.City))
                    .WithTag(this, nameof(IncludeMapTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void IncludeMap2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Client> response = dbInstance.QueryOf<Customer>()
                    .Select(c => new Client
                    {
                        Code = c.Id,
                        Name = c.FirstName,
                        Surname = c.LastName,
                        Mail = c.Email
                    })
                    .Where(c => c.Age > 50)
                    .OrderBy(c => c.Age)
                    .Page(2, 50)
                    .Include(c => c.Addresses, i => i.Directions, new QueryRequest<Address>()
                        .Select(a => new Direction
                        {
                            Id = a.Id,
                            PostalCode = a.PostalCode,
                            City = a.City,
                            Country = a.Country.Name,
                            Client = new Client
                            {
                                Code = a.Customer.Id 
                            }
                        })
                        .OrderBy(a => a.City))
                    .WithTag(this, nameof(IncludeMap2Test))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void IncludesTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.FullName, c.Email))
                    .Where(c => c.Age > 50)
                    .OrderBy(c => c.Age)
                    .Page(1, 50)
                    .Include(c => c.Addresses, new QueryRequest<Address>()
                        .Select(a => Property.ToArray(a.Street, a.PostalCode, a.City))
                        .OrderBy(a => a.City))
                    .Include(c => c.Invoices, new QueryRequest<Invoice>().
                        Select(i => Property.ToArray(i.Number, i.Date))
                        .Where(i => i.IsPaid.Value)
                        .Include(i => i.Lines, new QueryRequest<InvoiceLine>()
                            .Select(l => Property.ToArray(l.Concept, l.Amount))))
                    .WithTag(this, nameof(IncludesTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public async Task IncludesAsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = await dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.FullName, c.Email))
                    .Where(c => c.Age > 50)
                    .OrderBy(c => c.Age)
                    .Page(1, 50)
                    .Include(c => c.Addresses, new QueryRequest<Address>()
                        .Select(a => Property.ToArray(a.Street, a.PostalCode, a.City))
                        .OrderBy(a => a.City))
                    .Include(c => c.Invoices, new QueryRequest<Invoice>().
                        Select(i => Property.ToArray(i.Number, i.Date))
                        .Where(i => i.IsPaid.Value)
                        .Include(i => i.Lines, new QueryRequest<InvoiceLine>()
                            .Select(l => Property.ToArray(l.Concept, l.Amount))))
                    .WithTag(this, nameof(IncludesAsyncTest))
                    .ReadAsync();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void Includes2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Email))
                    .Where(c => c.Age > 50)
                    .OrderBy(c => c.Age)
                    .Page(1, 50)
                    .Include(c => c.Addresses, new QueryRequest<Address>()
                        .Select(a => Property.ToArray(a.Id, a.Street, a.PostalCode, a.City, a.Customer.Id))
                        .OrderBy(a => a.City))
                    .Include(c => c.Invoices, new QueryRequest<Invoice>().
                        Select(i => Property.ToArray(i.Id, i.Number, i.Date, i.Customer.Id))
                        .Where(i => i.IsPaid.Value)
                        .Include(i => i.Lines, new QueryRequest<InvoiceLine>()
                            .Select(l => Property.ToArray(l.Id, l.Concept, l.Amount, l.Invoice.Id))))
                    .WithTag(this, nameof(Includes2Test))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void IncludesMapTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Client> response = dbInstance.QueryOf<Customer>()
                    .Select(c => new Client
                    {
                        Name = c.FirstName,
                        Surname = c.LastName,
                        Mail = c.Email
                    })
                    .Where(c => c.Age > 50)
                    .OrderBy(c => c.Age)
                    .Page(1, 50)
                    .Include(c => c.Addresses, i => i.Directions, new QueryRequest<Address>()
                        .Select(a => new Direction
                        {
                            PostalCode = a.PostalCode,
                            City = a.City,
                            Country = a.Country.Name,
                        })
                        .OrderBy(a => a.City))
                    .Include(c => c.Invoices, ci => ci.Charges, new QueryRequest<Invoice>()
                        .Select(i => new Charge
                        {
                            Date = i.Date,
                            Number = i.Number,
                        })
                        .Where(i => i.IsPaid.Value)
                        .Include(i => i.Lines, ca => ca.Lines, new QueryRequest<InvoiceLine>()
                            .Select(l => new ChargeLine
                            {
                                Description = l.Concept,
                                Amount = l.Amount,
                            })))
                    .WithTag(this, nameof(IncludesMapTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void IncludesMap2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Client> response = dbInstance.QueryOf<Customer>()
                    .Select(c => new Client
                    {
                        Code = c.Id,
                        Name = c.FirstName,
                        Surname = c.LastName,
                        Mail = c.Email
                    })
                    .Where(c => c.Age > 50)
                    .OrderBy(c => c.Age)
                    .Page(1, 50)
                    .Include(c => c.Addresses, i => i.Directions, new QueryRequest<Address>()
                        .Select(a => new Direction
                        {
                            Id = a.Id,
                            PostalCode = a.PostalCode,
                            City = a.City,
                            Country = a.Country.Name,
                            Client = new Client
                            {
                                Code = a.Customer.Id
                            }
                        })
                        .OrderBy(a => a.City))
                    .Include(c => c.Invoices, ci => ci.Charges, new QueryRequest<Invoice>()
                        .Select(i => new Charge
                        {
                            Code = i.Id,
                            Date = i.Date,
                            Number = i.Number,
                            Client = new Client
                            {
                                Code = i.Customer.Id
                            }
                        })
                        .Where(i => i.IsPaid.Value)
                        .Include(i => i.Lines, ca => ca.Lines, new QueryRequest<InvoiceLine>()
                            .Select(l => new ChargeLine
                            {
                                Code = l.Id,
                                Description = l.Concept,
                                Amount = l.Amount,
                                Charge = new Charge
                                {
                                    Code = l.Invoice.Id
                                }
                            })))
                    .WithTag(this, nameof(IncludesMap2Test))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void PropertyFilterTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Email))
                    .Where(c => c.FirstName == c.LastName)
                    .Page(1, 50)
                    .WithTag(this, nameof(PropertyFilterTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void QueryRequestFilterTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<InvoiceLine> response = dbInstance.QueryOf<InvoiceLine>()
                    .Select(l => Property.ToArray(l.Id, l.Concept, l.Amount, l.Invoice.Id, l.Invoice.Number))
                    .Where(l => l.Amount > new QueryRequest<InvoiceLine>()
                        .Select(l1 => l1.Amount.Average())
                        .As<decimal>())
                    .Page(1, 50)
                    .WithTag(this, nameof(QueryRequestFilterTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void ValueConvertersTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<User> response = dbInstance.QueryOf<User>()
                    .Select(u => Property.ToArray(u.Id, u.FullName, u.Username, u.Settings, u.IsActive))
                    .Page(1, 50)
                    .WithTag(this, nameof(ValueConvertersTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void JoinConditionsTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Address> response = dbInstance.QueryOf<Address>()
                    .Select(a => Property.ToArray(a.Id, a.Street, a.City, a.PostalCode, a.Country.Name,
                        a.Customer.Id, a.Customer.FullName, a.Customer.Email))
                    .Page(1, 50)
                    .WithTag(this, nameof(JoinConditionsTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void JoinsTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<InvoiceLine> response = dbInstance.QueryOf<InvoiceLine>()
                    .Select(l => Property.ToArray(l.Id, l.Concept, l.Amount,
                        l.Invoice.Id, l.Invoice.Date, l.Invoice.Number,
                        l.Invoice.Customer.Id, l.Invoice.Customer.FullName, l.Invoice.Customer.TaxCode,
                        l.Invoice.Customer.MainAddress.Id, l.Invoice.Customer.MainAddress.FullAddress,
                        l.Invoice.Customer.MainAddress.Country.Id, l.Invoice.Customer.MainAddress.Country.Name))
                    .Page(1, 50)
                    .WithTag(this, nameof(JoinsTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }        

        [TestMethod]
        public void HierarchyTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Polygon> response = dbInstance.QueryOf<Polygon>()
                    .Select(p => Property.ToArray(p.Id, p.Name,
                        p.Options.OutlineColor, p.Options.BackgroundColor,
                        p.Angle, p.Length))
                    .Where(p => !p.Name.StartsWith("p") && p.Options.OutlineColor != "red" && p.Angle != 90)
                    .Page(1, 50)
                    .WithTag(this, nameof(HierarchyTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void HierarchyNTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Ellipse> response = dbInstance.QueryOf<Ellipse>()
                    .Select(e => Property.ToArray(e.Id, e.Name,
                        e.Options.OutlineColor, e.Options.BackgroundColor,
                        e.Radius, e.Radius2))
                    .Where(e => !e.Name.StartsWith("e") && e.Options.OutlineColor != "blue" && e.Radius != 1 && e.Radius2 != 1)
                    .Page(1, 50)
                    .WithTag(this, nameof(HierarchyNTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void HierarchyFromRelationTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<EllipsesKit> response = dbInstance.QueryOf<EllipsesKit>()
                    .Select(k => Property.ToArray(k.Id, k.Name,
                        k.Ellipse1.Options.OutlineColor, k.Ellipse1.Options.BackgroundColor, k.Ellipse1.Radius, k.Ellipse1.Radius2,
                        k.Ellipse2.Options.OutlineColor, k.Ellipse2.Options.BackgroundColor, k.Ellipse2.Radius, k.Ellipse2.Radius2,
                        k.Ellipse3.Options.OutlineColor, k.Ellipse3.Options.BackgroundColor, k.Ellipse3.Radius, k.Ellipse3.Radius2))
                    .Where(k => (k.Ellipse1.Name.StartsWith("e") || k.Ellipse1.Options.OutlineColor != "blue" || k.Ellipse1.Radius >= 1 || k.Ellipse1.Radius2 >= 2)
                        && (k.Ellipse2.Name.StartsWith("e") || k.Ellipse2.Options.OutlineColor != "blue" && k.Ellipse2.Radius >= 1 || k.Ellipse2.Radius2 >= 2)
                        && (k.Ellipse3.Name.StartsWith("e") || k.Ellipse3.Options.OutlineColor != "blue" && k.Ellipse3.Radius >= 1 || k.Ellipse3.Radius2 >= 2))
                    .Page(1, 50)
                    .WithTag(this, nameof(HierarchyFromRelationTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public virtual void AnyFilterTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Invoice> response = dbInstance.QueryOf<Invoice>()
                    .Select(i => Property.ToArray(i.Id, i.Number, i.Date))
                    .Where(i => i.Id == new QueryRequest<InvoiceLine>()
                        .Select(l => l.Invoice.Id)
                        .Where(l => l.Amount > 100)
                        .Any<int>())
                    .Page(1, 50)
                    .WithTag(this, nameof(AnyFilterTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public virtual void AllFilterTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Invoice> response = dbInstance.QueryOf<Invoice>()
                    .Select(i => Property.ToArray(i.Id, i.Number, i.Date))
                    .Where(i => i.Id == new QueryRequest<InvoiceLine>()
                        .Select(l => l.Invoice.Id)
                        .Where(l => l.Amount > 100)
                        .All<int>())
                    .Page(1, 50)
                    .WithTag(this, nameof(AllFilterTest))
                    .Read();

                this.AssertEmptyResponse(response);
            }
        }

        [TestMethod]
        public void ExistsFilterTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Invoice> response = dbInstance.QueryOf<Invoice>()
                    .Select(i => Property.ToArray(i.Id, i.Number, i.Date))
                    .Where(i => i.Exists(new QueryRequest<InvoiceLine>()
                        .SelectAll()
                        .Where(l => l.Amount > 100 && l.Invoice.Id == i.Id)))
                    .Page(1, 50)
                    .WithTag(this, nameof(ExistsFilterTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void WithParameterTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Customer> response = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .Page(1, 50)
                    .WithOptions(options =>
                    {
                        options.WithParameter("ignoreActiveCheck", true);
                    })
                    .WithTag(this, nameof(WithParameterTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void BinaryPropertyTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                List<Company> companies = dbInstance.QueryOf<Company>()
                    .Select(c => Property.ToArray(c.Id, c.Name, c.Logo))
                    .Page(1, 50)
                    .WithTag(this, nameof(BinaryPropertyTest))
                    .ToList();

                Assert.IsNotNull(companies);
                Assert.IsTrue(companies.Count == 1);
                Assert.IsNotNull(companies.First().Logo);
                Assert.IsTrue(companies.First().Logo.SequenceEqual(this.SampleImage1));
                Assert.AreEqual(this.GetString(companies.First().Logo), SAMPLE_IMAGE_STRING_1);
            }
        }

        [TestMethod]
        public void FilterFunction1Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                List<Customer> customers = dbInstance.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Email))
                    .Where(c => new GetAgeFunction(c.BirthDate, c.DeathDate).As<int>() > 50)
                    .Page(1, 50)
                    .WithTag(this, nameof(FilterFunction1Test))
                    .ToList();

                Assert.IsNotNull(customers);
            }
        }

        [TestMethod]
        public void FilterFunction2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                List<Address> addresses = dbInstance.QueryOf<Address>()
                    .Select(a => Property.ToArray(a.Id, a.FullAddress, a.Customer.Id))
                    .Where(a => new GetAgeFunction(a.Customer.BirthDate, a.Customer.DeathDate).As<int>() > 50)
                    .Page(1, 50)
                    .WithTag(this, nameof(FilterFunction2Test))
                    .ToList();

                Assert.IsNotNull(addresses);
            }
        }

        [TestMethod]
        public void OrderFunctionTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                List<Address> addresses = dbInstance.QueryOf<Address>()
                    .Select(a => Property.ToArray(a.Id, a.FullAddress))
                    .OrderBy(a => Property.ToArray(new GetAgeFunction(a.Customer.BirthDate, a.Customer.DeathDate), a.Street))
                    .Page(1, 50)
                    .WithTag(this, nameof(OrderFunctionTest))
                    .ToList();

                Assert.IsNotNull(addresses);
            }
        }

        [TestMethod]
        public void GroupByFunctionTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                var customers = dbInstance.QueryOf<Address>()
                    .Select(a => new
                    {
                        FullName = new ConcatFunction(a.Customer.LastName, "', '", a.Customer.FirstName).As<string>(),
                        Country = a.Country.Name,
                        AddressesCount = a.Count()
                    })
                    .GroupBy(a => Property.ToArray(new ConcatFunction(a.Customer.LastName, "', '", a.Customer.FirstName), a.Country.Name))
                    .OrderBy(a => a.Country.Name)
                    .Page(1, 50)
                    .WithTag(this, nameof(GroupByFunctionTest))
                    .ToList();

                Assert.IsNotNull(customers);
            }
        }

        [TestMethod]
        public void ReferencedPropertyFunctionTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                QueryResponse<Invoice> response = dbInstance.QueryOf<Invoice>()
                    .Select(i => Property.ToArray(i.Id, i.Number, i.Date))
                    .Where(i => i.Exists(new QueryRequest<InvoiceLine>()
                        .SelectAll()
                        .Where(l => l.Amount > 100
                            && new GetAgeFunction(i.Customer.BirthDate, i.Customer.DeathDate).As<int>() > 20)))
                    .Page(1, 50)
                    .WithTag(this, nameof(ReferencedPropertyFunctionTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void NestedFunctionTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                List<Address> customers = dbInstance.QueryOf<Address>()
                    .Select(a => Property.ToArray(a.Country.Name))
                    .Where(a => a.Id > new RandomFunction(0, new GetAgeFunction(a.Customer.BirthDate, a.Customer.DeathDate).As<int>()).As<int>())
                    .OrderBy(a => a.Country.Name)
                    .Page(1, 50)
                    .WithTag(this, nameof(NestedFunctionTest))
                    .ToList();

                Assert.IsNotNull(customers);
            }
        }

        [TestMethod]
        public async Task ParallelAsyncTest()
        {
            await Task.WhenAll(
                this.SimpleAsyncTest(),
                this.Simple2AsyncTest(),
                this.MasterDetailAsyncTest(),
                this.IncludeAsyncTest()
            );
        }


        public virtual List<OrderedTest> GetPlayListTest()
        {
            return new List<OrderedTest>
            {
                new OrderedTest(SimpleTest),
                new OrderedTest(SimpleAsyncTest),
                new OrderedTest(Simple2Test),
                new OrderedTest(Simple2AsyncTest),
                new OrderedTest(SimpleMapTest),
                new OrderedTest(SimpleAnonymousMapTest),
                new OrderedTest(PagingWithLimitTest),
                new OrderedTest(PagingWithLimitRetrievingTotalTest),
                new OrderedTest(LastPageTest),
                new OrderedTest(OrderTest),
                new OrderedTest(FilterTest),
                new OrderedTest(DynamicFilterTest),
                new OrderedTest(ComputedPropertiesTest),
                new OrderedTest(ComputedPropertiesWithDependencies1Test),
                new OrderedTest(ComputedPropertiesWithDependencies2Test),
                new OrderedTest(InFilterTest),
                new OrderedTest(InFilterWithQueryTest),
                new OrderedTest(NotInFilterTest),
                new OrderedTest(NotInFilterWithQueryTest),
                new OrderedTest(BetweenFilterTest),
                new OrderedTest(NotBetweenFilterTest),
                new OrderedTest(NegationFilterTest),
                new OrderedTest(DateFormulaFilterTest),
                new OrderedTest(ComputedQueryRequestPropertyTest),
                new OrderedTest(ComputedRelationTest),
                new OrderedTest(ComputedRelationWithDependencies1Test),
                new OrderedTest(ComputedRelationWithDependencies2Test),
                new OrderedTest(ComputedQueryRequestRelationTest),
                new OrderedTest(GroupByTest),
                new OrderedTest(GroupByAnonymousTest),
                new OrderedTest(HavingByTest),
                new OrderedTest(HavingByAnonymousTest),
                new OrderedTest(MasterDetailTest),
                new OrderedTest(MasterDetailAsyncTest),
                new OrderedTest(MasterDetail2Test),
                new OrderedTest(MasterDetailMapTest),
                new OrderedTest(MasterDetailMap2Test),
                new OrderedTest(MasterDetailsTest),
                new OrderedTest(MasterDetailsAsyncTest),
                new OrderedTest(MasterDetails2Test),
                new OrderedTest(MasterDetailsMapTest),
                new OrderedTest(MasterDetailsMap2Test),
                new OrderedTest(IncludeTest),
                new OrderedTest(IncludeAsyncTest),
                new OrderedTest(Include2Test),
                new OrderedTest(IncludeMapTest),
                new OrderedTest(IncludeMap2Test),
                new OrderedTest(IncludesTest),
                new OrderedTest(IncludesAsyncTest),
                new OrderedTest(Includes2Test),
                new OrderedTest(IncludesMapTest),
                new OrderedTest(IncludesMap2Test),
                new OrderedTest(PropertyFilterTest),
                new OrderedTest(QueryRequestFilterTest),
                new OrderedTest(ValueConvertersTest),
                new OrderedTest(JoinConditionsTest),
                new OrderedTest(JoinsTest),
                new OrderedTest(HierarchyTest),
                new OrderedTest(HierarchyNTest),
                new OrderedTest(HierarchyFromRelationTest),
                new OrderedTest(AnyFilterTest),
                new OrderedTest(AllFilterTest),
                new OrderedTest(ExistsFilterTest),
                new OrderedTest(WithParameterTest),
                new OrderedTest(BinaryPropertyTest),
                new OrderedTest(FilterFunction1Test),
                new OrderedTest(FilterFunction2Test),
                new OrderedTest(OrderFunctionTest),
                new OrderedTest(GroupByFunctionTest),
                new OrderedTest(ReferencedPropertyFunctionTest),
                new OrderedTest(NestedFunctionTest),
                new OrderedTest(ParallelAsyncTest)
            };
        }
    }
}
