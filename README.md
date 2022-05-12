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
    
    public int? Age { get; set; }
    public decimal? PendingAmount { get; set; }
    public Address MainAddress { get; set; }
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
        
        //Computed data
        this.Property(c => c.Age).Is<Customer>(c => new GetAgeFunction(c.BirthDate, c.DeathDate));
        this.Property(c => c.PendingAmount).Is<Customer>(c => new QueryRequest<InvoiceLine>()
                .Select(l => l.Amount.Sum())
                .Where(l => !l.Invoice.IsPaid.Value && l.Invoice.Customer.Id == c.Id));                
        this.WithForeignKey<Address>(c => c.MainAddress).Is<Customer, Address>((c, a) => c.Id == a.Customer.Id && a.IsMain.Value);
                
        this.WithPrimaryKey(c => c.Id);
    }
}
```

For more information about creating a model, see <a href="https://nentitydb.com/pages/docs/create-a-model/overview.html">Create a model</a>

## Query data

NEntityDb uses .NET LINQ Expressions to query and save data from database. The .NET LINQ Expressions enables language-level code expressions to be represented as objects in the form of expression trees.

.NET LINQ Expressions allows you to use C# (or your .NET language to choice) to write strongly typed queries based on your entities. A representation of the .NET Expression query is passed to the database provider, to be translated to SQL language.

### Load single entity
```csharp
using (DbInstance dbInstance = new DbInstance())
{
    Customer customer = dbInstance.EntityOf<Customer>()
        .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
        .Where(c => c.Id == 1)
        .FirstOrDefault();
}
```
For more information about load a single entity, see <a href="https://nentitydb.com/pages/docs/query-data/load-an-entity.html">Load an entity</a>.

### Load a list of entities
```csharp
using (DbInstance dbInstance = new DbInstance())
{
    List<Customer> customers = dbInstance.QueryOf<Customer>()
        .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
        .Where(c => c.FirstName.Contains("a") || c.Email.Contains("a")
        .ToList();
}
```
For more information about load a list of entities, see <a href="https://nentitydb.com/pages/docs/query-data/load-an-entity-list.html">Load an entity list</a>.

### Get a scalar value
```csharp
using (DbInstance dbInstance = new DbInstance())
{
    int count = dbInstance.ScalarOf<Customer>()
        .Select(c => c.Count())
        .Returns<int>();
}
```
For more information about get a scalar value, see see <a href="https://nentitydb.com/pages/docs/query-data/get-a-scalar-value.html">Get a scalar value</a>.


## How do I get NEntityDb?

NEntityDb is available for purchase <a href="https://nentitydb.com/pages/pricing">here</a>.
