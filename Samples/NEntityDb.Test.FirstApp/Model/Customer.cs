using System;
using System.Collections.Generic;

namespace NEntityDb.Test.FirstApp.Model
{
    public class Customer
    {
        public int? Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public DateTime? CreationDate { get; set; }

        public string FullName { get; set; }
        public Address MainAddress { get; set; }

        public List<Address> Addresses { get; set; }
    }
}
