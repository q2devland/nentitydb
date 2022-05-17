using Microsoft.VisualStudio.TestTools.UnitTesting;
using NEntityDb.Model;
using NEntityDb.Test.Model.Customers;
using NEntityDb.Unit.Test.Utility;
using System;
using System.Collections.Generic;
using System.Data;

namespace NEntityDb.Unit.Test.Common
{
    public class TransactionsTest<TInstance> : BaseTest<TInstance> where TInstance : NEntityDb.Data.Common.DbInstance, new()
    {
        [TestMethod]
        public void WithoutTransactionTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                //Inserting
                Customer customer = dbInstance.NonQueryOf<Customer>(new Customer
                    {
                        FirstName = "Billie",
                        LastName = "Giles",
                        TaxCode = "9382241752",
                        Email = "billie.giles@test.com",
                        BirthDate = new DateTime(1970, 2, 14),
                        Points = 20
                    })
                    .WithTag(this, "WithoutTransactionTest", 1)
                    .Insert()
                    .FirstOrDefault();                  

                //Reading
                customer = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .Where(c => c.Id == customer.Id)
                    .WithTag(this, "WithoutTransactionTest", 2)
                    .FirstOrDefault();
                    
                //Updating
                int rowsAffected = dbInstance.NonQueryOf<Customer>()
                    .Set(() => new Customer
                    {
                        Email = "billgiles1970@test.com",
                        Points = 30
                    })
                    .Where(c => c.Id == customer.Id)
                    .WithTag(this, "WithoutTransactionTest", 3)
                    .Update()
                    .RowsAffected;

                //Deleting
                rowsAffected += dbInstance.NonQueryOf<Customer>()
                    .Where(c => c.Id == customer.Id)
                    .WithTag(this, "WithoutTransactionTest", 4)
                    .Delete()
                    .RowsAffected;

