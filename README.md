# NEntityDb: modern ORM for .net

NEntityDb is a modern object-database mapper for .NET that enables developers to work with a database using .NET objects, and eliminating the need for most of the data-access code they usually need to write.

NEntityDb works with many databases, including Microsoft SQL Server, Oracle Database, IBM Db2, MySQL, MariaDB, Percona Server, PostgreSQL, SQLite and Firebird.

Please find all the details on <a href="https://nentitydb.com">nentitydb.com</a>

NEntityDb is available for purchase <a href="https://nentitydb.com/pages/pricing">here</a>.

## Create a model

With NEntityDb you can use Fluent APIs to configure your model. Using Fluent APIs in NEntityDb makes code readability easier.

### Creating a model
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

### Configuring a model
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
For more information about get a scalar value, see <a href="https://nentitydb.com/pages/docs/query-data/get-a-scalar-value.html">Get a scalar value</a>.

## Save data

### Insert data

NEntityDb allows you add new instances of your entity types. You can insert a single or multiple instances, insert large numbers of instances and insert data from a query.

```csharp
using (DbInstance dbInstance = new DbInstance())
{    
    int rowsAffected = dbInstance.NonQueryOf<Customer>(new Customer
    {
        FirstName = "Clair",
        LastName = "Guiet",
        TaxCode = "3720045188",
        Email = "cguiet@gov.uk",
        BirthDate = new DateTime(1980, 4, 15),
        Points = 10
    })
    .Insert()
    .RowsAffected;
}
```
For more information about insert data, see <a href="https://nentitydb.com/pages/docs/save-data/insert-data.html">Insert data</a>.

### Update data

NEntityDb allows you update data from the database.

```csharp
using (DbInstance dbInstance = new DbInstance())
{    
    int rowsAffected = dbInstance.NonQueryOf<Customer>()
        .Set(() => new Customer
        {
            Email = "cguiet@gov.uk",
            TaxCode = "3720045188"
        })
        .Where(c => c.Id == 10)
        .Update()
        .RowsAffected;
}
```
For more information about insert data, see <a href="https://nentitydb.com/pages/docs/save-data/update-data.html">Update data</a>.

### Delete data

NEntityDb allows you delete data from the database.

```csharp
using (DbInstance dbInstance = new DbInstance())
{    
    int rowsAffected = dbInstance.NonQueryOf<Employee>()
        .Where(e => e.FullName.Contains("a"))
        .Delete()
        .RowsAffected;
}
```
For more information about insert data, see <a href="https://nentitydb.com/pages/docs/save-data/delete-data.html">Delete data</a>.

## Asynchronous programming
NEntityDb provides asynchronous counterparts to all synchronous methods which perform I/O. These have the same effects as the sync methods, and can be used with the C# `async` and `await` keywords.

```csharp
using (DbInstance dbInstance = new DbInstance())
{
    List<Customer> customers = await dbInstance.QueryOf<Customer>()
        .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
        .Where(c => c.FirstName.Contains("a") || c.Email.Contains("a"))        
        .Page(1, 50)
        .ToListAsync();
}
```
For more information about asynchronous programming, see <a href="https://nentitydb.com/pages/docs/asynchronous-programming/overview.html">Asynchronous programming</a>.

## Database providers
NEntityDb can access many different databases through libraries called database providers.

Database providers can have specific functionalities, configuration and limitations. For more information about each database provider, see the following topics:
- [NEntityDb for SQL Server](https://nentitydb.com/pages/docs/database-providers/microsoft-sql-server.html)
- [NEntityDb for Oracle](https://nentitydb.com/pages/docs/database-providers/oracle-database.html)
- [NEntityDb for MySQL, MariaDB and Percona](https://nentitydb.com/pages/docs/database-providers/mysql,-mariadb-and-percona-server.html)
- [NEntityDb for PostgreSQL](https://nentitydb.com/pages/docs/database-providers/postgresql.html)
- [NEntityDb for IBM Db2](https://nentitydb.com/pages/docs/database-providers/ibm-db2.html)
- [NEntityDb for Sqlite](https://nentitydb.com/pages/docs/database-providers/sqlite.html)
- [NEntityDb for Firebird](https://nentitydb.com/pages/docs/database-providers/firebird.html)

## Learn
- [Get started](https://nentitydb.com/pages/docs/get-started/install-nentitydb-on-.net.html)
- [Create a model](https://nentitydb.com/pages/docs/create-a-model/overview.html)
- [Query data](https://nentitydb.com/pages/docs/query-data/overview.html)
- [Save data](https://nentitydb.com/pages/docs/save-data/insert-data.html)
- [Computed data](https://nentitydb.com/pages/docs/computed-data/overview.html)
- [Procedures](https://nentitydb.com/pages/docs/procedures/overview.html)
- [Asynchronous programming](https://nentitydb.com/pages/docs/asynchronous-programming/overview.html)
- [Dynamic queries](https://nentitydb.com/pages/docs/dynamic-queries/overview.html)
- [Connections and transactions](https://nentitydb.com/pages/docs/connections-and-transactions/connections.html)
- [Database providers](https://nentitydb.com/pages/docs/database-providers/overview.html)
- [My first app](https://nentitydb.com/pages/docs/my-first-app/overview.html)
- [API reference](https://nentitydb.com/pages/docs/references/api-reference.html)

## Testing
You can test NEntityDb in your database provider with the test application contained in this repository.

<img src="https://raw.githubusercontent.com/q2devland/nentitydb/gh-pages/assets/img/test-app.png" alt="Test app"/>

To execute the unit tests in your database provider follow the next steps:

### Download test projects
- Downloand this repository to your local machine.
- Open test solution on Visual Studio or Visual Studio Code.

### Create a test database
- Create a blank database on your database server.
- Open the appsettings.*.json file of the corresponding database provider test project. For example, to execute tests on SQL Server, open the appsettings.sqlserver.json file from the NEntityDb.Test.SqlServer project.
- Set the connection string to the test database in the `connectionString` parameter.

### Set the license key
- Get your NEntityDb license [here](https://nentitydb.com/pages/pricing.html) or request a trial license [here](https://nentitydb.com/pages/trial.html)
- Open the appsettings.*.json file of the corresponding database provider test project. For example, to execute tests on SQL Server, open the appsettings.sqlserver.json file from the NEntityDb.Test.SqlServer project.
- Set the license key in the `license` parameter. For more inforation about register a license, see [How to register a license](https://nentitydb.com/pages/docs/how-to/register-a-license.html).

### Execute tests
- Build entire solution
- Run the NEntityDb.Test.App project
- Select the database provider option

<img src="https://raw.githubusercontent.com/q2devland/nentitydb/gh-pages/assets/img/test-app-results.png" alt="Test app results"/>

When you run the test project, the following steps are executed:
- connects to the specified database
- run scripts to create test schemas
- insert test data into the database
- runs a set of unit tests that cover all features of NEntityDb
- the result of the executed tests is showed
 
## Get trial license
To evaluate NEntityDb you don’t need our permission – all features are unlocked. You just need obtain a trial license from [here](https://nentitydb.com/pages/trial.html). Once you’re ready to begin development, please purchase an appropriate license key.

Keep the following points in mind when using your trial license:

- With a single trial license you can evaluate all database providers.
- Trial license has a 30 day duration.
- You must register trial license as a standard license.


## How do I get NEntityDb?
NEntityDb is available for purchase <a href="https://nentitydb.com/pages/pricing">here</a>.
