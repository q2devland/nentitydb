using NEntityDb.Data;
using NEntityDb.Data.Common;
using NEntityDb.Data.Context;
using NEntityDb.Model;
using NEntityDb.Test.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NEntityDb.Test.Data.Triggers
{
    public class ActiveAsyncTrigger: DbAsyncTrigger
    {
        public override async Task<bool> OnInsteadOfDeleteAsync(IDbDeleteContext context)
        {
            INonQueryRequest request = QueryBuilder.NonQueryRequestFromType(context.RequestType);
            request.SetPropertyValue<IActive>(a => a.IsActive, false);
            request.AddFilter(context.Filter);
            request.Tag = context.Tag;

            context.RowsAffected = (await this.Instance.UpdateDataAsync(request)).RowsAffected;
            return true;
        }
    }
}
