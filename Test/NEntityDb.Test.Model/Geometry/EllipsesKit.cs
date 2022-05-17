namespace NEntityDb.Test.Model.Geometry
{
    public class EllipsesKit: BaseEntity
    {
        public int? Id { get; set; }
        public string Name { get; set; }
        public Ellipse Ellipse1 { get; set; }
        public Ellipse Ellipse2 { get; set; }
        public Ellipse Ellipse3 { get; set; }
    }
}
