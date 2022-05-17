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
    public class DbEmployee : DbEntity<Employee>
    {
        public DbEmployee()
        {
            this.ToTable("Employees");

            this.Property(e => e.Id).ToColumn("EMP_Id").IsIdentity();
            this.Property(e => e.FullName).ToColumn("EMP_FullName");
            this.Property(e => e.Email).ToColumn("EMP_Email");
            this.Property(e => e.PhoneNumber).ToColumn("EMP_PhoneNumber");
            this.Property(e => e.Department.Id).ToColumn("DEP_Id");

            this.WithPrimaryKey(e => e.Id);

            this.WithForeignKey<Department>(e => e.Department).IsNotNull();
        }
    }
}
