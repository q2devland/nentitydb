using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Test.Model.Application;
using NEntityDb.Test.Model.Suppliers;
using Newtonsoft.Json;

namespace NEntityDb.Test.Oracle
{
    [TestClass]
    public class InsertTestWithTriggers<TInstance> : NEntityDb.Unit.Test.Common.InsertTest<TInstance> where TInstance : NEntityDb.Data.Oracle.DbInstance, new()
    {
    }
}
