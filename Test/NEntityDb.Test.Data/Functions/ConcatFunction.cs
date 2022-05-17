
using NEntityDb.Data;
using NEntityDb.Data.Model;
using System;
using System.Linq;
using System.Linq.Expressions;

namespace NEntityDb.Test.Data.Functions
{
    public class ConcatFunction: IDbFunction
    {
        public ConcatFunction()
        {
        }

        public ConcatFunction(params object[] parameters)
        {
        }

        public string Resolve(IDbComputedArguments args, params DbFunctionParameter[] parameters)
        {
            string[] values = parameters.Select(p => p.Value.ToString()).ToArray();

            if (args.Instance is NEntityDb.Data.SqlServer.DbInstance
               || args.Instance is NEntityDb.Data.MySql.DbInstance
               || args.Instance is NEntityDb.Data.PostgreSql.DbInstance)
                return $"CONCAT({String.Join(", ", values)})";
            else if (args.Instance is NEntityDb.Data.Oracle.DbInstance
                || args.Instance is NEntityDb.Data.Sqlite.DbInstance
                || args.Instance is NEntityDb.Data.Firebird.DbInstance)
                return String.Join(" || ", values);
            else if (args.Instance is NEntityDb.Data.Db2.DbInstance)
                return String.Join(" CONCAT ", values);
            else
                throw new NotImplementedException();
        }
    }
}
