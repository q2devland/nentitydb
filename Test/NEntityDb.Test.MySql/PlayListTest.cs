using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Data.Common;
using NEntityDb.Unit.Test.Common;
using NEntityDb.Unit.Test.Utility;
using System.Collections.Generic;

namespace NEntityDb.Test.MySql
{
    [TestClass]
    public class PlayListTest : NEntityDb.Unit.Test.PlayListTest<DbTestInstance>
    {
        [AssemblyInitialize]
        public static void Initialize(TestContext context)
        {
            DbInstance.Clear<DbTestTPHInstance>();
            TestSettings.LoadFrom("appsettings.mysql.json");
            NEntityDb.Data.MySql.Licensing.DbLicense.LoadFromString(TestSettings.License);                        
        }

        protected override List<OrderedTest> TablePerHierarchyPlayList
        {
            get
            {
                DbInstance.Clear<DbTestTPHInstance>();
                return new TablePerHierarchyTest<DbTestTPHInstance>().GetPlayListTest();
            }
        }
    }
}
