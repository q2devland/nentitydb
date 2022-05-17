using System;
using System.Collections.Generic;

namespace NEntityDb.Test.Model.Billing
{
    public class InvoiceLine: BaseEntity
    {
        public int? Id { get; set; }
        public string Concept { get; set; }
        public decimal? Amount { get; set; }
        public Invoice Invoice { get; set; }
    }
}
