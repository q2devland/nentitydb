
using System;
using System.Collections.Generic;

namespace NEntityDb.Test.Model.Mapping
{
    public class Charge: BaseEntity
    {
        public int? Code { get; set; }
        public string Number { get; set; }
        public DateTime? Date { get; set; }
        public bool? IsPaid { get; set; }
        public Client Client { get; set; }

        public List<ChargeLine> Lines { get; set; }
    }
}
