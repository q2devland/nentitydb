using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Model;
using NEntityDb.Test.Model.Application;
using NEntityDb.Test.Model.Customers;
using NEntityDb.Test.Model.Geometry;
using NEntityDb.Test.Model.Organization;
using NEntityDb.Unit.Test.Utility;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NEntityDb.Unit.Test.Common
{
    public class DeleteTest<TInstance> : BaseTest<TInstance> where TInstance : NEntityDb.Data.Common.DbInstance, new()
    {
        [TestMethod]
        public void SimpleTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Employee> response = dbInstance.NonQueryOf<Employee>()
                    .Where(e => e.FullName.Contains("a"))
                    .WithTag(this, nameof(SimpleTest))
                    .Delete();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public async Task SimpleAsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Employee> response = await dbInstance.NonQueryOf<Employee>()
                    .Where(e => e.FullName.Contains("a"))
                    .WithTag(this, nameof(SimpleAsyncTest))
                    .DeleteAsync();

                this.AssertEmptyResponse(response);
            }
        }

        [TestMethod]
        public void Simple2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                int rowsAffected = dbInstance.NonQueryOf<Employee>()
                    .Where(e => e.FullName.Contains("a"))
                    .WithTag(this, nameof(Simple2Test))
                    .Delete()
                    .RowsAffected;

                this.AssertNoRowsAffected(rowsAffected);
            }
        }

        [TestMethod]
        public async Task Simple2AsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                int rowsAffected = (await dbInstance.NonQueryOf<Employee>()
                    .Where(e => e.FullName.Contains("a"))
                    .WithTag(this, nameof(Simple2AsyncTest))
                    .DeleteAsync())
                    .RowsAffected;

                this.AssertNoRowsAffected(rowsAffected);
            }
        }

        [TestMethod]
        public void DynamicSimple2Test()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryRequest<Employee> request = dbInstance.NonQueryOf<Employee>();
                request.Filter = new List<Filter>
                {
                    new ValueFilter("FullName", FilterOperator.Contains, "a")
                };
                request.Tag = $"{this.GetType().Name.Replace("`", "-")}.{nameof(DynamicSimple2Test)}";

                int rowsAffected = request.Delete().RowsAffected;

                this.AssertNoRowsAffected(rowsAffected);
            }
        }

        [TestMethod]
        public void WithJoinTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Address> response = dbInstance.NonQueryOf<Address>()
                    .Where(a => a.Customer.FullName.Contains("g"))
                    .WithTag(this, nameof(WithJoinTest))
                    .Delete();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void MultipleTest()
        {
            List<Customer> customers = new List<Customer>();

            for (int i = 0; i < 50; i++)
            {
                customers.Add(new Customer
                {
                    Id = 300 + i
                });                    
            }

            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Address> response = dbInstance.DeleteData(customers.Select(c => dbInstance.NonQueryOf<Address>()
                    .Where(a => a.Customer.Id == c.Id)
                    .WithTag(this, nameof(MultipleTest)))
                    .ToArray());

                this.AssertNonEmptyResponse(response);
            }            
        }

        [TestMethod]
        public void HierarchyTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Polygon> response = dbInstance.NonQueryOf<Polygon>()
                    .Where(p => p.Id == 13)
                    .WithTag(this, nameof(HierarchyTest))
                    .Delete();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void HierarchyNTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Circle> response = dbInstance.NonQueryOf<Circle>()
                    .Where(c => c.Id == 1)
                    .WithTag(this, nameof(HierarchyNTest))
                    .Delete();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void HierarchyMultipleTest()
        {
            List<NonQueryRequest<Circle>> request = new List<NonQueryRequest<Circle>>();

            for (int i = 0; i < 3; i++)
            {
                request.Add(new NonQueryRequest<Circle>()
                    .Where(e => e.Id == (2 + i))
                    .WithTag(this, nameof(HierarchyMultipleTest)));
            }

            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Circle> response = dbInstance.DeleteData(request.ToArray());

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public void LogicalDeleteTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<Customer> response = dbInstance.NonQueryOf<Customer>()
                    .Where(c => c.FullName.Contains("w"))
                    .WithTag(this, nameof(LogicalDeleteTest))
                    .Delete();

                this.AssertNonEmptyResponse(response);
            }
        }

        [TestMethod]
        public async Task LogicalDeleteAsyncTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                NonQueryResponse<User> response = await dbInstance.NonQueryOf<User>()
                    .Where(u => u.FullName.Contains("w"))
                    .WithTag(this, nameof(LogicalDeleteAsyncTest))
                    .DeleteAsync();

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
                new OrderedTest(HierarchyTest),
                new OrderedTest(HierarchyNTest),
                new OrderedTest(HierarchyMultipleTest),
                new OrderedTest(LogicalDeleteTest),
                new OrderedTest(LogicalDeleteAsyncTest)
            };
        }
    }
}
