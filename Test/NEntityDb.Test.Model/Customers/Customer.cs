using NEntityDb.Test.Model.Billing;
using System;
using System.Collections.Generic;

namespace NEntityDb.Test.Model.Customers
{
    public class Customer: BaseEntity, IActive
    {
        public int? Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string TaxCode { get; set; }
        public bool? IsActive { get; set; }
        public string FullName { get; set; }
        public DateTime? BirthDate { get; set; }
        public DateTime? DeathDate { get; set; }
        public int? Points { get; set; }
        public DateTime? CreationDate { get; set; }

        public int? Age { get; set; }
        public decimal? PendingAmount { get; set; }

        public Address MainAddress { get; set; }
        public Address MainAddress2 { get; set; }

        public List<Address> Addresses { get; set; }
        public List<Invoice> Invoices { get; set; }
    }
}
