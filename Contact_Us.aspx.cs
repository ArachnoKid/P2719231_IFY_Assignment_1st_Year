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
    public partial class Contact_Us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            String insertQuery = "INSERT INTO [dbo].[Query] ([name],[email],[number],[subject],[message]) VALUES (@name,@email,@number,@subject,@message)";

            String ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True";


            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {

                SqlCommand com = new SqlCommand(insertQuery, conn);

                com.Parameters.Add("@name", SqlDbType.VarChar);
                com.Parameters["@name"].Value = name.Value;

                com.Parameters.Add("@email", SqlDbType.VarChar);
                com.Parameters["@email"].Value = email.Value;

                com.Parameters.Add("@number", SqlDbType.VarChar);
                com.Parameters["@number"].Value = number.Value;

                com.Parameters.Add("@subject", SqlDbType.VarChar);
                com.Parameters["@subject"].Value = subject.Value;

                com.Parameters.Add("@message", SqlDbType.VarChar);
                com.Parameters["@message"].Value = message.Value;


                try
                {
                    conn.Open();
                    int rowsAffected = com.ExecuteNonQuery();

                    Console.WriteLine(rowsAffected + "row(s) affected");
                    Response.Write("Message Sent");
                }
                catch (Exception ex)
                {
                    Response.Write("Error:" + ex);
                }

            }

        }
        }
    }