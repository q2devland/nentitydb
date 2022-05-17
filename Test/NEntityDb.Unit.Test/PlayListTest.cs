using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Linq;
using NEntityDb.Unit.Test.Utility;
using NEntityDb.Unit.Test.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;

namespace NEntityDb.Unit.Test
{
    public interface IPlayListTest
    {
        OrderedTestResult OnRun(bool prepareRequired = true);
    }

    public abstract class PlayListTest<TInstance> : BaseTest<TInstance>, IPlayListTest where TInstance : NEntityDb.Data.Common.DbInstance, new()
    {
        public TestContext TestContext { get; set; }

        [TestMethod]
        public void RunTest()
        {
            this.OnRun();
        }

        protected virtual void OnPrepare()
        {
            OrderedTest.WriteLine(TestMessageType.Info, $"Starting environment configuration", this.TestContext);
            try
            {
                this.ExecuteScriptFile(TestSettings.SchemaScript, $"Creating database schema", this.GetType().FullName == "NEntityDb.Test.Access.PlayListTest");
                this.InsertSampleData();
                OrderedTest.WriteLine(TestMessageType.Info, $"Environment configuration completed successfully", this.TestContext);                
            }
            catch (Exception e)
            {
                OrderedTest.WriteLine(TestMessageType.Failure, $"Environment configuration completed with error\n: {e.ToString()}", this.TestContext);
            }
        }

        protected void ExecuteScriptFile(string path, string message, bool ignoreExceptions = false)
        {
            this.ExecuteScript(File.ReadAllText(path), message, ignoreExceptions);
        }
        
        protected void ExecuteScript(string script, string message, bool ignoreExceptions = false)
        {
            using (IDbConnection connection = this.CreateConnection())
            {
                OrderedTest.WriteLine(TestMessageType.Info, $"Connecting to database: {connection.ConnectionString}", this.TestContext);
                connection.Open();

                using (IDbCommand command = connection.CreateCommand())
                {
                    string commentsBlock = $"{TestSettings.CommentSymbol}BLOCK";

                    command.CommandTimeout = 300;
                    string[] blocks = script.Split(commentsBlock);
                    OrderedTest.WriteLine(TestMessageType.Info, message, this.TestContext);
                    blocks.Apply(block =>
                    {
                        command.CommandText = block;
                        try
                        {
                            command.ExecuteNonQuery();
                        }
                        catch (Exception e)
                        {
                            if (!ignoreExceptions)
                                throw e;
                        }
                    });
                }
            }
        }

        protected void InsertSampleData()
        {
            using (IDbConnection connection = this.CreateConnection())
            {
                OrderedTest.WriteLine(TestMessageType.Info, $"Connecting to database: {connection.ConnectionString}", this.TestContext);
                connection.Open();

                using (IDbCommand command = connection.CreateCommand())
                {
                    string commentsBlock = $"{TestSettings.CommentSymbol}BLOCK";

                    command.CommandTimeout = 300;

                    string[] blocks = File.ReadAllText(TestSettings.DataScript).Split(commentsBlock);
                    OrderedTest.WriteLine(TestMessageType.Info, $"Inserting data to database", this.TestContext);
                    blocks.Apply(block =>
                    {
                        command.CommandText = block;
                        command.ExecuteNonQuery();
                    });
                }
            }
        }

