# NEntityDb (.NET ORM)

NEntityDb is a modern object-database mapper for .NET that enables developers to work with a database using .NET objects, and eliminating the need for most of the data-access code they usually need to write.

NEntityDb works with many databases, including Microsoft SQL Server, Oracle Database, IBM Db2, MySQL, MariaDB, Percona Server, PostgreSQL, SQLite and Firebird.

Please find all the details on <a href="https://nentitydb.com">nentitydb.com</a>

NEntityDb is available for purchase <a href="https://nentitydb.com/pages/pricing">here</a>.

## Create a model

With NEntityDb you can use Fluent APIs to configure your model. Using Fluent APIs in NEntityDb makes code readability easier.

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

## Query and save data

NEntityDb uses .NET LINQ Expressions to query and save data from database. The .NET LINQ Expressions enables language-level code expressions to be represented as objects in the form of expression trees.

## How do I get NEntityDb?

NEntityDb is available for purchase <a href="https://nentitydb.com/pages/pricing">here</a>.
