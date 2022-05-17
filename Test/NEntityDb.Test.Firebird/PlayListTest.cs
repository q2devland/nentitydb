using FirebirdSql.Data.FirebirdClient;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Test.Firebird.Common;
using NEntityDb.Unit.Test.Utility;
using System.Collections.Generic;
using System.Data;
using System.Linq;

namespace NEntityDb.Test.Firebird
{
    [TestClass]
    public class PlayListTest : NEntityDb.Unit.Test.PlayListTest<DbTestInstance>
    {
        [AssemblyInitialize]
        public static void Initialize(TestContext context)
        {
            TestSettings.LoadFrom("appsettings.firebird.json");
            NEntityDb.Data.Firebird.Licensing.DbLicense.LoadFromString(TestSettings.License);
        }

        protected override List<OrderedTest> InsertPlayList
        {
            get
            {
                return new InsertTest<DbTestInstance>().GetPlayListTest();
            }
        }
       
        protected override List<OrderedTest> UpdatePlayList
        {
            get
            {
                return new UpdateTest<DbTestInstance>().GetPlayListTest();
            }
        }

        protected override List<OrderedTest> DeletePlayList
        {
            get
            {
                return new DeleteTest<DbTestInstance>().GetPlayListTest();
            }
        }

        protected override List<OrderedTest> TablePerHierarchyPlayList
        {
            get
            {
                return new Unit.Test.Common.TablePerHierarchyTest<DbTestTPHInstance>().GetPlayListTest();
            }
        }
    }
}
