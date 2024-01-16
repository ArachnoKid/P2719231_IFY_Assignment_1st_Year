using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml.Linq;

namespace edible
{
    public partial class Delivery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void saveButton_Click(object sender, EventArgs e)
        {

            String insertQuery = "INSERT INTO [dbo].[Delivery] ([dname],[address],[po],[email],[contact]) VALUES (@dname,@address,@po,@email,@contact)";

            String ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {

                SqlCommand com = new SqlCommand(insertQuery, conn);

                com.Parameters.Add("@dname", SqlDbType.VarChar);
                com.Parameters["@dname"].Value = rname.Value;

                com.Parameters.Add("@address", SqlDbType.VarChar);
                com.Parameters["@address"].Value = address.Value;

                com.Parameters.Add("@po", SqlDbType.VarChar);
                com.Parameters["@po"].Value = po.Value;

                com.Parameters.Add("@email", SqlDbType.VarChar);
                com.Parameters["@email"].Value = email.Value;

                com.Parameters.Add("@contact", SqlDbType.VarChar);
                com.Parameters["@contact"].Value = contact.Value;

                try
                {
                    conn.Open();
                    int rowsAffected = com.ExecuteNonQuery();

                    Console.WriteLine(rowsAffected + "row(s) affected");
                    Response.Write("Delivery Address Added");
                   
                }
                catch (Exception ex)
                {
                    Response.Write("Error:" + ex);
                }

            }
        }

    }
}
