using Microsoft.Extensions.Configuration;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Unit.Test;
using NEntityDb.Unit.Test.Utility;
using System;
using System.Collections.Generic;
using System.IO;

namespace NEntityDb.Test.App
{
    public class Program
    {
        private static AppTestContext AppTestContext { get; set; }
        private static IConfigurationRoot Config { get; set; }

        public static void Main(string[] args)
        {
            Program.Initialize();
            Program.PromptOptions();
        }

        private static void Initialize()
        {
            Program.Config = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json")
                .Build();

            Program.AppTestContext = new AppTestContext();            
        }

        private static void WriteOptions()
        {
            Console.WriteLine(" a. Run SqlServer tests");
            Console.WriteLine(" b. Run Oracle tests");
            Console.WriteLine(" c. Run MySql tests (with MySql.Data)");
            Console.WriteLine(" d. Run MySql tests (with MySqlConnector)");
            Console.WriteLine(" e. Run MariaDb tests (with MySql.Data)");
            Console.WriteLine(" f. Run MariaDb tests (with MySqlConnector)");
            Console.WriteLine(" g. Run Percona tests (with MySql.Data)");
            Console.WriteLine(" h. Run Percona tests (with MySqlConnector)");
            Console.WriteLine(" i. Run PostgreSql tests");
            Console.WriteLine(" j. Run Db2 tests");
            Console.WriteLine(" k. Run Sqlite tests (with System.Data.SQLite)");
            Console.WriteLine(" m. Run Sqlite tests (with Microsoft.Data.Sqlite)");
            Console.WriteLine(" n. Run Firebird tests");
            //Console.WriteLine(" m. Run Access tests");
            Console.WriteLine(" t. Run all tests");
            Console.WriteLine(" q. Quit");
        }

        private static int ReadOption()
        {
            Console.WriteLine("Select one option:");
            ConsoleKeyInfo keyInfo = Console.ReadKey();
            Console.WriteLine();
            switch (keyInfo.Key)
            {
                case ConsoleKey.A:
                    return 1;
                case ConsoleKey.B:
                    return 2;
                case ConsoleKey.C:
                    return 3;
                case ConsoleKey.D:
                    return 4;
                case ConsoleKey.E:
                    return 5;
                case ConsoleKey.F:
                    return 6;
                case ConsoleKey.G:
                    return 7;
                case ConsoleKey.H:
                    return 8;
                case ConsoleKey.I:
                    return 9;
                case ConsoleKey.J:
                    return 10;
                case ConsoleKey.K:
                    return 11;
                case ConsoleKey.M:
                    return 12;
                case ConsoleKey.N:
                    return 13;
                case ConsoleKey.T:
                    return 99;
                case ConsoleKey.Q:
                    return 100;
                default:
                    return -1;
            }
        }

        private static void PromptOptions()
        {
            Program.WriteOptions();
            int option = Program.ReadOption();
            while (option == -1)
            {
                option = Program.ReadOption();
            }
            switch (option)
            {
                case 100:
                    Environment.Exit(0);
                    break;
                default:
                    Program.RunTests(option);
                    Program.PromptOptions();
                    break;
            }            
        }