        public virtual OrderedTestResult OnRun(bool prepareRequired = true)
        {
            if (prepareRequired)
                this.OnPrepare();

            NEntityDb.Data.Common.DbInstance.Clear<TInstance>();

            OrderedTestResult result = new OrderedTestResult();

            result.AddResult(OrderedTest.Run(this.TestContext, "QueryTest", this.QueryPlayList));
            this.OnPostQueryPlayList(result);
            result.AddResult(OrderedTest.Run(this.TestContext, "EntityTest", this.EntityPlayList));
            this.OnPostEntityPlayList(result);
            result.AddResult(OrderedTest.Run(this.TestContext, "ScalarTest", this.ScalarPlayList));
            this.OnPostScalarPlayList(result);
            result.AddResult(OrderedTest.Run(this.TestContext, "InsertTest", this.InsertPlayList));
            this.OnPostInsertPlayList(result);
            result.AddResult(OrderedTest.Run(this.TestContext, "UpdateTest", this.UpdatePlayList));
            this.OnPostUpdatePlayList(result);
            result.AddResult(OrderedTest.Run(this.TestContext, "ProcedureTest", this.ProcedurePlayList));
            this.OnPostProcedurePlayList(result);
            result.AddResult(OrderedTest.Run(this.TestContext, "TransactionsTest", this.TransactionsPlayList));
            this.OnPostTransactionsPlayList(result);
            result.AddResult(OrderedTest.Run(this.TestContext, "DeleteTest", this.DeletePlayList));
            this.OnPostDeletePlayList(result);
            result.AddResult(OrderedTest.Run(this.TestContext, "TablePerHierarchy", this.TablePerHierarchyPlayList));
            this.OnPostDeletePlayList(result);

            TestMessageType testMessageType = result.Failures == 0 ? TestMessageType.Success : TestMessageType.Failure;
            OrderedTest.WriteLine(testMessageType, "*************************************", this.TestContext);
            OrderedTest.WriteLine(testMessageType, $"Completed running {result.Attempted} of {result.Count} ordered tests with a total of {result.Failures} error(s) at {DateTime.Now.ToString("G")}", this.TestContext);
            OrderedTest.WriteLine(testMessageType, "*************************************\n\n", this.TestContext);

            return result;
        }

        protected virtual void OnPostTransactionsPlayList(OrderedTestResult result)
        {
        }

        protected virtual void OnPostProcedurePlayList(OrderedTestResult result)
        {
        }

        protected virtual void OnPostDeletePlayList(OrderedTestResult result)
        {
        }

        protected virtual void OnPostUpdatePlayList(OrderedTestResult result)
        {
        }

        protected virtual void OnPostInsertPlayList(OrderedTestResult result)
        {
        }

        protected virtual void OnPostScalarPlayList(OrderedTestResult result)
        {
        }

        protected virtual void OnPostEntityPlayList(OrderedTestResult result)
        {
        }

        protected virtual void OnPostQueryPlayList(OrderedTestResult result)
        {
        }

        protected virtual List<OrderedTest> QueryPlayList
        {
            get
            {
                return new QueryTest<TInstance>().GetPlayListTest();
            }
        }

        protected virtual List<OrderedTest> EntityPlayList
        {
            get
            {
                return new EntityTest<TInstance>().GetPlayListTest();
            }
        }

        protected virtual List<OrderedTest> ScalarPlayList
        {
            get
            {
                return new ScalarTest<TInstance>().GetPlayListTest();
            }
        }

        protected virtual List<OrderedTest> InsertPlayList
        {
            get
            {
                return new InsertTest<TInstance>().GetPlayListTest();
            }
        }

        protected virtual List<OrderedTest> UpdatePlayList
        {
            get
            {
                return new UpdateTest<TInstance>().GetPlayListTest();
            }
        }

        protected virtual List<OrderedTest> DeletePlayList
        {
            get
            {
                return new DeleteTest<TInstance>().GetPlayListTest();
            }
        }

        protected virtual List<OrderedTest> ProcedurePlayList
        {
            get
            {
                return new ProcedureTest<TInstance>().GetPlayListTest();
            }
        }

        protected virtual List<OrderedTest> TransactionsPlayList
        {
            get
            {
                return new TransactionsTest<TInstance>().GetPlayListTest();
            }
        }

        protected virtual List<OrderedTest> TablePerHierarchyPlayList
        {
            get
            {
                throw new NotImplementedException();
            }
        }
    }
}
