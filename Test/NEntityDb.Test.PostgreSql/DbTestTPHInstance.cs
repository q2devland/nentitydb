﻿using NEntityDb.Unit.Test;
using NEntityDb.Data;
using NEntityDb.Data.Model;
using NEntityDb.Unit.Test.Utility;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace NEntityDb.Test.PostgreSql
{
    public class DbTestTPHInstance : DbTestInstance
    {
        public DbTestTPHInstance(): base()
        {
        }

        public DbTestTPHInstance(System.Data.IDbConnection connection) : base(connection)
        {
        }
       
        protected override void OnModelCreating(DbModelBuilder builder)
        {
            builder.AddModel(TestSettings.Schema, true);
        }        
    }
}
