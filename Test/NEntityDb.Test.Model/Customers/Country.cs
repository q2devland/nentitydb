using System.Collections.Generic;

namespace NEntityDb.Test.Model.Customers
{
    public class Country: BaseEntity
    {
        public int? Id { get; set; }
        public string Name { get; set; }
        public List<Address> Addresses { get; set; }
    }
}
