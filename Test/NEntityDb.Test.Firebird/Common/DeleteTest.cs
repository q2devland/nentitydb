using System.Collections.Generic;
using System.Data;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Model;
using NEntityDb.Test.Model.Customers;
using NEntityDb.Unit.Test.Utility;
using NEntityDb.Data.Firebird;
using NEntityDb.Unit.Test;

namespace NEntityDb.Test.Firebird.Common
{
    [TestClass]
    public class DeleteTest<TInstance> : NEntityDb.Unit.Test.Common.DeleteTest<TInstance> where TInstance : NEntityDb.Data.Firebird.DbInstance, new()
    {
        [TestMethod]
        public void MultipleBlockEnabledTest()
        {
            this.MultipleBlockTest(false, 0);
        }

        [TestMethod]
        public void MultipleBlockDisabledTest()
        {
            this.MultipleBlockTest(true, 200);
        }

        private void MultipleBlockTest(bool disabled, int start)
        {
            List<NonQueryRequest<Address>> request = new List<NonQueryRequest<Address>>();

            for (int i = start; i < start + 200; i++)
            {
                request.Add(new NonQueryRequest<Address>()
                    .Where(a => a.Customer.Id == i + 1)
                    .WithTag(this, disabled ? nameof(MultipleBlockDisabledTest) : nameof(MultipleBlockEnabledTest)));
            }

            using (TInstance dbInstance = new TInstance())
            {
                dbInstance.Settings.DisableBlockForMultipleNonQuery(disabled);
                NonQueryResponse<Address> response = dbInstance.DeleteData(request.ToArray());

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
