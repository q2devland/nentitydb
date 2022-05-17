
using NEntityDb.Data;
using NEntityDb.Data.Model;
using System;
using System.Linq;
using System.Linq.Expressions;

namespace NEntityDb.Test.Data.Functions
{
    public class GetAgeFunction: IDbFunction
    {
        public GetAgeFunction()
        {
        }

        public GetAgeFunction(object birthDate, object deathDate)
        {
        }

        public string Resolve(IDbComputedArguments args, params DbFunctionParameter[] parameters)
        {
            string birthDateValue = parameters.First().Value.ToString();
            string deathDateValue = parameters.Last().Value.ToString();

            return args.GetFunctionSql("df_GetAge", birthDateValue, deathDateValue);
        }
    }
}
