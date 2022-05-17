using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Data;
using NEntityDb.Data.Firebird;
using NEntityDb.Test.Model.Application;
using NEntityDb.Test.Model.Suppliers;
using Newtonsoft.Json;

namespace NEntityDb.Test.Firebird.Common
{
    [TestClass]
    public class InsertTest<TInstance>: NEntityDb.Unit.Test.Common.InsertTest<TInstance> where TInstance : NEntityDb.Data.Firebird.DbInstance, new()
    {
        protected override void OnBatchTestDbInstanceCreated(IDbInstance instance)
        {
            base.OnBatchTestDbInstanceCreated(instance);
            instance.Settings.MaxStatementsForBlock(75);
        }
    }
}
