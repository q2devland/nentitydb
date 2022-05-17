using NEntityDb.Test.Model.Billing;
using System;
using System.Collections.Generic;

namespace NEntityDb.Test.Model.Customers
{
    public class BlackList: BaseEntity
    {
        public int? Year { get; set; }
        public string Email { get; set; }
        public decimal? Amount { get; set; }
    }
}
