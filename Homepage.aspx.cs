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
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = "false";
        }
        protected void registerbutton_Click(object sender, EventArgs e)
        {


            String insertQuery = "INSERT INTO [dbo].[Subscribe] ([email]) VALUES (@email)";

            String ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True";


            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {

                SqlCommand com = new SqlCommand(insertQuery, conn);

                com.Parameters.Add("@email", SqlDbType.VarChar);
                com.Parameters["@email"].Value = register.Text;

                try
                {
                    conn.Open();
                    int rowsAffected = com.ExecuteNonQuery();

                    Console.WriteLine(rowsAffected + "row(s) affected");
                    Response.Write("Successfully Registered for Newsletter!!!");
                }
                catch (Exception ex)
                {
                    Response.Write("Error:" + ex);
                }

            }

        }
    

protected void Button3_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void Datalist1_itemCMD(object source, DataListCommandEventArgs e)
        {
            {
                Session["addproduct"] = "true";
                Response.Redirect("My Cart.aspx?id=" + e.CommandArgument.ToString());
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("My Cart.aspx");
        }
    }
}