        private static void RunTests(int option)
        {
            Program.AppTestContext.ClearResultFiles();
            Program.AppTestContext.AddResultFile(Path.Combine(Environment.CurrentDirectory, $"TestResult_{DateTime.Now.ToString("yyyyMMdd_HHmmssfff")}.txt"));

            OrderedTestResult result = new OrderedTestResult();

            if (option == 1 || option == 99)
            {
                SqlServer.PlayListTest playListTest = new SqlServer.PlayListTest
                {
                    TestContext = Program.AppTestContext
                };
                result.AddResult(Program.RunPlayList(playListTest, Program.Config["sqlSeverSettings"]));
            }
            if (option == 2 || option == 99)
            {
                Oracle.PlayListTest playListTest = new Oracle.PlayListTest
                {
                    TestContext = Program.AppTestContext
                };
                result.AddResult(Program.RunPlayList(playListTest, Program.Config["oracleSettings"]));
            }
            if (option == 3 || option == 99)
            {
                MySql.PlayListTest playListTest = new MySql.PlayListTest
                {
                    TestContext = Program.AppTestContext
                };
                result.AddResult(Program.RunPlayList(playListTest, Program.Config["mySqlSettings"]));
            }
            if (option == 4 || option == 99)
            {
                MySql.MySqlConnectorPlayListTest playListTest = new MySql.MySqlConnectorPlayListTest
                {
                    TestContext = Program.AppTestContext
                };
                result.AddResult(Program.RunPlayList(playListTest, Program.Config["mySqlSettings"]));
            }
            if (option == 5 || option == 99)
            {
                MySql.PlayListTest playListTest = new MySql.PlayListTest
                {
                    TestContext = Program.AppTestContext
                };
                result.AddResult(Program.RunPlayList(playListTest, Program.Config["mariaDbSettings"]));
            }
            if (option == 6 || option == 99)
            {
                MySql.MySqlConnectorPlayListTest playListTest = new MySql.MySqlConnectorPlayListTest
                {
                    TestContext = Program.AppTestContext
                };
                result.AddResult(Program.RunPlayList(playListTest, Program.Config["mariaDbSettings"]));
            }
            if (option == 7 || option == 99)
            {
                MySql.PlayListTest playListTest = new MySql.PlayListTest
                {
                    TestContext = Program.AppTestContext
                };
                result.AddResult(Program.RunPlayList(playListTest, Program.Config["perconaSettings"]));
            }
            if (option == 8 || option == 99)
            {
                MySql.MySqlConnectorPlayListTest playListTest = new MySql.MySqlConnectorPlayListTest
                {
                    TestContext = Program.AppTestContext
                };
                result.AddResult(Program.RunPlayList(playListTest, Program.Config["perconaSettings"]));
            }
            if (option == 9 || option == 99)
            {
                PostgreSql.PlayListTest playListTest = new PostgreSql.PlayListTest
                {
                    TestContext = Program.AppTestContext
                };
                result.AddResult(Program.RunPlayList(playListTest, Program.Config["postgreSqlSettings"]));
            }
            if (option == 10 || option == 99)
            {
                Db2.PlayListTest playListTest = new Db2.PlayListTest
                {
                    TestContext = Program.AppTestContext
                };
                result.AddResult(Program.RunPlayList(playListTest, Program.Config["db2Settings"]));
            }            
            if (option == 11 || option == 99)
            {
                Sqlite.PlayListTest playListTest = new Sqlite.PlayListTest
                {
                    TestContext = Program.AppTestContext
                };
                result.AddResult(Program.RunPlayList(playListTest, Program.Config["sqLiteSettings"]));
            }
            if (option == 12 || option == 99)
            {
                Sqlite.SqlitePlayListTest playListTest = new Sqlite.SqlitePlayListTest
                {
                    TestContext = Program.AppTestContext
                };
                result.AddResult(Program.RunPlayList(playListTest, Program.Config["sqLiteSettings"]));
            }
            if (option == 13 || option == 99)
            {
                Firebird.PlayListTest playListTest = new Firebird.PlayListTest
                {
                    TestContext = Program.AppTestContext
                };
                result.AddResult(Program.RunPlayList(playListTest, Program.Config["firebirdSettings"]));
            }
            //if (option == 10 || option == 99)
            //{
            //    Access.PlayListTest playListTest = new Access.PlayListTest
            //    {
            //        TestContext = Program.AppTestContext
            //    };
            //    result.AddResult(Program.RunPlayList(playListTest, Program.Config["accessSettings"]));
            //}

            TestMessageType testMessageType = result.Failures == 0 ? TestMessageType.Success : TestMessageType.Failure;
            Program.AppTestContext.WriteLine(testMessageType, "*************************************");
            Program.AppTestContext.WriteLine(testMessageType, $"Completed running {result.Attempted} of {result.Count} ordered tests with a total of {result.Failures} error(s) at {DateTime.Now.ToString("G")}");
            Program.AppTestContext.WriteLine(testMessageType, "*************************************\n\n");
        }
        
        private static OrderedTestResult RunPlayList(IPlayListTest playListTest, string settingsPath)
        {
            if (!Path.IsPathRooted(settingsPath))
                settingsPath = Path.Combine(Directory.GetCurrentDirectory(), settingsPath);
            
            TestSettings.LoadFrom(settingsPath);

            if (playListTest is SqlServer.PlayListTest)
                NEntityDb.Data.SqlServer.Licensing.DbLicense.LoadFromString(TestSettings.License);
            else if (playListTest is Oracle.PlayListTest)
                NEntityDb.Data.Oracle.Licensing.DbLicense.LoadFromString(TestSettings.License);
            else if (playListTest is MySql.PlayListTest || playListTest is MySql.MySqlConnectorPlayListTest)
                NEntityDb.Data.MySql.Licensing.DbLicense.LoadFromString(TestSettings.License);
            else if (playListTest is PostgreSql.PlayListTest)
                NEntityDb.Data.PostgreSql.Licensing.DbLicense.LoadFromString(TestSettings.License);
            else if (playListTest is Db2.PlayListTest)
                NEntityDb.Data.Db2.Licensing.DbLicense.LoadFromString(TestSettings.License);
            else if (playListTest is Sqlite.PlayListTest || playListTest is Sqlite.SqlitePlayListTest)
                NEntityDb.Data.Sqlite.Licensing.DbLicense.LoadFromString(TestSettings.License);
            else if (playListTest is Firebird.PlayListTest)
                NEntityDb.Data.Firebird.Licensing.DbLicense.LoadFromString(TestSettings.License);

            return playListTest.OnRun();
        }
    }
}
