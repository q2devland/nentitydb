using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Model;
using NEntityDb.Test.Model.Billing;
using NEntityDb.Test.Model.Customers;
using NEntityDb.Unit.Test.Utility;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NEntityDb.Unit.Test.Common
{
    public class ScalarTest<TInstance> : BaseTest<TInstance> where TInstance : NEntityDb.Data.Common.DbInstance, new()
    {
        [TestMethod]
        public void SimpleTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                ScalarResponse<Customer> response = dbInstance.ScalarOf<Customer>()
                    .Select(c => c.FullName)
                    .Where(c => c.Id == 1)
                    .WithTag(this, nameof(SimpleTest))
                    .Read();

                this.AssertNonEmptyValueResponse(response);
                Assert.IsTrue(response.Returns<string>() != null);
            }
        }

        [TestMethod]
        public async Task SimpleAsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                ScalarResponse<Customer> response = await dbInstance.ScalarOf<Customer>()
                    .Select(c => c.FullName)
                    .Where(c => c.Id == 1)
                    .WithTag(this, nameof(SimpleAsyncTest))
                    .ReadAsync();

                this.AssertNonEmptyValueResponse(response);
                Assert.IsTrue(response.Returns<string>() != null);
            }
        }

        [TestMethod]
        public void Simple2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                string fullName = dbInstance.ScalarOf<Customer>()
                    .Select(c => c.FullName)
                    .Where(c => c.Id == 1)
                    .WithTag(this, nameof(Simple2Test))
                    .Returns<string>();

                Assert.IsTrue(fullName != null);
            }
        }

        [TestMethod]
        public async Task Simple2AsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                string fullName = await dbInstance.ScalarOf<Customer>()
                    .Select(c => c.FullName)
                    .Where(c => c.Id == 1)
                    .WithTag(this, nameof(Simple2AsyncTest))
                    .ReturnsAsync<string>();

                Assert.IsTrue(fullName != null);
            }
        }

        [TestMethod]
        public void CountTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                ScalarResponse<Customer> response = dbInstance.ScalarOf<Customer>()
                    .Select(c => c.Count())
                    .WithTag(this, nameof(CountTest))
                    .Read();

                this.AssertCountNotNull(response);
            }
        }

        [TestMethod]
        public void MinTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                ScalarResponse<Customer> response = dbInstance.ScalarOf<Customer>()
                    .Select(c => c.BirthDate.Min())
                    .WithTag(this, nameof(MinTest))
                    .Read();

                this.AssertDateNotNull(response);
            }
        }

        [TestMethod]
        public void DynamicMinTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                ScalarRequest<Customer> request = dbInstance.ScalarOf<Customer>();
                request.Property = Property.GetProperty("BirthDate", PropertyType.Min);
                request.Tag = $"{this.GetType().Name.Replace("`", "-")}.{nameof(DynamicMinTest)}";

                this.AssertDateNotNull(request.Read());
            }
        }

        [TestMethod]
        public void MaxTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                ScalarResponse<Customer> response = dbInstance.ScalarOf<Customer>()
                    .Select(c => c.DeathDate.Max())
                    .WithTag(this, nameof(MaxTest))
                    .Read();

                this.AssertDateNotNull(response);
            }
        }

        [TestMethod]
        public void SumTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                ScalarResponse<InvoiceLine> response = dbInstance.ScalarOf<InvoiceLine>()
                    .Select(l => l.Amount.Sum())
                    .Where(l => !l.Invoice.IsPaid.Value)
                    .WithTag(this, nameof(SumTest))
                    .Read();

                this.AssertMoneyNotNull(response);
            }
        }

        [TestMethod]
        public void AverageTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                ScalarResponse<InvoiceLine> response = dbInstance.ScalarOf<InvoiceLine>()
                    .Select(l => l.Amount.Average())
                    .Where(l => l.Invoice.IsPaid.Value)
                    .WithTag(this, nameof(AverageTest))
                    .Read();

                this.AssertMoneyNotNull(response);
            }
        }

        [TestMethod]
        public void AbsTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                ScalarResponse<InvoiceLine> response = dbInstance.ScalarOf<InvoiceLine>()
                    .Select(l => l.Amount.Abs())
                    .Where(l => l.Id == 1)
                    .WithTag(this, nameof(AbsTest))
                    .Read();

                this.AssertMoneyNotNull(response);
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
                new OrderedTest(CountTest),
                new OrderedTest(MinTest),
                new OrderedTest(DynamicMinTest),
                new OrderedTest(MaxTest),
                new OrderedTest(SumTest),
                new OrderedTest(AverageTest),
                new OrderedTest(AbsTest)
            };
        }
    }
}
