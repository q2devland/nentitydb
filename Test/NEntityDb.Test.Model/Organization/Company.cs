using System;
using System.Collections.Generic;
using System.Text;

namespace NEntityDb.Test.Model.Organization
{
    public class Company: BaseEntity
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public byte[] Logo { get; set; }
    }
}
