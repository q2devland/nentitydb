using System.Collections.Generic;

namespace NEntityDb.Test.Model.Customers
{
    public class Address: BaseEntity
    {
        public int? Id { get; set; }
        public string Street { get; set; }
        public string PostalCode { get; set; }
        public string City { get; set; }
        public Country Country { get; set; }
        public bool? IsMain { get; set; }
        public Customer Customer { get; set; }
        public string FullAddress { get; set; }
        public string ContactInfo { get; set; }
    }
}
