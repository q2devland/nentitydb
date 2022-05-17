
namespace NEntityDb.Test.Model.Application
{
    public class UserSettings: BaseEntity
    {
        public string Locale { get; set; }
        public int? Theme { get; set; }
        public string ContactMethod { get; set; }
    }
}
