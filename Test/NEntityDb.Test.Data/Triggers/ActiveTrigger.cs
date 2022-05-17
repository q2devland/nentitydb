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
    public class ActiveTrigger: DbTrigger
    {
        public override void OnBeforeSelect(IDbSelectContext context)
        {
            if (!context.ContainsRequestParameter("ignoreActiveCheck") || !context.GetRequestParameter<bool>("ignoreActiveCheck"))
                context.AddFilter(Filter.From<IActive>(context.Id, a => a.IsActive.Value));
        }

        public override void OnBeforeInsert(IDbInsertContext context)
        {
            context.PropertyValueProvider.SetValue<IActive>(a => a.IsActive, true);
        }

        public override void OnBeforeUpdate(IDbUpdateContext context)
        {
            context.AddFilter(Filter.From<IActive>(context.Id, a => a.IsActive.Value));
        }

        public override bool OnInsteadOfDelete(IDbDeleteContext context)
        {
            INonQueryRequest request = QueryBuilder.NonQueryRequestFromType(context.RequestType);
            request.SetPropertyValue<IActive>(a => a.IsActive, false);
            request.AddFilter(context.Filter);
            request.Tag = context.Tag;

            context.RowsAffected = this.Instance.UpdateData(request).RowsAffected;
            return true;
        }       
    }
}
