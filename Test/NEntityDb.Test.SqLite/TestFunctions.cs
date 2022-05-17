using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using NEntityDb.Unit.Test.Utility;
using NEntityDb.Serialization;

namespace NEntityDb.Test.Sqlite
{
    public class TestFunctions
    {
        public static int GetAge(DateTime? birthDate, DateTime? deathDate) 
        {
            DateTime finalDate = deathDate == null ? DateTime.Now : deathDate.Value;

            DateTime zeroTime = new DateTime(1, 1, 1);

            TimeSpan time = finalDate.Subtract(birthDate.Value);
            int years = (zeroTime + time).Year - 1;

            return years;
        }

        public static int AddSupplier(string name, string taxCode, string email, IDbConnection connection)
        {            
            string sql = $"INSERT INTO {TestSettings.Schema}.\"Suppliers\"(\"SUP_Name\", \"SUP_Email\", \"SUP_TaxCode\") VALUES(@name, @taxCode, @email)";
            using (IDbCommand command = connection.CreateCommand())
            {
                command.CommandText = sql;
                IDbDataParameter nameParameter = command.CreateParameter();
                nameParameter.ParameterName = "@name";
                nameParameter.Value = name;
                IDbDataParameter taxCodeParameter = command.CreateParameter();
                taxCodeParameter.ParameterName = "@taxCode";
                taxCodeParameter.Value = taxCode;
                IDbDataParameter emailParameter = command.CreateParameter();
                emailParameter.ParameterName = "@email";
                emailParameter.Value = email;

                command.Parameters.Add(nameParameter);
                command.Parameters.Add(taxCodeParameter);
                command.Parameters.Add(emailParameter);

                return command.ExecuteNonQuery();
            }
        }

        public static Dictionary<string, object>[] GetInvoices(int pageNumber, int pageSize, IDbConnection connection)
        {
            List<Dictionary<string, object>> invoices = new List<Dictionary<string, object>>();

            string sql = $"SELECT \"INV_Id\" AS Id, \"INV_Number\" AS \"Number\", \"INV_Date\" as \"Date\", " +
                "\"CUS_TaxCode\" AS\"TaxCode\", \"CUS_Email\" AS\"Email\" " +
                $"FROM \"{TestSettings.Schema}\".\"Invoices\" \"i\"" +
                $"INNER JOIN \"{TestSettings.Schema}\".\"Customers\" \"c\" ON\"c\".\"CUS_Id\" = \"i\".\"CUS_Id\" " +
                "ORDER BY \"i\".\"CUS_Id\" " +
                $"LIMIT @offset, @rows";

            using (IDbCommand command = connection.CreateCommand())
            {
                command.CommandText = sql;
                IDbDataParameter offsetParameter = command.CreateParameter();
                offsetParameter.ParameterName = "@offset";
                offsetParameter.Value = (pageNumber - 1) * pageSize;
                IDbDataParameter rowsParameter = command.CreateParameter();
                rowsParameter.ParameterName = "@rows";
                rowsParameter.Value = pageSize;

                command.Parameters.Add(offsetParameter);
                command.Parameters.Add(rowsParameter);

                using (IDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Dictionary<string, object> invoice = new Dictionary<string, object>();

                        invoice.Add("Id", reader["Id"]);
                        invoice.Add("Number", reader["Number"]);
                        invoice.Add("Date", reader["Date"]);
                        invoice.Add("TaxCode", reader["TaxCode"]);
                        invoice.Add("Email", reader["Email"]);

                        invoices.Add(invoice);
                    }
                }
            }

            return invoices.ToArray();
        }

        public static Dictionary<string, object> GetInvoice(int id, IDbConnection connection)
        {
            Dictionary<string, object> invoice = new Dictionary<string, object>();

            string sql = $"SELECT \"INV_Id\" AS Id, \"INV_Number\" AS \"Number\", \"INV_Date\" as \"Date\", " +
                           "\"CUS_TaxCode\" AS\"TaxCode\", \"CUS_Email\" AS\"Email\" " +
                           $"FROM \"{TestSettings.Schema}\".\"Invoices\" \"i\"" +
                           $"INNER JOIN \"{TestSettings.Schema}\".\"Customers\" \"c\" ON\"c\".\"CUS_Id\" = \"i\".\"CUS_Id\" " +
                           "WHERE\"INV_Id\" = @id";

            using (IDbCommand command = connection.CreateCommand())
            {
                command.CommandText = sql;

                IDbDataParameter idParameter = command.CreateParameter();
                idParameter.ParameterName = "@id";
                idParameter.Value = id;

                command.Parameters.Add(idParameter);

                using (IDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        invoice.Add("Id", reader["Id"]);
                        invoice.Add("Number", reader["Number"]);
                        invoice.Add("Date", reader["Date"]);
                        invoice.Add("TaxCode", reader["TaxCode"]);
                        invoice.Add("Email", reader["Email"]);
                    }
                }
            }

