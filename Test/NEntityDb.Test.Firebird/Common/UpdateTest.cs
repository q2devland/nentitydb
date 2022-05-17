using System.Collections.Generic;
using System.Data;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Model;
using NEntityDb.Test.Model.Customers;
using System;
using NEntityDb.Unit.Test.Utility;
using NEntityDb.Data.Firebird;
using NEntityDb.Unit.Test;

namespace NEntityDb.Test.Firebird.Common
{
    [TestClass]
    public class UpdateTest<TInstance>: NEntityDb.Unit.Test.Common.UpdateTest<TInstance> where TInstance : NEntityDb.Data.Firebird.DbInstance, new()
    {
        [TestMethod]
        public void MultipleBlockEnabledTest()
        {
            this.MultipleBlockTest(false);
        }

        [TestMethod]
        public void MultipleBlockDisabledTest()
        {
            this.MultipleBlockTest(true);
        }

        private void MultipleBlockTest(bool disabled)
        {
            List<NonQueryRequest<Customer>> request = new List<NonQueryRequest<Customer>>();

            for (int i = 0; i < 300; i++)
            {
                request.Add(new NonQueryRequest<Customer>()
                    .Set(() => new Customer
                    {
                        Email = $"{Guid.NewGuid()}@test.com",
                        TaxCode = Guid.NewGuid().ToString()
                    })
                    .WithTag(this, disabled ? nameof(MultipleBlockDisabledTest) : nameof(MultipleBlockEnabledTest))
                    .Where(c => c.Id == (10 + i)));
            }

            using (TInstance dbInstance = new TInstance())
            {
                dbInstance.Settings.DisableBlockForMultipleNonQuery(disabled);
                NonQueryResponse<Customer> response = dbInstance.UpdateData(request.ToArray());

                this.AssertNonEmptyResponse(response);
            }
        }

        public override List<OrderedTest> GetPlayListTest()
        {
            List<OrderedTest> playList = base.GetPlayListTest();
            playList.Add(new OrderedTest(MultipleBlockEnabledTest));
            playList.Add(new OrderedTest(MultipleBlockDisabledTest));
            return playList;
        }
    }
}
