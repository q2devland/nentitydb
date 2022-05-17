using System.Collections.Generic;

namespace NEntityDb.Test.FirstApp.Model
{
    public class Country
    {
        public int? Id { get; set; }
        public string Name { get; set; }

        public List<Address> Addresses { get; set; }
    }
}