            return invoice;
        }

        public static Dictionary<string, object> GetCountAddress(int id, IDbConnection connection)
        {
            Dictionary<string, object> address = new Dictionary<string, object>();

            string sql = $"SELECT \"a\".\"CUS_Id\" AS \"CustomerId\", \"c\".\"CUS_Email\" AS \"CustomerEmail\", COUNT(*) AS \"AddressesCount\" " +
                $"FROM\"{TestSettings.Schema}\".\"Addresses\" \"a\" " +
                $"INNER JOIN\"{TestSettings.Schema}\".\"Customers\" \"c\" ON\"c\".\"CUS_Id\" = \"a\".\"CUS_Id\" " +
                "WHERE\"a\".\"CUS_Id\" = @id " +
                "GROUP BY\"a\".\"CUS_Id\", \"c\".\"CUS_Email\"";

            using (IDbCommand command = connection.CreateCommand())
            {
                command.CommandText = sql;

                IDbDataParameter idParameter = command.CreateParameter();
                idParameter.ParameterName = "@id";
                idParameter.Value = id;

                command.Parameters.Add(idParameter);

                using (IDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        address.Add("CustomerId", reader["CustomerId"]);
                        address.Add("CustomerEmail", reader["CustomerEmail"]);
                        address.Add("AddressesCount", Int.Parse(reader["AddressesCount"]));
                    }
                }
            }

            return address;
        }

        public static Dictionary<string, object>[] GetCountAddresses(int pageNumber, int pageSize, IDbConnection connection)
        {
            List<Dictionary<string, object>> addresses = new List<Dictionary<string, object>>();

            string sql = $"SELECT \"a\".\"CUS_Id\" AS \"CustomerId\", \"c\".\"CUS_Email\" AS \"CustomerEmail\", COUNT(*) AS \"AddressesCount\" " +
                $"FROM \"{TestSettings.Schema}\".\"Addresses\" \"a\" " +
                $"INNER JOIN \"{TestSettings.Schema}\".\"Customers\" \"c\" ON\"c\".\"CUS_Id\" = \"a\".\"CUS_Id\" " +
                "GROUP BY \"a\".\"CUS_Id\", \"c\".\"CUS_Email\" " +
                "ORDER BY \"a\".\"CUS_Id\" " +
                $"LIMIT @offset, @rows";

            using (IDbCommand command = connection.CreateCommand())
            {
                command.CommandText = sql;
                IDbDataParameter offsetParameter = command.CreateParameter();
                offsetParameter.ParameterName = "@offset";
                offsetParameter.Value = (pageNumber - 1) * pageSize;
                IDbDataParameter rowsParameter = command.CreateParameter();
                rowsParameter.ParameterName = "@rows";
                rowsParameter.Value = pageSize;

                command.Parameters.Add(offsetParameter);
                command.Parameters.Add(rowsParameter);

                using (IDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Dictionary<string, object> address = new Dictionary<string, object>();

                        address.Add("CustomerId", reader["CustomerId"]);
                        address.Add("CustomerEmail", reader["CustomerEmail"]);
                        address.Add("AddressesCount", Int.Parse(reader["AddressesCount"]));

                        addresses.Add(address);
                    }
                }
            }

            return addresses.ToArray();
        }

        public static object GetInvoicesAmount(IDbConnection connection)
        {
            string sql = $"SELECT SUM(\"ILI_Amount\") FROM \"{TestSettings.Schema}\".\"InvoiceLines\"";
            using (IDbCommand command = connection.CreateCommand())
            {
                command.CommandText = sql;
                return command.ExecuteScalar();
            }
        }

    }
}
