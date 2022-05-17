using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Unit.Test.Common;
using NEntityDb.Test.PostgreSql.Common;
using NEntityDb.Unit.Test.Utility;
using Npgsql;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace NEntityDb.Test.PostgreSql
{
    [TestClass]
    public class PlayListTest : NEntityDb.Unit.Test.PlayListTest<DbTestInstance>
    {
        [AssemblyInitialize]
        public static void Initialize(TestContext context)
        {
            TestSettings.LoadFrom("appsettings.postgresql.json");
            NEntityDb.Data.PostgreSql.Licensing.DbLicense.LoadFromString(TestSettings.License);
        }

        protected override void OnPostProcedurePlayList(OrderedTestResult result)
        {
            result.AddResult(OrderedTest.Run(this.TestContext, "Procedure11", this.Procedure11PlayList));
        }

        protected override void OnPostInsertPlayList(OrderedTestResult result)
        {
            this.ExecuteScript("DELETE FROM \"public\".\"Users\" WHERE \"USR_Id\" > 100;", "Preparing data");
            this.ExecuteScriptFile(TestSettings.GetConfiguration()["identityDefaultScript"], "Updating database schema");
            result.AddResult(OrderedTest.Run(this.TestContext, "InsertTestIdentityDefault", this.InsertPlayList));

            this.ExecuteScript("DELETE FROM \"public\".\"Users\" WHERE \"USR_Id\" > 100;", "Preparing data");
            this.ExecuteScriptFile(TestSettings.GetConfiguration()["identityAlwaysScript"], "Updating database schema");
            result.AddResult(OrderedTest.Run(this.TestContext, "InsertTestIdentityAlways", this.InsertPlayList));
        }
      
        protected override List<OrderedTest> ProcedurePlayList
        {
            get
            {
                return new ProcedureFunctionsTest<DbTestInstance>().GetPlayListTest();
            }
        }

        private List<OrderedTest> Procedure11PlayList
        {
            get
            {
                return new ProcedureTest<DbTestInstance11>().GetPlayListTest();
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
