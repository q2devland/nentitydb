extern alias MySqlConnectorAlias;
using FirebirdSql.Data.FirebirdClient;
using IBM.Data.DB2.Core;
using Microsoft.Data.Sqlite;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MySql.Data.MySqlClient;
using NEntityDb.Model;
using NEntityDb.Unit.Test.Utility;
using Npgsql;
using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.SQLite;

namespace NEntityDb.Unit.Test
{
    public abstract class BaseTest<TInstance> where TInstance : NEntityDb.Data.Common.DbInstance, new()
    {
        protected const string SAMPLE_IMAGE_STRING_1 = "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\"><g id=\"iconPrimaryColor\"><circle cx=\"12\" cy=\"12\" r=\"3.2\"/><path d=\"M9 2L7.17 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2h-3.17L15 2H9zm3 15c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5z\"/><path d=\"M0 0h24v24H0z\" fill=\"none\"/></g></svg>";
        protected const string SAMPLE_IMAGE_STRING_2 = "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\"><g id=\"iconPrimaryColor\"><path d=\"M9 11H7v2h2v-2zm4 0h-2v2h2v-2zm4 0h-2v2h2v-2zm2-7h-1V2h-2v2H8V2H6v2H5c-1.11 0-1.99.9-1.99 2L3 20c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 16H5V9h14v11z\"/><path fill=\"none\" d=\"M0 0h24v24H0z\"/></g></svg>";

        protected void AssertNonEmptyValueResponse<T>(ScalarResponse<T> response) where T : class
        {
            Assert.IsNotNull(response);
            Assert.IsNotNull(response.Value);
        }

        protected virtual void AssertMoneyNotNull<T>(ScalarResponse<T> response) where T : class
        {
            this.AssertNonEmptyValueResponse<T>(response);
            if (typeof(NEntityDb.Data.Sqlite.DbInstance).IsAssignableFrom(typeof(TInstance)))
                Assert.IsTrue(response.Returns<double?>() != null);
            else
                Assert.IsTrue(response.Returns<decimal?>() != null);
        }

        protected virtual void AssertMoneyNotNull<T>(ProcedureResponse<T> response) where T : class
        {
            if (typeof(NEntityDb.Data.Sqlite.DbInstance).IsAssignableFrom(typeof(TInstance)))
                Assert.IsTrue(response.Returns<double?>() != null);
            else
                Assert.IsTrue(response.Returns<decimal?>() != null);
        }

        protected virtual void AssertDateNotNull<T>(ScalarResponse<T> response) where T : class
        {
            this.AssertNonEmptyValueResponse<T>(response);
            if (typeof(NEntityDb.Data.Sqlite.DbInstance).IsAssignableFrom(typeof(TInstance)))
                Assert.IsTrue(response.Returns<string>() != null);
            else
                Assert.IsTrue(response.Returns<DateTime?>() != null);
        }

        protected virtual void AssertCountNotNull<T>(ScalarResponse<T> response) where T : class
        {
            this.AssertNonEmptyValueResponse<T>(response);
            if (typeof(NEntityDb.Data.Oracle.DbInstance).IsAssignableFrom(typeof(TInstance)))
                Assert.IsTrue(response.Returns<decimal?>() != null);
            else if (typeof(NEntityDb.Data.MySql.DbInstance).IsAssignableFrom(typeof(TInstance))
                || typeof(NEntityDb.Data.PostgreSql.DbInstance).IsAssignableFrom(typeof(TInstance))
                || typeof(NEntityDb.Data.Sqlite.DbInstance).IsAssignableFrom(typeof(TInstance))
                || typeof(NEntityDb.Data.Firebird.DbInstance).IsAssignableFrom(typeof(TInstance)))
                Assert.IsTrue(response.Returns<long?>() != null);
            else
                Assert.IsTrue(response.Returns<int?>() != null);
        }

