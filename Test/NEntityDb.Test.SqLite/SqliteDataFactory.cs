using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Text;

namespace NEntityDb.Test.Sqlite
{
    public class SqliteDataFactory: NEntityDb.Data.Common.DbDataFactory
    {
        public override DbConnection CreateConnection()
        {
            return SqliteFactory.Instance.CreateConnection();
        }

        public override DbCommand CreateCommand()
        {
            return SqliteFactory.Instance.CreateCommand();
        }

        public override DbParameter CreateParameter()
        {
            return SqliteFactory.Instance.CreateParameter();
        }

        public override DbDataAdapter CreateDataAdapter()
        {
            return SqliteFactory.Instance.CreateDataAdapter();
        }

        public override object GetParameterDbType(DbParameter parameter)
        {
            return (parameter as SqliteParameter).SqliteType;
        }

        public override void SetParameterDbType(DbParameter parameter, object dbType)
        {
            (parameter as SqliteParameter).SqliteType = (SqliteType)dbType;
        }
    }
}
