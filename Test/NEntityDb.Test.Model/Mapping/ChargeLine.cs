
using System;
using System.Collections.Generic;

namespace NEntityDb.Test.Model.Mapping
{
    public class ChargeLine: BaseEntity
    {
        public int? Code { get; set; }
        public string Description { get; set; }
        public decimal? Amount { get; set; }
        public Charge Charge { get; set; }
    }
}
