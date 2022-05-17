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
using NEntityDb.Unit.Test.Utility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NEntityDb.Unit.Test.Common
{
    public class EntityTest<TInstance> : BaseTest<TInstance> where TInstance : NEntityDb.Data.Common.DbInstance, new()
    {
        [TestMethod]
        public void SimpleTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                EntityResponse<Customer> response = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .Where(c => c.Id == 1)
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
                EntityResponse<Customer> response = await dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .Where(c => c.Id == 1)
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
                Customer customer = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .Where(c => c.Id == 1)
                    .WithTag(this, nameof(Simple2Test))
                    .FirstOrDefault();

                Assert.IsNotNull(customer);
                Assert.IsNotNull(customer.Id);
            }
        }

        [TestMethod]
        public async Task Simple2AsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                Customer customer = await dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .Where(c => c.Id == 1)
                    .WithTag(this, nameof(Simple2AsyncTest))
                    .FirstOrDefaultAsync();

                Assert.IsNotNull(customer);
                Assert.IsNotNull(customer);
                Assert.IsNotNull(customer.Id);
            }
        }

        [TestMethod]
        public void SimpleMapTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                Client client = dbInstance.EntityOf<Customer>()
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
                    .Where(c => c.Id == 1)
                    .WithTag(this, nameof(SimpleMapTest))
                    .FirstOrDefault();

                Assert.IsNotNull(client);
                Assert.IsNotNull(client.Code);
            }
        }

        [TestMethod]
        public void SimpleAnonymousMapTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                var client = dbInstance.EntityOf<Customer>()
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
                    .Where(c => c.Id == 1)
                    .WithTag(this, nameof(SimpleAnonymousMapTest))
                    .FirstOrDefault();

                Assert.IsNotNull(client);
                Assert.IsNotNull(client.Code);
            }
        }

        [TestMethod]
        public void DynamicSimple2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                EntityRequest<Customer> request = dbInstance.EntityOf<Customer>();
                request.Properties = Property.GetProperties("Id", "FirstName", "LastName", "TaxCode", "Email");
                request.Filter = new List<Filter>
                {
                    new ValueFilter("Id", FilterOperator.Equal, 1)
                };
                request.Tag = $"{this.GetType().Name.Replace("`", "-")}.{nameof(DynamicSimple2Test)}";

                Customer customer = request.FirstOrDefault();

                Assert.IsNotNull(customer);
                Assert.IsNotNull(customer.Id);
            }
        }

        [TestMethod]
        public void OrderTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                EntityResponse<Customer> response = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .Where(c => c.MainAddress.Country.Name == "Canada")
                    .OrderBy(c => Property.ToArray(c.LastName, c.FirstName))
                    .WithTag(this, nameof(OrderTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        
        [TestMethod]
        public void ComputedPropertiesTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                EntityResponse<Customer> response = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Age, c.BirthDate, c.TaxCode, c.Email))
                    .Where(c => c.Id == 1)
                    .WithTag(this, nameof(ComputedPropertiesTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void ComputedRelationTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                EntityResponse<Customer> response = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Email,
                        c.MainAddress.Id, c.MainAddress.City, c.MainAddress.Country.Name))
                    .Where(c => c.Id == 1)
                    .WithTag(this, nameof(ComputedRelationTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void GroupByTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                var response = dbInstance.EntityOf<Address>()
                    .Select(a => new Client
                    {
                        Code = a.Customer.Id,
                        Name = a.Customer.FullName,
                        AddressesCount = a.Count()
                    })
                    .Where(a => a.Customer.Id == 6)
                    .GroupBy(a => Property.ToArray(a.Customer.Id, a.Customer.FullName))
                    .WithTag(this, nameof(GroupByTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
                Assert.IsTrue(response.Value.AddressesCount >= 0);
            }
        }

        [TestMethod]
        public void GroupByAnonymousTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                var response = dbInstance.EntityOf<Address>()
                     .Select(a => new
                     {
                         a.Customer.Id,
                         a.Customer.FullName,
                         AddressesCount = a.Count()
                     })
                     .Where(a => a.Customer.Id == 6)
                    .GroupBy(a => Property.ToArray(a.Customer.Id, a.Customer.FullName))
                    .WithTag(this, nameof(GroupByAnonymousTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
                Assert.IsTrue(response.Value.AddressesCount >= 0);
            }
        }

        [TestMethod]
        public void HavingByTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                var response = dbInstance.EntityOf<Address>()
                    .Select(a => new Client
                    {
                        Code = a.Customer.Id,
                        Name = a.Customer.FullName,
                        AddressesCount = a.Count()
                    })
                    .Where(a => a.Customer.Id == 8)
                    .GroupBy(a => Property.ToArray(a.Customer.Id, a.Customer.FullName))
                    .Having(a => a.Count() > 2)
                    .OrderBy(a => a.Customer.Id)
                    .WithTag(this, nameof(HavingByTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
                Assert.IsTrue(response.Value.AddressesCount > 2);
            }
        }

        [TestMethod]
        public void HavingByAnonymousTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                var response = dbInstance.EntityOf<Address>()
                    .Select(a => new
                    {
                        a.Customer.Id,
                        a.Customer.FullName,
                        AddressesCount = a.Count()
                    })
                    .Where(a => a.Customer.Id == 8)
                    .GroupBy(a => Property.ToArray(a.Customer.Id, a.Customer.FullName))
                    .Having(a => a.Count() > 2)
                    .OrderBy(a => a.Customer.Id)
                    .WithTag(this, nameof(HavingByAnonymousTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
                Assert.IsTrue(response.Value.AddressesCount > 2);
            }
        }

        [TestMethod]
        public void MasterDetailTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                EntityResponse<Customer> response = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.FullName, c.Email))
                    .Where(c => c.Id == 166)
                    .OrderBy(c => c.MainAddress.City)
                    .Include(c => c.Addresses, new QueryRequest<Address>()
                        .Select(a => Property.ToArray(a.Street, a.PostalCode, a.City))
                        .OrderBy(a => a.City))
                    .WithTag(this, nameof(MasterDetailTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public async Task MasterDetailAsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                EntityResponse<Customer> response = await dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.FullName, c.Email))
                    .Where(c => c.Id == 166)
                    .OrderBy(c => c.MainAddress.City)
                    .Include(c => c.Addresses, new QueryRequest<Address>()
                        .Select(a => Property.ToArray(a.Street, a.PostalCode, a.City))
                        .OrderBy(a => a.City))
                    .WithTag(this, nameof(MasterDetailAsyncTest))
                    .ReadAsync();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void MasterDetail2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                EntityResponse<Customer> response = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Email))
                    .Where(c => c.Id == 166)
                    .OrderBy(c => c.MainAddress.City)
                    .Include(c => c.Addresses, new QueryRequest<Address>()
                        .Select(a => Property.ToArray(a.Id, a.Street, a.PostalCode, a.City, a.Customer.Id))
                        .OrderBy(a => a.City))
                    .WithTag(this, nameof(MasterDetail2Test))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void MasterDetailMapTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                EntityResponse<Client> response = dbInstance.EntityOf<Customer>()
                    .Select(c => new Client
                    {
                        Name = c.FirstName,
                        Surname = c.LastName,
                        Mail = c.Email
                    })
                    .Where(c => c.Id == 166)
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

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void MasterDetailMap2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                EntityResponse<Client> response = dbInstance.EntityOf<Customer>()
                    .Select(c => new Client
                    {
                        Code = c.Id,
                        Name = c.FirstName,
                        Surname = c.LastName,
                        Mail = c.Email
                    })
                    .Where(c => c.Id == 166)
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

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void MasterDetailsTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                EntityResponse<Customer> response = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.FullName, c.Email))
                    .Where(c => c.Id == 136)
                    .OrderBy(c => c.MainAddress.City)
                    .Include(c => c.Invoices, new QueryRequest<Invoice>().
                        Select(i => Property.ToArray(i.Number, i.Date))
                        .Where(i => i.IsPaid.Value)
                        .Include(i => i.Lines, new QueryRequest<InvoiceLine>()
                            .Select(l => Property.ToArray(l.Concept, l.Amount))))
                    .WithTag(this, nameof(MasterDetailsTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public async Task MasterDetailsAsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                EntityResponse<Customer> response = await dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.FullName, c.Email))
                    .Where(c => c.Id == 136)
                    .OrderBy(c => c.MainAddress.City)
                    .Include(c => c.Invoices, new QueryRequest<Invoice>().
                        Select(i => Property.ToArray(i.Number, i.Date))
                        .Where(i => i.IsPaid.Value)
                        .Include(i => i.Lines, new QueryRequest<InvoiceLine>()
                            .Select(l => Property.ToArray(l.Concept, l.Amount))))
                    .WithTag(this, nameof(MasterDetailsAsyncTest))
                    .ReadAsync();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void MasterDetails2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                EntityResponse<Customer> response = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Email))
                    .Where(c => c.Id == 136)
                    .OrderBy(c => c.MainAddress.City)
                    .Include(c => c.Invoices, new QueryRequest<Invoice>().
                        Select(i => Property.ToArray(i.Id, i.Number, i.Date, i.Customer.Id))
                        .Where(i => i.IsPaid.Value)
                        .Include(i => i.Lines, new QueryRequest<InvoiceLine>()
                            .Select(l => Property.ToArray(l.Id, l.Concept, l.Amount, l.Invoice.Id))))
                    .WithTag(this, nameof(MasterDetails2Test))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void MasterDetailsMapTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                EntityResponse<Client> response = dbInstance.EntityOf<Customer>()
                    .Select(c => new Client
                    {
                        Name = c.FirstName,
                        Surname = c.LastName,
                        Mail = c.Email
                    })
                    .Where(c => c.Id == 136)
                    .OrderBy(c => c.MainAddress.City)
                    .Include(c => c.Invoices, i => i.Charges, new QueryRequest<Invoice>()
                        .Select(i => new Charge
                        {
                            Date = i.Date,
                            Number = i.Number,
                        })
                        .Where(i => i.IsPaid.Value)
                        .Include(i => i.Lines, c => c.Lines, new QueryRequest<InvoiceLine>()
                        .Select(l => new ChargeLine
                        {
                            Description = l.Concept,
                            Amount = l.Amount
                        })))
                    .WithTag(this, nameof(MasterDetailsMapTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void MasterDetailsMap2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                EntityResponse<Client> response = dbInstance.EntityOf<Customer>()
                    .Select(c => new Client
                    {
                        Code = c.Id,
                        Name = c.FirstName,
                        Surname = c.LastName,
                        Mail = c.Email
                    })
                    .Where(c => c.Id == 136)
                    .OrderBy(c => c.MainAddress.City)
                    .Include(c => c.Invoices, i => i.Charges, new QueryRequest<Invoice>()
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
                        .Include(i => i.Lines, c => c.Lines, new QueryRequest<InvoiceLine>()
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

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void IncludeTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                EntityResponse<Customer> response = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.FullName, c.Email))
                    .Where(c => c.Id == 166)
                    .Include(c => c.Addresses, new QueryRequest<Address>()
                        .Select(a => Property.ToArray(a.Street, a.PostalCode, a.City))
                        .OrderBy(a => a.City)
                        .Page(1, 3))
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
                EntityResponse<Customer> response = await dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.FullName, c.Email))
                    .Where(c => c.Id == 166)
                    .Include(c => c.Addresses, new QueryRequest<Address>()
                        .Select(a => Property.ToArray(a.Street, a.PostalCode, a.City))
                        .OrderBy(a => a.City)
                        .Page(1, 3))
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
                EntityResponse<Customer> response = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Email))
                    .Where(c => c.Id == 166)
                    .Include(c => c.Addresses, new QueryRequest<Address>()
                        .Select(a => Property.ToArray(a.Id, a.Street, a.PostalCode, a.City, a.Customer.Id))
                        .OrderBy(a => a.City)
                        .Page(1, 3))
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
                EntityResponse<Client> response = dbInstance.EntityOf<Customer>()
                    .Select(c => new Client
                    {
                        Name = c.FirstName,
                        Surname = c.LastName,
                        Mail = c.Email
                    })
                    .Where(c => c.Id == 166)
                    .Include(c => c.Addresses, i => i.Directions, new QueryRequest<Address>()
                        .Select(a => new Direction
                        {
                            PostalCode = a.PostalCode,
                            City = a.City,
                            Country = a.Country.Name
                        })
                        .OrderBy(a => a.City)
                        .Page(1, 3))
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
                EntityResponse<Client> response = dbInstance.EntityOf<Customer>()
                    .Select(c => new Client
                    {
                        Code = c.Id,
                        Name = c.FirstName,
                        Surname = c.LastName,
                        Mail = c.Email
                    })
                    .Where(c => c.Id == 166)
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
                        .OrderBy(a => a.City)
                        .Page(1, 3))
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
                EntityResponse<Customer> response = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.FullName, c.Email))
                    .Where(c => c.Id == 149)
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
                EntityResponse<Customer> response = await dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.FullName, c.Email))
                    .Where(c => c.Id == 149)
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
                EntityResponse<Customer> response = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Email))
                    .Where(c => c.Id == 149)
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
                EntityResponse<Client> response = dbInstance.EntityOf<Customer>()
                    .Select(c => new Client
                    {
                        Name = c.FirstName,
                        Surname = c.LastName,
                        Mail = c.Email
                    })
                    .Where(c => c.Id == 149)
                    .Include(c => c.Addresses, i => i.Directions, new QueryRequest<Address>()
                        .Select(a => new Direction
                        {
                            PostalCode = a.PostalCode,
                            City = a.City,
                            Country = a.Country.Name,
                        })
                        .OrderBy(a => a.City))
                    .Include(c => c.Invoices, i => i.Charges, new QueryRequest<Invoice>()
                        .Select(i => new Charge
                        {
                            Date = i.Date,
                            Number = i.Number,
                        })
                        .Where(i => i.IsPaid.Value)
                        .Include(i => i.Lines, c => c.Lines, new QueryRequest<InvoiceLine>()
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
                EntityResponse<Client> response = dbInstance.EntityOf<Customer>()
                    .Select(c => new Client
                    {
                        Code = c.Id,
                        Name = c.FirstName,
                        Surname = c.LastName,
                        Mail = c.Email
                    })
                    .Where(c => c.Id == 149)
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
                    .Include(c => c.Invoices, i => i.Charges, new QueryRequest<Invoice>()
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
                        .Include(i => i.Lines, c => c.Lines, new QueryRequest<InvoiceLine>()
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
                EntityResponse<Customer> response = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Email))
                    .Where(c => c.FirstName == c.LastName)
                    .OrderByDescending(c => c.Id)
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
                EntityResponse<InvoiceLine> response = dbInstance.EntityOf<InvoiceLine>()
                    .Select(l => Property.ToArray(l.Id, l.Concept, l.Amount, l.Invoice.Id, l.Invoice.Number))
                    .Where(l => l.Amount > new QueryRequest<InvoiceLine>()
                        .Select(l1 => l1.Amount.Average())
                        .As<decimal>())
                    .OrderByDescending(c => c.Id)
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
                EntityResponse<User> response = dbInstance.EntityOf<User>()
                    .Select(u => Property.ToArray(u.Id, u.FullName, u.Username, u.Settings, u.IsActive))
                    .Where(u => u.Id == 1)
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
                EntityResponse<Address> response = dbInstance.EntityOf<Address>()
                    .Select(a => Property.ToArray(a.Id, a.Street, a.City, a.PostalCode, a.Country.Name,
                        a.Customer.Id, a.Customer.FullName, a.Customer.Email))
                    .Where(a => a.Id == 5)
                    .WithTag(this, nameof(JoinConditionsTest))
                    .Read();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void HierarchyTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                EntityResponse<Polygon> response = dbInstance.EntityOf<Polygon>()
                    .Select(p => Property.ToArray(p.Id, p.Name,
                        p.Options.OutlineColor, p.Options.BackgroundColor,
                        p.Angle, p.Length))
                    .Where(p => p.Id == 13)
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
                EntityResponse<Ellipse> response = dbInstance.EntityOf<Ellipse>()
                    .Select(e => Property.ToArray(e.Id, e.Name,
                        e.Options.OutlineColor, e.Options.BackgroundColor,
                        e.Radius, e.Radius2))
                    .Where(e => e.Id == 6)
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
                EntityResponse<EllipsesKit> response = dbInstance.EntityOf<EllipsesKit>()
                    .Select(k => Property.ToArray(k.Id, k.Name,
                        k.Ellipse1.Options.OutlineColor, k.Ellipse1.Options.BackgroundColor, k.Ellipse1.Radius, k.Ellipse1.Radius2,
                        k.Ellipse2.Options.OutlineColor, k.Ellipse2.Options.BackgroundColor, k.Ellipse2.Radius, k.Ellipse2.Radius2,
                        k.Ellipse3.Options.OutlineColor, k.Ellipse3.Options.BackgroundColor, k.Ellipse3.Radius, k.Ellipse3.Radius2))
                    .Where(k => k.Id == 1)
                    .WithTag(this, nameof(HierarchyFromRelationTest))
                    .Read();

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
                new OrderedTest(SimpleMapTest),
                new OrderedTest(SimpleAnonymousMapTest),
                new OrderedTest(DynamicSimple2Test),
                new OrderedTest(OrderTest),
                new OrderedTest(ComputedPropertiesTest),
                new OrderedTest(ComputedRelationTest),
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
                new OrderedTest(HierarchyTest),
                new OrderedTest(HierarchyNTest),
                new OrderedTest(HierarchyFromRelationTest)
            };
        }
    }
}