                Assert.IsTrue(rowsAffected == 2);
            }
        }

        [TestMethod]
        public void RollbackImplicitTransactionTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                dbInstance.UseTransaction(IsolationLevel.Serializable);

                //Inserting
                Customer customer = dbInstance.NonQueryOf<Customer>(new Customer
                    {
                        FirstName = "Billie",
                        LastName = "Giles",
                        TaxCode = "9382241752",
                        Email = "billie.giles@test.com",
                        BirthDate = new DateTime(1970, 2, 14),
                        Points = 20
                    })
                    .WithTag(this, "RollbackImplicitTransactionTest", 1)
                    .Insert()                    
                    .FirstOrDefault();

                //Reading
                customer = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .Where(c => c.Id == customer.Id)
                    .WithTag(this, "RollbackImplicitTransactionTest", 2)
                    .FirstOrDefault();

                //Updating
                int rowsAffected = dbInstance.NonQueryOf<Customer>()
                    .Set(() => new Customer
                    {
                        Email = "billgiles1970@test.com",
                        Points = 30
                    })
                    .Where(c => c.Id == customer.Id)
                    .WithTag(this, "RollbackImplicitTransactionTest", 3)
                    .Update()
                    .RowsAffected;

                //Rollback
                dbInstance.RollbackTransaction();

                //Reading
                customer = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .Where(c => c.Id == customer.Id)
                    .WithTag(this, "RollbackImplicitTransactionTest", 4)
                    .FirstOrDefault();

                Assert.IsNull(customer);
            }
        }

        [TestMethod]
        public void CommitImplicitTransactionTest()
        {
            using (TInstance dbInstance = new TInstance())
            {
                dbInstance.UseTransaction(IsolationLevel.Serializable);

                //Inserting
                Customer customer = dbInstance.NonQueryOf<Customer>(new Customer
                    {
                        FirstName = "Billie",
                        LastName = "Giles",
                        TaxCode = "9382241752",
                        Email = "billie.giles@test.com",
                        BirthDate = new DateTime(1970, 2, 14),
                        Points = 20
                    })
                    .WithTag(this, "CommitImplicitTransactionTest", 1)
                    .Insert()
                    .FirstOrDefault();

                //Reading
                customer = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .Where(c => c.Id == customer.Id)
                    .WithTag(this, "CommitImplicitTransactionTest", 2)
                    .FirstOrDefault();

                //Updating
                int rowsAffected = dbInstance.NonQueryOf<Customer>()
                    .Set(() => new Customer
                    {
                        Email = "billgiles1970@test.com",
                        Points = 30
                    })
                    .Where(c => c.Id == customer.Id)
                    .WithTag(this, "CommitImplicitTransactionTest", 3)
                    .Update()
                    .RowsAffected;

                //Commit
                dbInstance.CommitTransaction();

                //Reading
                customer = dbInstance.EntityOf<Customer>()
                    .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                    .Where(c => c.Id == customer.Id)
                    .WithTag(this, "CommitImplicitTransactionTest", 4)
                    .FirstOrDefault();

                Assert.IsNotNull(customer);
            }
        }

        [TestMethod]
        public void RollbackExplicitTransactionTest()
        {
            using (IDbConnection connection = this.CreateConnection())
            {
                this.OpenConnection(connection);
                using (IDbTransaction transaction = this.BeginTransaction(connection))
                {
                    using (TInstance dbInstance = this.CreateDbInstance(connection))
                    {
                        dbInstance.UseTransaction(transaction);

                        //Inserting
                        Customer customer = dbInstance.NonQueryOf<Customer>(new Customer
                        {
                            FirstName = "Billie",
                            LastName = "Giles",
                            TaxCode = "9382241752",
                            Email = "billie.giles@test.com",
                            BirthDate = new DateTime(1970, 2, 14),
                            Points = 20
                        })
                        .WithTag(this, "RollbackExplicitTransactionTest", 1)
                        .Insert()
                        .FirstOrDefault();

                        //Reading
                        customer = dbInstance.EntityOf<Customer>()
                            .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                            .Where(c => c.Id == customer.Id)
                            .WithTag(this, "RollbackExplicitTransactionTest", 2)
                            .FirstOrDefault();

                        //Updating
                        int rowsAffected = dbInstance.NonQueryOf<Customer>()
                            .Set(() => new Customer
                            {
                                Email = "billgiles1970@test.com",
                                Points = 30
                            })
                            .Where(c => c.Id == customer.Id)
                            .WithTag(this, "RollbackExplicitTransactionTest", 3)
                            .Update()
                            .RowsAffected;

                        //Rollback
                        transaction.Rollback();

                        //Reading
                        customer = dbInstance.EntityOf<Customer>()
                            .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                            .Where(c => c.Id == customer.Id)
                            .WithTag(this, "RollbackExplicitTransactionTest", 4)
                            .FirstOrDefault();

                        Assert.IsNull(customer);
                    }
                }
            }            
        }

        [TestMethod]
        public void CommitExplicitTransactionTest()
        {
            using (IDbConnection connection = this.CreateConnection())
            {
                this.OpenConnection(connection);
                using (IDbTransaction transaction = this.BeginTransaction(connection))
                {
                    using (TInstance dbInstance = this.CreateDbInstance(connection))
                    {
                        dbInstance.UseTransaction(transaction);

                        //Inserting
                        Customer customer = dbInstance.NonQueryOf<Customer>(new Customer
                        {
                            FirstName = "Billie",
                            LastName = "Giles",
                            TaxCode = "9382241752",
                            Email = "billie.giles@test.com",
                            BirthDate = new DateTime(1970, 2, 14),
                            Points = 20
                        })
                        .WithTag(this, "CommitExplicitTransactionTest", 1)
                        .Insert()
                        .FirstOrDefault();

                        //Reading
                        customer = dbInstance.EntityOf<Customer>()
                            .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                            .Where(c => c.Id == customer.Id)
                            .WithTag(this, "CommitExplicitTransactionTest", 2)
                            .FirstOrDefault();

                        //Updating
                        int rowsAffected = dbInstance.NonQueryOf<Customer>()
                            .Set(() => new Customer
                            {
                                Email = "billgiles1970@test.com",
                                Points = 30
                            })
                            .Where(c => c.Id == customer.Id)
                            .WithTag(this, "CommitExplicitTransactionTest", 3)
                            .Update()
                            .RowsAffected;

                        //Commit
                        transaction.Commit();

                        //Reading
                        customer = dbInstance.EntityOf<Customer>()
                            .Select(c => Property.ToArray(c.Id, c.FirstName, c.LastName, c.TaxCode, c.Email))
                            .Where(c => c.Id == customer.Id)
                            .WithTag(this, "CommitExplicitTransactionTest", 4)
                            .FirstOrDefault();

                        Assert.IsNotNull(customer);
                    }
                }
            }
        }        

        public virtual List<OrderedTest> GetPlayListTest()
        {
            return new List<OrderedTest>
            {
                new OrderedTest(WithoutTransactionTest),
                new OrderedTest(RollbackExplicitTransactionTest),
                new OrderedTest(RollbackImplicitTransactionTest),
                new OrderedTest(CommitExplicitTransactionTest),
                new OrderedTest(CommitImplicitTransactionTest),
            };
        }
    }
}
