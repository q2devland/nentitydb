using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Unit.Test.Utility;
using System;
using System.Collections.Generic;
using System.IO;

namespace NEntityDb.Test.App
{  
    public class AppTestContext: TestContext, ITestContext
    {
        private List<string> ResultFiles { get; set; } = new List<string>();

        public override System.Collections.IDictionary Properties { get; }

        public override string ResultsDirectory
        {
            get
            {
                return Environment.CurrentDirectory;
            }
        }

        public override string TestLogsDir
        {
            get
            {
                return Environment.CurrentDirectory;
            }
        }

        public override string TestDeploymentDir
        {
            get
            {
                return Environment.CurrentDirectory;
            }
        }

        public override string TestDir
        {
            get
            {
                return Environment.CurrentDirectory;
            }
        }

        public override string TestResultsDirectory
        {
            get
            {
                return Environment.CurrentDirectory;
            }
        }

        public override string TestRunResultsDirectory
        {
            get
            {
                return Environment.CurrentDirectory;
            }
        }
        public override string DeploymentDirectory
        {
            get
            {
                return Environment.CurrentDirectory;
            }
        }

        public override string TestRunDirectory
        {
            get
            {
                return Environment.CurrentDirectory;
            }
        }

        public override void AddResultFile(string fileName)
        {
            this.ResultFiles.Add(fileName);
        }

        public void ClearResultFiles()
        {
            this.ResultFiles.Clear();
        }

        public override void Write(string format, params object[] args)
        {
            this.Write(String.Format(format, args));
        }

        public override void Write(string message)
        {
            Console.Write(message);
            this.ResultFiles.ForEach(f =>
            {
                File.AppendAllTextAsync(f, message);
            });
        }

        public override void WriteLine(string format, params object[] args)
        {
            this.WriteLine(String.Format(format, args));
        }

        public override void WriteLine(string message)
        {
            Console.WriteLine(message);
            this.ResultFiles.ForEach(f =>
            {
                File.AppendAllTextAsync(f, message);
            });
        }

        public void WriteLine(TestMessageType type, string format, params object[] args)
        {
            this.WriteLine(type, String.Format(format, args));
        }

        public void WriteLine(TestMessageType type, string message)
        {
            Console.ForegroundColor = this.GetForegroundColor(type);
            this.WriteLine(message);
            Console.ResetColor();
        }

        private ConsoleColor GetForegroundColor(TestMessageType type)
        {
            switch (type)
            {
                case TestMessageType.Failure:
                    return ConsoleColor.Red;
                case TestMessageType.Info:
                    return ConsoleColor.Cyan;
                case TestMessageType.Success:
                    return ConsoleColor.Green;
                default:
                    return ConsoleColor.White;
            }
        }
    }
}
