
namespace NEntityDb.Test.Model.Mapping
{
    public class Direction: BaseEntity
    {
        public int? Id { get; set; }
        public string Street { get; set; }
        public string PostalCode { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        public Client Client { get; set; }
    }
}
