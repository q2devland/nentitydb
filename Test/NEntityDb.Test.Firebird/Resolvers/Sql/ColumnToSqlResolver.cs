using NEntityDb.Data;
using NEntityDb.Data.Context;
using NEntityDb.Model;
using NEntityDb.Test.Model.Application;
using System;
using System.Collections.Generic;
using System.Text;

namespace NEntityDb.Test.Firebird.Resolvers
{
    public class ColumnToSqlResolver : NEntityDb.Data.Common.Resolvers.ColumnToSqlResolver
    {
        protected override string GetColumnPath(IDbColumnContext column, IDbStatementContext context, List<IDbStatementContext> allContext, bool useTableAlias)
        {
            string path = base.GetColumnPath(column, context, allContext, useTableAlias);
            if (context is IDbSelectContext && context.Owner is IDbInsertContext && column.Property.SourceProperty != null)
            {
                if (column.Property.SourceProperty.Name == Property.GetPropertyName<User>(u => u.Settings))
                    path = $"CAST ({path} AS VARCHAR(5000))";
                else if (column.Property.SourceProperty.Name == Property.GetPropertyName<User>(u => u.IsActive))
                    path = $"CAST ({path} AS CHAR(1))";
            }

            return path;
        }
    }
}
