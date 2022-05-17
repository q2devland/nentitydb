using Microsoft.Extensions.Configuration;
using NEntityDb.Data.SqlServer.Licensing;
using NEntityDb.Model;
using NEntityDb.Model.Expressions;
using NEntityDb.Test.FirstApp.Data;
using NEntityDb.Test.FirstApp.Model;
using System;
using System.Collections.Generic;
using System.IO;

namespace NEntityDb.Test.FirstApp
{
    public class Program
    {
        public static void Main(string[] args)
        {
            IConfiguration configuration = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json")
                .Build();

            DbLicense.LoadFromFile(Path.Combine(Directory.GetCurrentDirectory(), "license.json"));

            DbFirstApp.ConnectionString = configuration.GetConnectionString("FirstApp");
            DbFirstApp.Schema = configuration["Schema"];

            Program.CleanUp();
            Program.InsertData();
            Program.UpdateData();
            Program.QueryData();
            Program.QueryComputedData();
            Program.DeleteData();

            Console.ReadKey();
        }

        private static void CleanUp()
        {
            Console.WriteLine("CleanUp");

            using (DbFirstApp dbFirstApp = new DbFirstApp())
            {
                dbFirstApp.NonQueryOf<Address>().Delete();
                dbFirstApp.NonQueryOf<Country>().Delete();
                dbFirstApp.NonQueryOf<Customer>().Delete();                                
            }

        }
        private static void QueryData()
        {
            Console.WriteLine("Start: query data");

            using (DbFirstApp dbFirstApp = new DbFirstApp())
            {
                //Selecting number of customers
                int count = Int.Parse(dbFirstApp.ScalarOf<Customer>()
                    .Select(c => c.Count())
                    .Read());

                //Selecting a single customer by primary key
                Customer customer = dbFirstApp.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.Email, c.CreationDate))
                    .Where(c => c.Id == 1)
                    .FirstOrDefault();

                //Selecting an addresses list
                List<Address> addresses = dbFirstApp.QueryOf<Address>()
                    .Select(a => Property.ToArray(a.Id, a.Street, a.PostalCode, a.Country.Name,
                            a.Customer.FirstName, a.Customer.LastName, a.Customer.Email))
                    .Where(a => a.IsMain.Value)
                    .Page(1, 50)
                    .ToList();

                //Selecting a customers list including their addresses
                List<Customer> customers = dbFirstApp.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.Email))
                    .Include(c => c.Addresses, new QueryRequest<Address>()
                        .Select(a => Property.ToArray(a.Id, a.Street, a.PostalCode, a.Country.Name)))
                    .Page(1, 50)
                    .ToList();
            }

            Console.WriteLine("End: query data");
        }

        private static void QueryComputedData()
        {
            Console.WriteLine("Start: query computed data");

            using (DbFirstApp dbFirstApp = new DbFirstApp())
            {
                //Querying number of customers with main address
                int count = Int.Parse(dbFirstApp.ScalarOf<Customer>()
                    .Select(c => c.Count())
                    .Where(c => c.MainAddress.Id != null)
                    .Read());

                //Querying FullName and MainAddress properties
                List<Customer> customer = dbFirstApp.QueryOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FullName, c.Email, c.MainAddress.City, c.MainAddress.Country.Name))
                    .Where(c => c.MainAddress.Country.Name == "Canada")
                    .ToList();
            }

            Console.WriteLine("End: query computed data");
        }

        private static void InsertData()
        {
            Console.WriteLine("Start: insert data");

            using (DbFirstApp dbFirstApp = new DbFirstApp())
            {
                dbFirstApp.UseTransaction();

                Customer firstCustomer = dbFirstApp.NonQueryOf<Customer>(new Customer
                {
                    FirstName = "Clair",
                    LastName = "Guiet",
                    Email = "cguiet0@gov.uk"
                })
                .Insert()
                .FirstOrDefault();

                Customer secondCustomer = dbFirstApp.NonQueryOf<Customer>(new Customer
                {
                    FirstName = "Vincenz",
                    LastName = "Upex",
                    Email = "vupex1@is.gd"
                })
                .Insert()
                .FirstOrDefault();

                Country firstCountry = dbFirstApp.NonQueryOf<Country>(new Country
                {
                    Name = "France"
                })
                .Insert()
                .FirstOrDefault();

                Country secondCountry = dbFirstApp.NonQueryOf<Country>(new Country
                {
                    Name = "Germany"
                })
                .Insert()
                .FirstOrDefault();

                Country thirdCountry = dbFirstApp.NonQueryOf<Country>(new Country
                {
                    Name = "Canada"
                })
                .Insert()
                .FirstOrDefault();

                int rowsAffected = dbFirstApp.NonQueryOf<Address>(new Address
                {
                    Street = "99 Larry Pass",
                    PostalCode = "1765",
                    City = "Morón",
                    IsMain = true,
                    Customer = firstCustomer,
                    Country = firstCountry,
                }, new Address
                {
                    Street = "7 Ridgeway Street",
                    PostalCode = "464 01",
                    City = "Mazongling",
                    IsMain = false,
                    Customer = firstCustomer,
                    Country = secondCountry,
                }, new Address
                {
                    Street = "9600 Holy Cross Way",
                    PostalCode = "182514",
                    City = "Zhatay",
                    IsMain = false,
                    Customer = firstCustomer,
                    Country = firstCountry,
                }, new Address
                {
                    Street = "89693 Lunder Drive",
                    PostalCode = "542 01",
                    City = "Roza",
                    IsMain = true,
                    Customer = secondCustomer,
                    Country = thirdCountry,
                }, new Address
                {
                    Street = "16644 Brentwood Avenue",
                    PostalCode = "427275",
                    City = "Kisesa",
                    IsMain = false,
                    Customer = secondCustomer,
                    Country = thirdCountry,
                })
                .Insert()
                .RowsAffected;                
            }

            Console.WriteLine("End: insert data");
        }

        private static void UpdateData()
        {
            Console.WriteLine("Start: update data");

            using (DbFirstApp dbFirstApp = new DbFirstApp())
            {
                dbFirstApp.UseTransaction();

                int rowsAffected = dbFirstApp.NonQueryOf<Customer>()
                    .Set(c => new Customer
                    {
                        Email = "cguiet92@gov.uk"
                    })
                    .Where(c => c.Id == 1)
                    .Update()
                    .RowsAffected;

                rowsAffected += dbFirstApp.NonQueryOf<Address>()
                    .Set(c => new Address
                    {
                        Street = "35 Kennedy Parkway",
                        PostalCode = "366309"
                    })
                    .Where(a => a.Id == 2)
                    .Update()
                    .RowsAffected;
            }

            Console.WriteLine("End: update data");
        }

        private static void DeleteData()
        {
            Console.WriteLine("Start: delete data");

            using (DbFirstApp dbFirstApp = new DbFirstApp())
            {
                int rowsAffected = dbFirstApp.NonQueryOf<Address>()
                    .Where(a => !a.IsMain.Value)
                    .Delete()
                    .RowsAffected;
            }

            Console.WriteLine("End: delete data");
        }
    }
}
