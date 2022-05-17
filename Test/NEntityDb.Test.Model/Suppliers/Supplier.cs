using NEntityDb.Test.Model.Billing;
using System;
using System.Collections.Generic;

namespace NEntityDb.Test.Model.Suppliers
{
    public class Supplier: BaseEntity
    {
        public int? Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string TaxCode { get; set; }
    }
}
