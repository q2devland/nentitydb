
using NEntityDb.Data;
using NEntityDb.Data.Model;
using System;
using System.Linq;
using System.Linq.Expressions;

namespace NEntityDb.Test.Data.Functions
{
    public class YearFunction: IDbFunction
    {
        public YearFunction()
        {
        }

        public YearFunction(object date)
        {
        }

        public string Resolve(IDbComputedArguments args, params DbFunctionParameter[] parameters)
        {
            string date = parameters.First().Value.ToString();

            if (args.Instance is NEntityDb.Data.SqlServer.DbInstance
                || args.Instance is NEntityDb.Data.MySql.DbInstance
                || args.Instance is NEntityDb.Data.Db2.DbInstance)
                return $"YEAR({date})";
            else if (args.Instance is NEntityDb.Data.Oracle.DbInstance
                || args.Instance is NEntityDb.Data.Firebird.DbInstance)
                return $"EXTRACT(year FROM {date})";
            else if (args.Instance is NEntityDb.Data.PostgreSql.DbInstance)
                return $"EXTRACT(YEAR FROM CAST({date} AS DATE))";
            else if (args.Instance is NEntityDb.Data.Sqlite.DbInstance)
                return $"strftime('%Y', {date})";            
            else
                throw new NotImplementedException();
        }
    }
}