        protected virtual void AssertCount<T>(ScalarResponse<T> response, int count) where T : class
        {
            this.AssertNonEmptyValueResponse<T>(response);
            if (typeof(NEntityDb.Data.Oracle.DbInstance).IsAssignableFrom(typeof(TInstance)))
                Assert.IsTrue(response.Returns<decimal?>() == Dec.Parse(count));
            else if (typeof(NEntityDb.Data.MySql.DbInstance).IsAssignableFrom(typeof(TInstance))
                || typeof(NEntityDb.Data.PostgreSql.DbInstance).IsAssignableFrom(typeof(TInstance))
                || typeof(NEntityDb.Data.Sqlite.DbInstance).IsAssignableFrom(typeof(TInstance))
                || typeof(NEntityDb.Data.Firebird.DbInstance).IsAssignableFrom(typeof(TInstance)))
                Assert.IsTrue(response.Returns<long?>() == Long.Parse(count));
            else
                Assert.IsTrue(response.Returns<int?>() == count);
        }

        protected void AssertNonEmptyResponse<T>(EntityResponse<T> response) where T : class
        {
            Assert.IsNotNull(response);
            Assert.IsNotNull(response.Value);
        }

        protected void AssertNonEmptyResponse<T>(QueryResponse<T> response) where T: class
        {
            this.AssertNonEmptyWithoutPageResponse(response);
            Assert.IsNotNull(response.PageInfo);
            Assert.IsTrue(response.PageInfo.Total > 0);
        }

        protected void AssertEmptyResponse<T>(QueryResponse<T> response) where T : class
        {
            this.AssertEmptyWithoutPageResponse(response);
            Assert.IsNotNull(response.PageInfo);
            Assert.IsTrue(response.PageInfo.Total == 0);
        }

        protected void AssertNonEmptyWithoutPageResponse<T>(QueryResponse<T> response) where T : class
        {
            Assert.IsNotNull(response);
            Assert.IsNotNull(response.Values);
            Assert.IsTrue(response.Values.Count > 0);
        }

        protected void AssertEmptyWithoutPageResponse<T>(QueryResponse<T> response) where T : class
        {
            Assert.IsNotNull(response);
            Assert.IsNotNull(response.Values);
            Assert.IsTrue(response.Values.Count == 0);
        }

        protected void AssertNonEmptyResponse<T>(NonQueryResponse<T> response) where T : class
        {
            if (typeof(NEntityDb.Data.Oracle.DbInstance).IsAssignableFrom(typeof(TInstance))
                || typeof(NEntityDb.Data.Firebird.DbInstance).IsAssignableFrom(typeof(TInstance)))
                Assert.IsTrue(response.RowsAffected != 0);            
            else
                Assert.IsTrue(response.RowsAffected > 0);
        }

        protected void AssertEmptyResponse<T>(NonQueryResponse<T> response) where T : class
        {
            Assert.IsTrue(response.RowsAffected == 0);
        }

        protected void AssertNonEmptyValueResponse<T>(NonQueryResponse<T> response) where T : class
        {
            this.AssertNonEmptyResponse(response);
            Assert.IsNotNull(response.Value);
        }

        protected void AssertNonEmptyValuesResponse<T>(NonQueryResponse<T> response) where T : class
        {
            this.AssertNonEmptyResponse(response);
            Assert.IsNotNull(response.Values);
            Assert.IsNotNull(response.Values.Count > 1);
        }

        protected void AssertNonEmptyResponse<T>(ProcedureResponse<T> response) where T : class
        {
            Assert.IsNotNull(response);
            if (typeof(NEntityDb.Data.Oracle.DbInstance).IsAssignableFrom(typeof(TInstance))
                || typeof(NEntityDb.Data.PostgreSql.DbInstance).IsAssignableFrom(typeof(TInstance))
                || typeof(NEntityDb.Data.Db2.DbInstance).IsAssignableFrom(typeof(TInstance))
                || typeof(NEntityDb.Data.Firebird.DbInstance).IsAssignableFrom(typeof(TInstance)))
                Assert.IsTrue(response.RowsAffected != 0);
            else
                Assert.IsTrue(response.RowsAffected > 0);            
        }

