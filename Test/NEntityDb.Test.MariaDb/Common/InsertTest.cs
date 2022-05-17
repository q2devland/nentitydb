using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Test.Model.Application;
using NEntityDb.Test.Model.Suppliers;
using Newtonsoft.Json;

namespace NEntityDb.Test.MariaDb.Common
{
    [TestClass]
    public class InsertTest: NEntityDb.Test.Common.InsertTest<DbTestInstance>
    {
    }
}
