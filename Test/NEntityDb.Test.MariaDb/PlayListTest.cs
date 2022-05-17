extern alias MySqlConnectorAlias;
using System.Data;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MySql.Data.MySqlClient;
using NEntityDb.Test.Utility;

namespace NEntityDb.Test.MariaDb
{
    [TestClass]
    public class PlayListTest : NEntityDb.Test.PlayListTest<DbTestInstance>
    {
        [AssemblyInitialize]
        public static void Initialize(TestContext context)
        {
            TestSettings.LoadFrom("appsettings.mariadb.json");
            NEntityDb.Data.MariaDb.Licensing.DbLicense.SetLicense(TestSettings.License);
        }
    }
}
