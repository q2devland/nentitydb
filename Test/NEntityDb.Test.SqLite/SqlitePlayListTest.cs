using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Data.Common;
using NEntityDb.Exceptions;
using NEntityDb.Licensing;
using NEntityDb.Unit.Test.Common;
using NEntityDb.Unit.Test.Utility;
using System.Collections.Generic;
using System.Data;
using System.Data.SQLite;
using System.Linq;

namespace NEntityDb.Test.Sqlite
{
    [TestClass]
    public class SqlitePlayListTest : NEntityDb.Unit.Test.PlayListTest<DbTestSqliteInstance>
    {
        [AssemblyInitialize]
        public static void Initialize(TestContext context)
        {
            DbInstance.Clear<DbTestSqliteTPHInstance>();
            TestSettings.LoadFrom("appsettings.sqlite.json");
            NEntityDb.Data.Sqlite.Licensing.DbLicense.LoadFromString(TestSettings.License);
        }

        protected override List<OrderedTest> QueryPlayList 
        {
            get
            {
                List<OrderedTest> playList = base.QueryPlayList;
                playList.FirstOrDefault(t => t.TestMethod != null && t.TestMethod.Method.Name == "AllFilterTest").ExpectedException = new DbStatementNotSupportedException(DbProviderType.Sqlite, DbStatementNotSupportedExceptionReason.AnyAllOperators);
                playList.FirstOrDefault(t => t.TestMethod != null && t.TestMethod.Method.Name == "AnyFilterTest").ExpectedException = new DbStatementNotSupportedException(DbProviderType.Sqlite, DbStatementNotSupportedExceptionReason.AnyAllOperators);
                return playList;
            }
        }

        protected override List<OrderedTest> TablePerHierarchyPlayList
        {
            get
            {
                DbInstance.Clear<DbTestSqliteTPHInstance>();
                return new TablePerHierarchyTest<DbTestSqliteTPHInstance>().GetPlayListTest();
            }
        }
    }
}
