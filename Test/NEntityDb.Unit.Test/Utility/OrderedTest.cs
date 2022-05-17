using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NEntityDb.Unit.Test.Utility
{
    public class OrderedTest
    {
        /// <summary>Test Method to run</summary>
        public Action TestMethod { get; private set; }

        /// <summary>Async Test Method to run</summary>
        public Func<Task> TestAsyncMethod { get; private set; }

        /// <summary>Flag indicating whether testing should continue with the next test if the current one fails</summary>
        public bool ContinueOnFailure { get; private set; }

        /// <summary>Any Exception thrown by the test</summary>
        public Exception ExceptionResult { get; private set; }

        public Exception ExpectedException { get; set; }

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="testMethod"></param>
        /// <param name="continueOnFailure">True to continue with the next test if this test fails</param>
        public OrderedTest(Action testMethod, Exception expectedException = null, bool continueOnFailure = true)
        {
            this.TestMethod = testMethod;
            this.ExpectedException = expectedException;           
            this.ContinueOnFailure = continueOnFailure;
        }

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="testMethod"></param>
        /// <param name="continueOnFailure">True to continue with the next test if this test fails</param>
        public OrderedTest(Func<Task> testMethod, Exception expectedException = null, bool continueOnFailure = true)
        {
            this.TestAsyncMethod = testMethod;
            this.ExpectedException = expectedException;
            this.ContinueOnFailure = continueOnFailure;
        }

        /// <summary>
        /// Run the test saving any exception within ExceptionResult
        /// Throw to the caller only if ContinueOnFailure == false
        /// </summary>
        /// <param name="testContextOpt"></param>
        public void Run()
        {
            try
            {
                if (this.TestMethod != null)
                    this.TestMethod();
                else
                    this.TestAsyncMethod().Wait();

            }
            catch (Exception ex)
            {
                if (!this.IsExpectedException(ex)) 
                {
                    this.ExceptionResult = ex;
                    throw;
                }
            }
        }

        public bool IsExpectedException(Exception ex)
        {
            return this.ExpectedException != null
                && this.ExpectedException.GetType() == ex.GetType()
                && this.ExpectedException.Message == ex.Message;
        }

        /// <summary>
        /// Run a list of OrderedTest's
        /// </summary>
        public static OrderedTestResult Run(TestContext testContext, string playListName, List<OrderedTest> tests)
        {
            OrderedTest.WriteLine(TestMessageType.Info, "----------------------------------------", testContext);
            OrderedTest.WriteLine(TestMessageType.Info, $"Starting play list '{playListName}'", testContext);

            Stopwatch overallStopWatch = new Stopwatch();
            overallStopWatch.Start();

            List<Exception> exceptions = new List<Exception>();

            int testsAttempted = 0;
            for (int i = 0; i < tests.Count; i++)
            {
                OrderedTest test = tests[i];

                Stopwatch stopWatch = new Stopwatch();
                stopWatch.Start();
                if (test.TestMethod != null)
                    OrderedTest.WriteLine(TestMessageType.Info, $"Starting ordered test step ({i + 1} of {tests.Count}) '{test.TestMethod.Method.Name}' at {DateTime.Now.ToString("G")}...\n", testContext);
                else
                    OrderedTest.WriteLine(TestMessageType.Info, $"Starting ordered test step ({i + 1} of {tests.Count}) '{test.TestAsyncMethod.Method.Name}' at {DateTime.Now.ToString("G")}...\n", testContext);

                try
                {
                    testsAttempted++;
                    test.Run();
                }
                catch
                {
                    if (!test.ContinueOnFailure)
                        break;
                }
                finally
                {
                    Exception testEx = test.ExceptionResult;

                    if (testEx != null)  // capture any "continue on fail" exception
                        exceptions.Add(testEx);

                    bool isSuccess = testEx == null;
                    string title = !isSuccess ? "Error:  Failed" : "Successfully completed";
                    string timeMethod = stopWatch.ElapsedMilliseconds > 1000
                            ? (stopWatch.ElapsedMilliseconds * .001) + "s"
                            : stopWatch.ElapsedMilliseconds + "ms";

                    string exception = testEx != null
                            ? "\nException:  " + testEx.Message +
                                "\nStackTrace:  " + testEx.StackTrace +
                                "\nContinueOnFailure:  " + test.ContinueOnFailure
                            : "";

                    if (test.TestMethod != null)
                        OrderedTest.WriteLine(isSuccess ? TestMessageType.Success : TestMessageType.Failure, $"\n{title} ordered test step {i + 1} of { tests.Count} '{test.TestMethod.Method.Name}' in {timeMethod} at { DateTime.Now.ToString("G")}{exception}\n", testContext);
                    else
                        OrderedTest.WriteLine(isSuccess ? TestMessageType.Success : TestMessageType.Failure, $"\n{title} ordered test step {i + 1} of { tests.Count} '{test.TestAsyncMethod.Method.Name}' in {timeMethod} at { DateTime.Now.ToString("G")}{exception}\n", testContext);
                }
            }

            string time = overallStopWatch.ElapsedMilliseconds > 1000
                    ? (overallStopWatch.ElapsedMilliseconds * .001) + "s"
                    : overallStopWatch.ElapsedMilliseconds + "ms";

            OrderedTest.WriteLine(TestMessageType.Info, $"Completed running {testsAttempted} of {tests.Count} ordered tests with a total of {exceptions.Count} error(s) at {DateTime.Now.ToString("G")} in {time}\n", testContext);
            OrderedTest.WriteLine(TestMessageType.Info, $"Completed play list '{playListName}'", testContext);
            OrderedTest.WriteLine(TestMessageType.Info, "----------------------------------------\n\n", testContext);

            if (exceptions.Any() && !OrderedTest.IsTestContext(testContext))
            {
                // Test Explorer prints better msgs with this hierarchy rather than using 1 AggregateException().
                throw new Exception(String.Join("; ", exceptions.Select(e => e.Message), new AggregateException(exceptions)));
            }

            return new OrderedTestResult
            {
                Count = tests.Count,
                Attempted = testsAttempted,
                Failures = exceptions.Count
            };
        }

        public static void WriteLine(TestMessageType type, string message, TestContext testContext)
        {
            if (OrderedTest.IsTestContext(testContext))
                (testContext as ITestContext).WriteLine(type, message);
            else
                testContext.WriteLine(message);
        }

        private static bool IsTestContext(TestContext testContext)
        {
            return testContext.GetType().GetInterface("NEntityDb.Test.Utility.ITestContext") != null;
        }
    }
}
