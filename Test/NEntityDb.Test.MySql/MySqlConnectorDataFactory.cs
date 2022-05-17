extern alias MySqlConnectorAlias;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Text;

namespace NEntityDb.Test.MySql
{
    public class MySqlConnectorDataFactory: NEntityDb.Data.Common.DbDataFactory
    {
        public override DbConnection CreateConnection()
        {
            return MySqlConnectorAlias::MySqlConnector.MySqlConnectorFactory.Instance.CreateConnection();
        }

        public override DbCommand CreateCommand()
        {
            return MySqlConnectorAlias::MySqlConnector.MySqlConnectorFactory.Instance.CreateCommand();
        }

        public override DbParameter CreateParameter()
        {
            return MySqlConnectorAlias::MySqlConnector.MySqlConnectorFactory.Instance.CreateParameter();
        }

        public override DbDataAdapter CreateDataAdapter()
        {
            return MySqlConnectorAlias::MySqlConnector.MySqlConnectorFactory.Instance.CreateDataAdapter();
        }

        public override object GetParameterDbType(DbParameter parameter)
        {
            return (parameter as MySqlConnectorAlias::MySqlConnector.MySqlParameter).MySqlDbType;
        }

        public override void SetParameterDbType(DbParameter parameter, object dbType)
        {
            (parameter as MySqlConnectorAlias::MySqlConnector.MySqlParameter).MySqlDbType = (MySqlConnectorAlias::MySqlConnector.MySqlDbType)dbType;
        }
    }
}
