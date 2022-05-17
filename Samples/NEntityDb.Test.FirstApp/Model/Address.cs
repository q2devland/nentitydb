using System.Collections.Generic;

namespace NEntityDb.Test.FirstApp.Model
{
    public class Address
    {
        public int? Id { get; set; }
        public string Street { get; set; }
        public string PostalCode { get; set; }
        public string City { get; set; }
        public Country Country { get; set; }
        public bool? IsMain { get; set; }
        public Customer Customer { get; set; }
    }
}
