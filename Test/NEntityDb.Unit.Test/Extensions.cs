using NEntityDb.Data.Model;
using NEntityDb.Test.Data.Model.Application;
using NEntityDb.Test.Data.Model.Billing;
using NEntityDb.Test.Data.Model.Customers;
using NEntityDb.Test.Data.Model.Geometry;
using NEntityDb.Test.Data.Model.Suppliers;
using NEntityDb.Test.Data.Model.Organization;
using NEntityDb.Data;
using System;
using System.Threading.Tasks;
using NEntityDb.Model;

namespace NEntityDb.Unit.Test
{
    public static class Extensions
    {
        public static void AddModel(this DbModelBuilder builder, string defaultSchema = null, bool withTPH = false)
        {
            builder.WithDefaultSchema(defaultSchema)
                .Add(new DbCustomer(), 
                    new DbAddress(),
                    new DbCountry(),
                    new DbBlackList(),
                    new DbInvoice(),
                    new DbInvoiceLine(),
                    new DbSupplier(),
                    new DbUser(),
                    new DbShapeOptions(),
                    withTPH ? (IDbEntity)new DbShapeTPH(): new DbShape(),
                    withTPH ? (IDbEntity)new DbPolygonTPH() : new DbPolygon(),
                    withTPH ? (IDbEntity)new DbCurvedTPH() : new DbCurved(),
                    withTPH ? (IDbEntity)new DbEllipseTPH() : new DbEllipse(),
                    withTPH ? (IDbEntity)new DbCircleTPH() : new DbCircle(),
                    new DbEllipsesKit(),
                    new DbCompany(),
                    new DbDepartment(),
                    new DbEmployee());
        }

        public static void AddTestSqlListener(this IDbSettings settings)
        {
            settings.EnableSqlLogging = true;
            settings.EnableSqlParameterLogging = true;

            settings.AddSqlListener("TestSqlListener", sql =>
            {
                Console.WriteLine(sql);
                return Task.CompletedTask;
            });
        }

        public static TRequest WithTag<TRequest>(this TRequest request, object value, string tag, int? index = null) where TRequest : IRequest
        {
            string suffix = index == null ? String.Empty : $"-{index}";
            request.Tag = $"{value.GetType().Name.Replace("`", "-")}.{tag}{suffix}";
            return request;
        }
    }
}
