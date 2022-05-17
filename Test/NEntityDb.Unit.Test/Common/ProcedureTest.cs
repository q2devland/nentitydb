using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Linq;
using NEntityDb.Model;
using NEntityDb.Model.Expressions;
using NEntityDb.Test.Model.Application;
using NEntityDb.Test.Model.Billing;
using NEntityDb.Test.Model.Customers;
using NEntityDb.Test.Model.Geometry;
using NEntityDb.Test.Model.Mapping;
using NEntityDb.Test.Model.Suppliers;
using NEntityDb.Unit.Test.Utility;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace NEntityDb.Unit.Test.Common
{
    public class ProcedureTest<TInstance> : BaseTest<TInstance> where TInstance : NEntityDb.Data.Common.DbInstance, new()
    {       
        [TestMethod]
        public void NonQueryTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                int rowsAffected = dbInstance.ProcedureOf<Supplier>()
                    .WithName("sp_AddSupplier")
                    .WithParameters(new Dictionary<string, object>
                    {
                        ["name"] = Guid.NewGuid().ToString(),
                        ["taxCode"] = Guid.NewGuid().ToString(),
                        ["email"] = Guid.NewGuid().ToString()
                    })
                    .WithTag(this, nameof(NonQueryTest))
                    .ExecuteNonQuery()
                    .RowsAffected;

                this.AssertRowsAffected(rowsAffected);
            }
        }

        [TestMethod]
        public async Task NonQueryAsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                int rowsAffected = (await dbInstance.ProcedureOf<Supplier>()
                    .WithName("sp_AddSupplier")
                    .WithParameters(new Dictionary<string, object>
                    {
                        ["name"] = Guid.NewGuid().ToString(),
                        ["taxCode"] = Guid.NewGuid().ToString(),
                        ["email"] = Guid.NewGuid().ToString()
                    })
                    .WithTag(this, nameof(NonQueryAsyncTest))
                    .ExecuteNonQueryAsync())
                    .RowsAffected;

                this.AssertRowsAffected(rowsAffected);
            }
        }

        [TestMethod]
        public void DynamicNonQueryTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                ProcedureRequest<Supplier> request = dbInstance.ProcedureOf<Supplier>();
                request.Name = "sp_AddSupplier";
                request.Parameters = new List<Parameter>
                {
                    new Parameter("name", Guid.NewGuid().ToString(), typeof(string)),
                    new Parameter("taxCode", Guid.NewGuid().ToString(), typeof(string)),
                    new Parameter("email", Guid.NewGuid().ToString(), typeof(string)),
                };
                request.Tag = $"{this.GetType().Name.Replace("`", "-")}.{nameof(DynamicNonQueryTest)}";

                int rowsAffected = request.ExecuteNonQuery().RowsAffected;

                this.AssertRowsAffected(rowsAffected);
            }
        }


        [TestMethod]
        public virtual void QueryTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                List<Invoice> invoices = dbInstance.ProcedureOf<Invoice>()
                    .WithName("sp_GetInvoices")
                    .WithParameters(new Dictionary<string, object>
                    {
                        ["pageNumber"] = 1,
                        ["pageSize"] = 10
                    })
                    .WithOutput("CUR")
                    .WithFields(new Dictionary<string, Expression<Func<Invoice, object>>>
                    {
                        ["Id"] = i => i.Id,
                        ["Number"] = i => i.Number,
                        ["Date"] = i => i.Date,
                        ["TaxCode"] = i => i.Customer.TaxCode,
                        ["Email"] = i => i.Customer.Email
                    })
                    .WithTag(this, nameof(QueryTest))
                    .ToList();

                Assert.IsNotNull(invoices);
                Assert.IsTrue(invoices.Count > 0);
            }
        }

        [TestMethod]
        public virtual async Task QueryAsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                List<Invoice> invoices = await dbInstance.ProcedureOf<Invoice>()
                    .WithName("sp_GetInvoices")
                    .WithParameters(new Dictionary<string, object>
                    {
                        ["pageNumber"] = 1,
                        ["pageSize"] = 10
                    })
                    .WithOutput("CUR")
                    .WithFields(new Dictionary<string, Expression<Func<Invoice, object>>>
                    {
                        ["Id"] = i => i.Id,
                        ["Number"] = i => i.Number,
                        ["Date"] = i => i.Date,
                        ["TaxCode"] = i => i.Customer.TaxCode,
                        ["Email"] = i => i.Customer.Email
                    })
                    .WithTag(this, nameof(QueryAsyncTest))
                    .ToListAsync();

                Assert.IsNotNull(invoices);
                Assert.IsTrue(invoices.Count > 0);
            }
        }

        [TestMethod]
        public virtual void DynamicQueryTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                ProcedureRequest<Invoice> request = dbInstance.ProcedureOf<Invoice>();
                request.Name = "sp_GetInvoices";
                request.Parameters = new List<Parameter>
                {
                    new Parameter("pageNumber", 1, typeof(int)),
                    new Parameter("pageSize", 10, typeof(int))
                };
                request.Output = "CUR";
                request.Properties = new Dictionary<string, Property>
                {
                    ["Id"] = Property.GetProperty("Id"),
                    ["Number"] = Property.GetProperty("Number"),
                    ["Date"] = Property.GetProperty("Date"),
                    ["TaxCode"] = Property.GetProperty("Customer.TaxCode"),
                    ["Email"] = Property.GetProperty("Customer.Email")
                };
                request.Tag = $"{this.GetType().Name.Replace("`", "-")}.{nameof(DynamicQueryTest)}";

                List<Invoice> invoices = request.ToList();

                Assert.IsNotNull(invoices);
                Assert.IsTrue(invoices.Count > 0);
            }
        }

        [TestMethod]
        public virtual void AggregateQueryTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                ProcedureResponse<Client> response = dbInstance.ProcedureOf<Address>()
                   .WithName("sp_GetCountAddresses")
                   .WithParameters(new Dictionary<string, object>()
                    {
                        ["pageNumber"] = 1,
                        ["pageSize"] = 10
                    })
                   .WithOutput("CUR")
                   .WithFields(new Dictionary<string, (Expression<Func<Address, object>>, Expression<Func<Client, object>>)>
                   {
                        ["CustomerId"] = (a => a.Customer.Id,  c => c.Code),
                        ["CustomerEmail"] = (a => a.Customer.Email, c => c.Mail),
                        ["AddressesCount"] = (a => a.Count(), c => c.AddressesCount )
                   })
                   .WithTag(this, nameof(AggregateQueryTest))
                   .Read();


                Assert.IsNotNull(response);
                Assert.IsNotNull(response.Values);
                Assert.IsTrue(response.Values.Count > 0);

                response.Values.Apply(c =>
                {
                    Assert.IsTrue(c.AddressesCount >= 0);
                });
            }
        }

        [TestMethod]
        public virtual void EntityTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                Invoice invoice = dbInstance.ProcedureOf<Invoice>()
                    .WithName("sp_GetInvoice")
                    .WithParameter("id", 1)
                    .WithOutput("CUR")
                    .WithFields(new Dictionary<string, Expression<Func<Invoice, object>>>
                    {
                        ["Id"] = i => i.Id,
                        ["Number"] = i => i.Number,
                        ["Date"] = i => i.Date,
                        ["TaxCode"] = i => i.Customer.TaxCode,
                        ["Email"] = i => i.Customer.Email
                    })
                    .WithTag(this, nameof(EntityTest))
                    .FirstOrDefault();

                Assert.IsNotNull(invoice);
                Assert.IsNotNull(invoice.Id);
            }
        }

        [TestMethod]
        public virtual async Task EntityAsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                Invoice invoice = await dbInstance.ProcedureOf<Invoice>()
                    .WithName("sp_GetInvoice")
                    .WithParameter("id", 1)
                    .WithOutput("CUR")
                    .WithFields(new Dictionary<string, Expression<Func<Invoice, object>>>
                    {
                        ["Id"] = i => i.Id,
                        ["Number"] = i => i.Number,
                        ["Date"] = i => i.Date,
                        ["TaxCode"] = i => i.Customer.TaxCode,
                        ["Email"] = i => i.Customer.Email
                    })
                    .WithTag(this, nameof(EntityAsyncTest))
                    .FirstOrDefaultAsync();

                Assert.IsNotNull(invoice);
                Assert.IsNotNull(invoice.Id);
            }
        }

        [TestMethod]
        public virtual void AggregateEntityTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                ProcedureResponse<Client> response = dbInstance.ProcedureOf<Address>()
                    .WithName("sp_GetCountAddress")
                    .WithParameter("id", 8)
                    .WithOutput("CUR")
                    .WithFields(new Dictionary<string, (Expression<Func<Address, object>>, Expression<Func<Client, object>>)>
                     {
                        ["CustomerId"] = (a => a.Customer.Id, c => c.Code),
                        ["CustomerEmail"] = (a => a.Customer.Email, c => c.Mail),
                        ["AddressesCount"] = (a => a.Count(), c => c.AddressesCount)
                    })
                    .WithTag(this, nameof(AggregateEntityTest))
                    .Read(true);

                Assert.IsNotNull(response);
                Assert.IsNotNull(response.Value);

                Assert.IsTrue(response.Value.AddressesCount >= 0);
            }
        }

        [TestMethod]
        public void ScalarTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                ProcedureResponse<Invoice> response = dbInstance.ProcedureOf<Invoice>()
                    .WithName("sp_GetInvoicesAmount")
                    .WithOutput("CUR")
                    .WithTag(this, nameof(ScalarTest))
                    .ExecuteScalar();

                this.AssertMoneyNotNull(response);
            }
        }

        [TestMethod]
        public async Task ScalarAsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                ProcedureResponse<Invoice> response = await dbInstance.ProcedureOf<Invoice>()
                    .WithName("sp_GetInvoicesAmount")
                    .WithOutput("CUR")
                    .WithTag(this, nameof(ScalarAsyncTest))
                    .ExecuteScalarAsync();

                this.AssertMoneyNotNull(response);
            }
        }

        public virtual List<OrderedTest> GetPlayListTest()
        {
            return new List<OrderedTest>
            {
                new OrderedTest(NonQueryTest),
                new OrderedTest(NonQueryAsyncTest),
                new OrderedTest(DynamicNonQueryTest),
                new OrderedTest(QueryTest),
                new OrderedTest(QueryAsyncTest),
                new OrderedTest(DynamicQueryTest),
                new OrderedTest(AggregateQueryTest),                
                new OrderedTest(EntityTest),
                new OrderedTest(EntityAsyncTest),
                new OrderedTest(AggregateEntityTest),
                new OrderedTest(ScalarTest),
                new OrderedTest(ScalarAsyncTest),
            };
        }
    }
}
