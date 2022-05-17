using NEntityDb.Data;
using NEntityDb.Data.Context;
using NEntityDb.Data.Model;
using NEntityDb.Linq;
using NEntityDb.Model;
using NEntityDb.Model.Expressions;
using NEntityDb.Test.Data.Model.Customers;
using NEntityDb.Test.Model.Application;
using NEntityDb.Test.Model.Customers;
using NEntityDb.Test.Model.Geometry;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;

namespace NEntityDb.Test.Data.Model
{
    public static class Extensions
    {        
        public static DbColumn IsJson(this DbColumn column)
        {
            return column.WithConversion<string>((object value) =>
            {
                if (value != null)
                    return JsonConvert.SerializeObject(value);
                else
                    return DBNull.Value;
            }, (object value, Type type) =>
            {
                if (value != null && value != DBNull.Value)
                    return JsonConvert.DeserializeObject(Str.Parse(value), type);
                else
                    return null;
            });            
        }

        public static DbColumn IsCharBoolean(this DbColumn column)
        {
            return column.WithConversion<char>((object value, Type type, DbColumn dbColumn, IDbStatementContext context, IDbInstance instance) =>
            {
                if (value != null)
                {
                    return Bool.Parse(value) ? 'Y' : 'N';
                }
                else
                    return DBNull.Value;
            }, (object value, Type type, DbColumn dbColumn, IDbStatementContext context, IDbInstance instance) =>
            {
                if (value != null && value != DBNull.Value)
                    return Chr.Parse(value) == 'Y' ? true : false;
                else
                    return null;
            });
        }      

        public static void AddShapeTPHTriggers<T>(this DbEntity<T> entity, params ShapeType[] shapeTypes) where T: class
        {
            entity.WithTrigger((IDbSelectContext context) =>
            {
                if (context.RequestType == typeof(T))
                {
                    if (shapeTypes.Length > 1)
                        context.AddFilter(Filter.From<Shape>(context.Id, p => p.Type.In(shapeTypes)));
                    else
                        context.AddFilter(Filter.From<Shape>(context.Id, p => p.Type == shapeTypes.First()));
                }
            }).OnBeforeSelect();

            if (shapeTypes.Length == 1)
            {
                entity.WithTrigger((IDbInsertContext context) =>
                {
                    context.PropertyValueProvider.SetValue<Shape>(p => p.Type, shapeTypes.First());
                }).OnBeforeInsert();

                entity.WithTrigger((IDbUpdateContext context) =>
                {
                    context.AddFilter(Filter.From<Shape>(context.Id, p => p.Type == shapeTypes.First()));
                }).OnBeforeUpdate();

                entity.WithTrigger((IDbDeleteContext context) =>
                {
                    context.AddFilter(Filter.From<Shape>(context.Id, p => p.Type == shapeTypes.First()));
                }).OnBeforeDelete();
            }
        }
    }
}
