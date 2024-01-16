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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerButton_Click(object sender, EventArgs e)
        {


            String insertQuery = "INSERT INTO [dbo].[register] ([fname],[lname],[gender],[dob],[email],[contact],[address],[po],[pass]) VALUES (@fname,@lname,@gender,@dob,@email,@contact,@address,@po,@pass)";
            //SqlDataAdapter adapter = new SqlDataAdapter(insertQuery,conn);

            String ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True";


            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {

                SqlCommand com = new SqlCommand(insertQuery, conn);

                com.Parameters.Add("@fname", SqlDbType.VarChar);
                com.Parameters["@fname"].Value = fname.Value;

                com.Parameters.Add("@lname", SqlDbType.VarChar);
                com.Parameters["@lname"].Value = lname.Value;

                com.Parameters.Add("@gender", SqlDbType.VarChar);
                com.Parameters["@gender"].Value = gender.Value;

                com.Parameters.Add("@dob", SqlDbType.Date);
                com.Parameters["@dob"].Value = dob.Value;

                com.Parameters.Add("@email", SqlDbType.VarChar);
                com.Parameters["@email"].Value = e_mail.Value;

                com.Parameters.Add("@contact", SqlDbType.VarChar);
                com.Parameters["@contact"].Value = contact_no.Value;

                com.Parameters.Add("@address", SqlDbType.VarChar);
                com.Parameters["@address"].Value = addr.Value;

                com.Parameters.Add("@po", SqlDbType.VarChar);
                com.Parameters["@po"].Value = post.Value;

                com.Parameters.Add("@pass", SqlDbType.VarChar);
                com.Parameters["@pass"].Value = pass.Value;

                try
                {
                    conn.Open();
                    int rowsAffected = com.ExecuteNonQuery();

                    Console.WriteLine(rowsAffected + "row(s) affected");
                    Response.Write("Registration Successful");
                }
                catch (Exception ex)
                {
                    Response.Write("Error:" + ex);
                }

            }

        }
    }
}

