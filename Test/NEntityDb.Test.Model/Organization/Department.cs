using System.Collections.Generic;

namespace NEntityDb.Test.Model.Organization
{
    public class Department: BaseEntity
    {
        public int? Id { get; set; }
        public string Name { get; set; }
        public List<Employee> Employees { get; set; }
    }
}
