
using NEntityDb.Data;
using NEntityDb.Data.Model;
using System;
using System.Linq;
using System.Linq.Expressions;

namespace NEntityDb.Test.FirstApp.Data
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

            //SqlServer,MySql,PostgreSql
            return $"CONCAT({String.Join(", ", values)})";
            //Oracle,Sqlite,Firebird
            //return String.Join(" || ", values);
            //Db2
            //return String.Join(" CONCAT ", values);
            //throw new NotImplementedException("Uncomment the specific concatenation code");
        }
    }
}
