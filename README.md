# NEntityDb (.NET ORM)

NEntityDb is a modern object-database mapper for .NET that enables developers to work with a database using .NET objects, and eliminating the need for most of the data-access code they usually need to write.

NEntityDb works with many databases, including Microsoft SQL Server, Oracle Database, IBM Db2, MySQL, MariaDB, Percona Server, PostgreSQL, SQLite and Firebird.

Please find all the details on <a href="https://nentitydb.com">nentitydb.com</a>

NEntityDb is available for purchase <a href="https://nentitydb.com/pages/pricing">here</a>.

## Create a model

With NEntityDb you can use Fluent APIs to configure your model. Using Fluent APIs in NEntityDb makes code readability easier.

### Create a model
Define the entity classes that make up the model.

```csharp
public class Customer
{
    public int? Id { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string TaxCode { get; set; }
    public string Email { get; set; }
    public bool? IsActive { get; set; }
    public DateTime? BirthDate { get; set; }
    public DateTime? DeathDate { get; set; }
    public int? Points { get; set; }
    public DateTime? CreationDate { get; set; }
}
```

### Configure a model
Use fluent API to configure the model.

```csharp
public class DbCustomer: DbEntity<Customer>;
{
    public DbCustomer()
    {
        this.ToTable("Customers");

        this.Property(c => c.Id).ToColumn("CUS_Id").IsIdentity();
        this.Property(c => c.FirstName).ToColumn("CUS_FirstName");
        this.Property(c => c.LastName).ToColumn("CUS_LastName");
        this.Property(c => c.TaxCode).ToColumn("CUS_TaxCode");
        this.Property(c => c.Email).ToColumn("CUS_Email");
        this.Property(c => c.IsActive).ToColumn("CUS_IsActive");
        this.Property(c => c.BirthDate).ToColumn("CUS_BirthDate");
        this.Property(c => c.DeathDate).ToColumn("CUS_DeathDate");
        this.Property(c => c.Points).ToColumn("CUS_Points");
        this.Property(c => c.CreationDate).ToColumn("CUS_CreationDate");
        
        this.WithPrimaryKey(c => c.Id);
    }
}
```

For more information about creating a model, see <a href="https://nentitydb.com/pages/docs/create-a-model/overview.html">Create a model</a>

## Query and save data

NEntityDb uses .NET LINQ Expressions to query and save data from database. The .NET LINQ Expressions enables language-level code expressions to be represented as objects in the form of expression trees.

## How do I get NEntityDb?

NEntityDb is available for purchase <a href="https://nentitydb.com/pages/pricing">here</a>.
