
using NEntityDb.Data.PostgreSql;
using NEntityDb.Data.Model;
using System;
using System.Data;
using NEntityDb.Data;

namespace NEntityDb.Test.PostgreSql
{
    public class DbTestInstance11: DbTestInstance
    {
        protected override void OnConfiguring(IDbSettings settings)
        {
            base.OnConfiguring(settings);

            this.Settings.UseFunctionsAsProcedures();
        }
    }
}
