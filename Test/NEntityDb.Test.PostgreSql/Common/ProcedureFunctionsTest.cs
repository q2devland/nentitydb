using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Model;
using NEntityDb.Test.Model.Billing;
using NEntityDb.Test.Model.Suppliers;
using NEntityDb.Model.Expressions;
using Npgsql;
using NpgsqlTypes;
using System.Linq.Expressions;
using NEntityDb.Unit.Test.Utility;
using NEntityDb.Unit.Test;

namespace NEntityDb.Test.PostgreSql.Common
{
    [TestClass]
    public class ProcedureFunctionsTest<TInstance>: BaseTest<TInstance> where TInstance : NEntityDb.Data.PostgreSql.DbInstance, new()
    {              
        [TestMethod]
        public void NonQueryTest()
        {
            using (DbTestInstance dbInstance = new DbTestInstance())
            {
                int rowsAffected = dbInstance.ProcedureOf<Supplier>()
                    .WithName("df_AddSupplier")
                    .WithParameters(new Dictionary<string, object>
                    {
                        ["name"] = Guid.NewGuid().ToString(),
                        ["taxCode"] = Guid.NewGuid().ToString(),
                        ["email"] = Guid.NewGuid().ToString()
                    })
                    .ExecuteNonQuery()
                    .RowsAffected;

                this.AssertRowsAffected(rowsAffected);
            }
        }
       

        [TestMethod]
        public void QueryTest()
        {
            using (DbTestInstance dbInstance = new DbTestInstance())
            {
                List<Invoice> invoices = dbInstance.ProcedureOf<Invoice>()
                    .WithName("df_GetInvoices")
                    .WithParameters(new Dictionary<string, object>
                    {
                        ["pageNumber"] = 1,
                        ["pageSize"] = 10
                    })
                    .WithFields(new Dictionary<string, Expression<Func<Invoice, object>>>
                    {
                        ["Id"] = i => i.Id,
                        ["Number"] = i => i.Number,
                        ["Date"] = i => i.Date,
                        ["TaxCode"] = i => i.Customer.TaxCode,
                        ["Email"] = i => i.Customer.Email
                    })
                    .ToList();

                Assert.IsNotNull(invoices);
                Assert.IsTrue(invoices.Count > 0);
            }
        }

        [TestMethod]
        public void EntityTest()
        {
            using (DbTestInstance dbInstance = new DbTestInstance())
            {
                Invoice invoice = dbInstance.ProcedureOf<Invoice>()
                    .WithName("df_GetInvoice")
                    .WithParameter("id", 1)
                    .WithFields(new Dictionary<string, Expression<Func<Invoice, object>>>
                    {
                        ["Id"] = i => i.Id,
                        ["Number"] = i => i.Number,
                        ["Date"] = i => i.Date,
                        ["TaxCode"] = i => i.Customer.TaxCode,
                        ["Email"] = i => i.Customer.Email
                    })
                    .FirstOrDefault();

                Assert.IsNotNull(invoice);
                Assert.IsNotNull(invoice.Id);
            }
        }

        [TestMethod]
        public void ScalarTest()
        {
            using (DbTestInstance dbInstance = new DbTestInstance())
            {
                decimal? amount = dbInstance.ProcedureOf<Invoice>()
                    .WithName("df_GetInvoicesAmount")
                    .Returns<decimal?>();

                Assert.IsNotNull(amount);
            }
        }


        public virtual List<OrderedTest> GetPlayListTest()
        {
            return new List<OrderedTest>
            {
                new OrderedTest(NonQueryTest),
                new OrderedTest(QueryTest),
                new OrderedTest(EntityTest),
                new OrderedTest(ScalarTest),
            };
        }
    }
}
