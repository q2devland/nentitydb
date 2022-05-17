using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Unit.Test.Common;
using NEntityDb.Unit.Test.Utility;
using Oracle.ManagedDataAccess.Client;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace NEntityDb.Test.Oracle
{
    [TestClass]
    public class PlayListTest : NEntityDb.Unit.Test.PlayListTest<DbTestInstance>
    {
        [AssemblyInitialize]
        public static void Initialize(TestContext context)
        {
            TestSettings.LoadFrom("appsettings.oracle.json");
            NEntityDb.Data.Oracle.Licensing.DbLicense.LoadFromString(TestSettings.License);
        }

        protected override void OnPostInsertPlayList(OrderedTestResult result)
        {
            this.ExecuteScript($"BEGIN DELETE FROM \"{TestSettings.Schema}\".\"Users\" WHERE \"USR_Id\" > 100; END;", "Preparing data");
            result.AddResult(OrderedTest.Run(this.TestContext, "InsertTestWithTriggers", this.InsertTestWithTriggersPlayList));

            this.ExecuteScript($"BEGIN DELETE FROM \"{TestSettings.Schema}\".\"Users\" WHERE \"USR_Id\" > 100; END;", "Preparing data");
            this.ExecuteScriptFile(TestSettings.GetConfiguration()["identityDefaultScript"], "Updating database schema");
            result.AddResult(OrderedTest.Run(this.TestContext, "InsertTestIdentityDefault", this.InsertTestIdentityPlayList));

            this.ExecuteScript($"BEGIN DELETE FROM \"{TestSettings.Schema}\".\"Users\" WHERE \"USR_Id\" > 100; END;", "Preparing data");
            this.ExecuteScriptFile(TestSettings.GetConfiguration()["identityAlwaysScript"], "Updating database schema");
            result.AddResult(OrderedTest.Run(this.TestContext, "InsertTestIdentityAlways", this.InsertTestIdentityPlayList));
        }
        
        private List<OrderedTest> InsertTestWithTriggersPlayList
        {
            get
            {
                return new InsertTestWithTriggers<DbTestInstanceWithTriggers>().GetPlayListTest();
            }
        }

        private List<OrderedTest> InsertTestIdentityPlayList
        {
            get
            {
                return new InsertTestIdentity<DbTestInstanceIdentity>().GetPlayListTest();
            }
        }

        protected override List<OrderedTest> TablePerHierarchyPlayList
        {
            get
            {
                return new TablePerHierarchyTest<DbTestTPHInstance>().GetPlayListTest();
            }
        }
    }
}
