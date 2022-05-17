using System.Data;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace NEntityDb.Test.Oracle.Common
{
    [TestClass]
    public class ProcedureTest<TInstance> : NEntityDb.Unit.Test.Common.ProcedureTest<TInstance> where TInstance : NEntityDb.Data.Oracle.DbInstance, new()
    {       
    }
}
