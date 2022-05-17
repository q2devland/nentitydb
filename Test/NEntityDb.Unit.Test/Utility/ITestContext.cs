
namespace NEntityDb.Unit.Test.Utility
{
    public enum TestMessageType
    {      
        Info = 1,
        Success = 2,
        Failure = 3,
    }

    public interface ITestContext
    {
        void WriteLine(TestMessageType type, string format, params object[] args);
        void WriteLine(TestMessageType type, string message);
    }
}
