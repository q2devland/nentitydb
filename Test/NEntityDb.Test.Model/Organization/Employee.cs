using System.Collections.Generic;

namespace NEntityDb.Test.Model.Organization
{
    public class Employee: BaseEntity
    {
        public int? Id { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public Department Department { get; set; }
    }
}
