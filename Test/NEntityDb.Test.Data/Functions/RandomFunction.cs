
using NEntityDb.Data;
using NEntityDb.Data.Model;
using System;
using System.Linq;
using System.Linq.Expressions;

namespace NEntityDb.Test.Data.Functions
{
    public class RandomFunction: IDbFunction
    {
        public RandomFunction()
        {
        }

        public RandomFunction(int start, int end)
        {
        }

        public string Resolve(IDbComputedArguments args, params DbFunctionParameter[] parameters)
        {
            string start = parameters.First().Value.ToString();
            string end = parameters.Last().Value.ToString();

            if (args.Instance is NEntityDb.Data.SqlServer.DbInstance)
                return $"FLOOR(RAND(CHECKSUM(NEWID()))*({end} - {start} + 1) + {start})";            
            else if (args.Instance is NEntityDb.Data.Oracle.DbInstance)
                return $"FLOOR(dbms_random.value({start}, {end}))";
            else if (args.Instance is NEntityDb.Data.MySql.DbInstance
                || args.Instance is NEntityDb.Data.Firebird.DbInstance
                || args.Instance is NEntityDb.Data.Db2.DbInstance)
                return $"ROUND((RAND() * ({end} - {start})) + {start})";
            else if (args.Instance is NEntityDb.Data.PostgreSql.DbInstance)
                return $"CAST(RANDOM() * ({end} - {start}) + {start} AS int)";
            else if (args.Instance is NEntityDb.Data.Sqlite.DbInstance)
                return $"ABS(RANDOM()) % ({end} - {start}) + {start}";
            else
                throw new NotImplementedException();
        }
    }
}
