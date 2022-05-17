namespace NEntityDb.Test.Model.Geometry
{
    public enum ShapeType
    {
        Polygon = 1,
        Circle = 2,
        Ellipses = 3
    }

    public class Shape: BaseEntity
    {
        public int? Id { get; set; }
        public string Name { get; set; }
        public ShapeOptions Options { get; set; }
        public ShapeType Type { get; set; }
    }
}
