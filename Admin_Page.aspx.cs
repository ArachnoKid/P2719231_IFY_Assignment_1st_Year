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
    public partial class Admin_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into items values(" + Convert.ToInt32(fname.Value) + ", '" + lname.Value + "')", con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("Item added successfully!!!");
            }
            else
            {
                Response.Write("Error!!!");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=H:\Blackboard\LIPC1261_2122_503 Information Systems Development\Term 2\ISD project\WebApplication1\App_Data\Registration.mdf;Integrated Security=True");
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("update items set Item = '" + lname.Value + "' where ID =" + Convert.ToInt32(fname.Value) + "", con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("item updated successfully!!!");
            }
            else
            {
                Response.Write("Item is not updated!!!");
            }
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=H:\Blackboard\LIPC1261_2122_503 Information Systems Development\Term 2\ISD project\WebApplication1\App_Data\Registration.mdf;Integrated Security=True");
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delete from items where ID = " + Convert.ToInt32(fname.Value) + "", con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("item deleted");
            }
            else
            {
                Response.Write("Item is not deleted");
            }
            con.Close();
        }
    }
}
