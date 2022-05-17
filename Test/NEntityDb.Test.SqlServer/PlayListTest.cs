using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Unit.Test.Common;
using NEntityDb.Unit.Test.Utility;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace NEntityDb.Test.SqlServer
{
    [TestClass]
    public class PlayListTest : NEntityDb.Unit.Test.PlayListTest<DbTestInstance>
    {
        [AssemblyInitialize]
        public static void Initialize(TestContext context)
        {
            TestSettings.LoadFrom("appsettings.sqlserver.json");
            NEntityDb.Data.SqlServer.Licensing.DbLicense.LoadFromString(TestSettings.License);
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
