
using System.Collections.Generic;

namespace NEntityDb.Test.Model.Mapping
{
    public class Client: BaseEntity
    {
        public int? Code { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string TaxId { get; set; }
        public string Mail { get; set; }
        public int? AddressesCount { get; set; }
        public int? Age { get; set; }
        public Direction MainDirection { get; set; }
        public List<Direction> Directions { get; set; }
        public List<Charge> Charges { get; set; }
    }
}
