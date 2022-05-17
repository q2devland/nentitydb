using IBM.Data.DB2.Core;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Unit.Test.Common;
using NEntityDb.Unit.Test.Utility;
using System.Collections.Generic;
using System.Data;

namespace NEntityDb.Test.Db2
{
    [TestClass]
    public class PlayListTest : NEntityDb.Unit.Test.PlayListTest<DbTestInstance>
    {
        [AssemblyInitialize]
        public static void Initialize(TestContext context)
        {
            TestSettings.LoadFrom("appsettings.db2.json");
            NEntityDb.Data.Db2.Licensing.DbLicense.LoadFromString(TestSettings.License);
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
