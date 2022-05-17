
using NEntityDb.Data;
using NEntityDb.Data.Model;
using System;
using System.Linq;
using System.Linq.Expressions;

namespace NEntityDb.Test.Data.Functions
{
    public class SumFunction: IDbFunction
    {
        public SumFunction()
        {
        }

        public SumFunction(object value1, object value2)
        {
        }

        public string Resolve(IDbComputedArguments args, params DbFunctionParameter[] parameters)
        {
            string value1 = parameters.First().Value.ToString();
            string value2 = parameters.Last().Value.ToString();

            return $"{value1} + {value2}";
        }
    }
}
