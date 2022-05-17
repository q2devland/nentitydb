using NEntityDb.Data;
using NEntityDb.Data.Common;
using NEntityDb.Data.Model;
using NEntityDb.Model;
using NEntityDb.Model.Expressions;
using NEntityDb.Test.Data.Triggers;
using NEntityDb.Test.Model.Billing;
using NEntityDb.Test.Model.Organization;
using System.Data;

namespace NEntityDb.Test.Data.Model.Organization
{
    public class DbDepartment: DbEntity<Department>
    {
        public DbDepartment()
        {
            this.ToTable("Departments");

            this.Property(d => d.Id).ToColumn("DEP_Id").IsIdentity();
            this.Property(d => d.Name).ToColumn("DEP_Name");

            this.WithPrimaryKey(d => d.Id);

            this.Include<Employee>(e => e.Department, d => d.Employees);
        }
    }
}
