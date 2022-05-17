using NEntityDb.Data;
using NEntityDb.Data.Common;
using NEntityDb.Data.Model;
using NEntityDb.Model;
using NEntityDb.Model.Expressions;
using NEntityDb.Test.Data.Triggers;
using NEntityDb.Test.Model.Application;
using NEntityDb.Test.Model.Billing;
using NEntityDb.Test.Model.Customers;
using NEntityDb.Test.Model.Suppliers;
using System;

namespace NEntityDb.Test.Data.Model.Application
{
    public class DbUser: DbEntity<User>
    {
        public DbUser()
        {
            this.ToTable("Users");

            this.Property(u => u.Id).ToColumn("USR_Id").IsIdentity();
            this.Property(u => u.FullName).ToColumn("USR_FullName");
            this.Property(u => u.Username).ToColumn("USR_Username");
            this.Property(u => u.Settings).ToColumn("USR_Settings").IsJson();
            this.Property(u => u.IsActive).ToColumn("USR_IsActive").IsCharBoolean();
            //this.Property(u => u.IsActive).ToColumn("USR_IsActive").WithConversion<char>(
            //    value => (bool)value ? 'Y' : 'N',
            //    value => (char)value == 'Y' ? true : false);

            this.WithPrimaryKey(u => u.Id);

            this.WithTrigger<ActiveTrigger>(t => t.OnBeforeSelect).OnBeforeSelect();
            this.WithTrigger<ActiveTrigger>(t => t.OnBeforeInsert).OnBeforeInsert();
            this.WithTrigger<ActiveTrigger>(t => t.OnBeforeUpdate).OnBeforeUpdate();
            
            this.WithAsyncTrigger<ActiveAsyncTrigger>().OnInsteadOfDelete();
        }
    }
}
