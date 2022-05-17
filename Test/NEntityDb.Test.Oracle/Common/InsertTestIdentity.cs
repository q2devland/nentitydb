using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace NEntityDb.Test.Oracle
{
    [TestClass]
    public class InsertTestIdentity<TInstance>: NEntityDb.Unit.Test.Common.InsertTest<TInstance> where TInstance : NEntityDb.Data.Oracle.DbInstance, new()
    {
    }
}
