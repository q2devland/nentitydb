using Microsoft.Extensions.Configuration;

namespace NEntityDb.Unit.Test.Utility
{
    public class TestSettings
    {
        private static bool IsInitialized { get; set; } = false;
        private static IConfigurationRoot Config { get; set; }

        private static void InitializeConfiguration(string path)
        {
            TestSettings.Config = new ConfigurationBuilder()
                .AddJsonFile(path)
                .Build();
            TestSettings.IsInitialized = true;
        }

        public static void LoadFrom(string path)
        {
            TestSettings.InitializeConfiguration(path);
        }

        public static IConfigurationRoot GetConfiguration()
        {
            if (!TestSettings.IsInitialized)
                throw new System.Exception("Configuration is not loaded");

            return TestSettings.Config;
        }

        public static string ConnectionString 
        {
            get
            {
                return TestSettings.GetConfiguration()["connectionString"];
            }
        }

        public static string Schema
        {
            get
            {
                return TestSettings.GetConfiguration()["schema"];
            }
        }

        public static string CommentSymbol
        {
            get
            {
                return TestSettings.GetConfiguration()["commentSymbol"];
            }
        }

        public static string SchemaScript
        {
            get
            {
                return TestSettings.GetConfiguration()["schemaScript"];
            }
        }

        public static string DataScript
        {
            get
            {
                return TestSettings.GetConfiguration()["dataScript"];
            }
        }

        public static string License
        {
            get
            {
                return TestSettings.GetConfiguration()["license"];
            }
        }
    }
}
