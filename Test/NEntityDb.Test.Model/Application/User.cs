
namespace NEntityDb.Test.Model.Application
{
    public class User: BaseEntity, IActive
    {
        public int? Id { get; set; }
        public string FullName { get; set; }
        public string Username { get; set; }
        public UserSettings Settings { get; set; }
        public bool? IsActive { get; set; }
    }
}