        protected void AssertRowsAffected(int rowsAffected)
        {
            if (typeof(NEntityDb.Data.Oracle.DbInstance).IsAssignableFrom(typeof(TInstance))
                || typeof(NEntityDb.Data.PostgreSql.DbInstance).IsAssignableFrom(typeof(TInstance))
                || typeof(NEntityDb.Data.Db2.DbInstance).IsAssignableFrom(typeof(TInstance))
                || typeof(NEntityDb.Data.Firebird.DbInstance).IsAssignableFrom(typeof(TInstance)))
                Assert.IsTrue(rowsAffected != 0);
            else
                Assert.IsTrue(rowsAffected > 0);
        }

        protected void AssertNoRowsAffected(int rowsAffected)
        {
            Assert.IsTrue(rowsAffected == 0);
        }

        protected void AssertNonEmptyValuesResponse<T>(ProcedureResponse<T> response) where T : class
        {
            Assert.IsNotNull(response);
            Assert.IsNotNull(response.Values);
            Assert.IsTrue(response.Values.Count > 0);
        }

        protected virtual TInstance CreateDbInstance(System.Data.IDbConnection connection)
        {
            if (typeof(TInstance).IsSubclassOf(typeof(NEntityDb.Data.SqlServer.DbInstance)))
                return Reflector.CreateObject(Type.GetType("NEntityDb.Test.SqlServer.DbTestInstance, NEntityDb.Test.SqlServer"), new Dictionary<object, Type> { { connection, typeof(System.Data.IDbConnection) } }) as TInstance;
            else if (typeof(TInstance).IsSubclassOf(typeof(NEntityDb.Data.Oracle.DbInstance)))
                return Reflector.CreateObject(Type.GetType("NEntityDb.Test.Oracle.DbTestInstance, NEntityDb.Test.Oracle"), new Dictionary<object, Type> { { connection, typeof(System.Data.IDbConnection) } }) as TInstance;
            else if (typeof(TInstance).IsSubclassOf(typeof(NEntityDb.Data.PostgreSql.DbInstance)))
                return Reflector.CreateObject(Type.GetType("NEntityDb.Test.PostgreSql.DbTestInstance, NEntityDb.Test.PostgreSql"), new Dictionary<object, Type> { { connection, typeof(System.Data.IDbConnection) } }) as TInstance;
            else if (typeof(TInstance).IsSubclassOf(typeof(NEntityDb.Data.MySql.DbInstance)))
            {
                if (typeof(TInstance) == Type.GetType("NEntityDb.Test.MySql.DbTestMySqlConnectorInstance, NEntityDb.Test.MySql"))
                    return Reflector.CreateObject(Type.GetType("NEntityDb.Test.MySql.DbTestMySqlConnectorInstance, NEntityDb.Test.MySql"), new Dictionary<object, Type> { { connection, typeof(System.Data.IDbConnection) } }) as TInstance;
                else
                    return Reflector.CreateObject(Type.GetType("NEntityDb.Test.MySql.DbTestInstance, NEntityDb.Test.MySql"), new Dictionary<object, Type> { { connection, typeof(System.Data.IDbConnection) } }) as TInstance;
            }
            else if (typeof(TInstance).IsSubclassOf(typeof(NEntityDb.Data.Db2.DbInstance)))
                return Reflector.CreateObject(Type.GetType("NEntityDb.Test.Db2.DbTestInstance, NEntityDb.Test.Db2"), new Dictionary<object, Type> { { connection, typeof(System.Data.IDbConnection) } }) as TInstance;
            else if (typeof(TInstance).IsSubclassOf(typeof(NEntityDb.Data.Sqlite.DbInstance)))
            {
                if (typeof(TInstance) == Type.GetType("NEntityDb.Test.Sqlite.DbTestSqliteInstance, NEntityDb.Test.Sqlite"))
                    return Reflector.CreateObject(Type.GetType("NEntityDb.Test.Sqlite.DbTestSqliteInstance, NEntityDb.Test.Sqlite"), new Dictionary<object, Type> { { connection, typeof(System.Data.IDbConnection) } }) as TInstance;
                else
                    return Reflector.CreateObject(Type.GetType("NEntityDb.Test.Sqlite.DbTestInstance, NEntityDb.Test.Sqlite"), new Dictionary<object, Type> { { connection, typeof(System.Data.IDbConnection) } }) as TInstance;
            }
            else if (typeof(TInstance).IsSubclassOf(typeof(NEntityDb.Data.Firebird.DbInstance)))
                return Reflector.CreateObject(Type.GetType("NEntityDb.Test.Firebird.DbTestInstance, NEntityDb.Test.Firebird"), new Dictionary<object, Type> { { connection, typeof(System.Data.IDbConnection) } }) as TInstance;
            else
                throw new ArgumentException();
        }

