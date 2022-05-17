using NEntityDb.Test.Model.Customers;
using System;
using System.Collections.Generic;

namespace NEntityDb.Test.Model.Billing
{
    public class Invoice: BaseEntity
    {
        public int? Id { get; set; }
        public string Number { get; set; }
        public DateTime? Date { get; set; }
        public bool? IsPaid { get; set; }        
        public Customer Customer { get; set; }
        public BlackList BlackList { get; set; }

        public List<InvoiceLine> Lines { get; set; }
    }
}