        protected virtual System.Data.IDbConnection CreateConnection()
        {
            if (typeof(TInstance).IsSubclassOf(typeof(NEntityDb.Data.SqlServer.DbInstance)))
                return new SqlConnection(TestSettings.ConnectionString);
            else if (typeof(TInstance).IsSubclassOf(typeof(NEntityDb.Data.Oracle.DbInstance)))
                return new OracleConnection(TestSettings.ConnectionString);
            else if (typeof(TInstance).IsSubclassOf(typeof(NEntityDb.Data.PostgreSql.DbInstance)))
                return new NpgsqlConnection(TestSettings.ConnectionString);
            else if (typeof(TInstance).IsSubclassOf(typeof(NEntityDb.Data.MySql.DbInstance)))
            {
                if (typeof(TInstance) == Type.GetType("NEntityDb.Test.MySql.DbTestMySqlConnectorInstance, NEntityDb.Test.MySql"))
                    return new MySqlConnectorAlias::MySqlConnector.MySqlConnection(TestSettings.ConnectionString);
                else
                    return new MySqlConnection(TestSettings.ConnectionString);
            }
            else if (typeof(TInstance).IsSubclassOf(typeof(NEntityDb.Data.Db2.DbInstance)))
                return new DB2Connection(TestSettings.ConnectionString);
            else if (typeof(TInstance).IsSubclassOf(typeof(NEntityDb.Data.Sqlite.DbInstance)))
            {
                if (typeof(TInstance) == Type.GetType("NEntityDb.Test.Sqlite.DbTestSqliteInstance, NEntityDb.Test.Sqlite"))
                    return new SqliteConnection(TestSettings.ConnectionString);
                else
                    return new SQLiteConnection(TestSettings.ConnectionString);
            }
            else if (typeof(TInstance).IsSubclassOf(typeof(NEntityDb.Data.Firebird.DbInstance)))
                return new FbConnection(TestSettings.ConnectionString);
            else
                throw new ArgumentException();
        }
     
        protected virtual System.Data.IDbTransaction BeginTransaction(System.Data.IDbConnection connection)
        {
            return connection.BeginTransaction();
        }

        protected virtual void OpenConnection(System.Data.IDbConnection connection)
        {
            connection.Open();
        }

        protected byte[] SampleImage1
        {
            get
            {
                return System.Text.ASCIIEncoding.UTF8.GetBytes(SAMPLE_IMAGE_STRING_1);
            }
        }

        protected byte[] SampleImage2
        {
            get
            {
                return System.Text.ASCIIEncoding.UTF8.GetBytes(SAMPLE_IMAGE_STRING_2);
            }
        }

        protected string GetString(byte[] value)
        {
            return System.Text.ASCIIEncoding.UTF8.GetString(value);
        }

        public static byte[] GetSampleImage1()
        {
            return System.Text.ASCIIEncoding.UTF8.GetBytes(SAMPLE_IMAGE_STRING_1);
        }
    }
}
