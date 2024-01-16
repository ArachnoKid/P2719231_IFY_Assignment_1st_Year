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
    public partial class Applications : System.Web.UI.Page
    {
        protected void page_Load(object sender, EventArgs e)
        {

        }

        protected void applyButton_Click(object sender, EventArgs e)
        {
            String insertQuery = "INSERT INTO [dbo].[Apply] ([Full Name],[Email],[Country_Code],[Phone_No],[Street_Adress],[City],[PO],[country],[Position],[ex],[wds],[wde],[shift],[start date]) VALUES (@Name,@Email,@Country_Code,@Phone_No,@Street_Adress,@City,@PO,@country,@Position,@ex,@wds,@wde,@shift,@startdate)";

            String ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {

                SqlCommand com = new SqlCommand(insertQuery, conn);

                com.Parameters.Add("@Name", SqlDbType.VarChar);
                com.Parameters["@Name"].Value = Dname.Value;

                com.Parameters.Add("@Email", SqlDbType.VarChar);
                com.Parameters["@Email"].Value = email_input.Value;

                com.Parameters.Add("@Country_Code", SqlDbType.VarChar);
                com.Parameters["@Country_Code"].Value = CountryCode.Value;

                com.Parameters.Add("@Phone_No", SqlDbType.VarChar);
                com.Parameters["@Phone_No"].Value = PhoneNo.Value;

                com.Parameters.Add("@Street_Adress", SqlDbType.VarChar);
                com.Parameters["@Street_Adress"].Value = Street_Address.Value;

                com.Parameters.Add("@City", SqlDbType.VarChar);
                com.Parameters["@City"].Value = City.Value;

                com.Parameters.Add("@PO", SqlDbType.VarChar);
                com.Parameters["@PO"].Value = PostCode.Value;

                com.Parameters.Add("@country", SqlDbType.VarChar);
                com.Parameters["@country"].Value = Country.Value;

                com.Parameters.Add("@Position", SqlDbType.VarChar);
                com.Parameters["@Position"].Value = Jobs.Value;

                com.Parameters.Add("@ex", SqlDbType.VarChar);
                com.Parameters["@ex"].Value = WorkExp.Value;

                com.Parameters.Add("@wds", SqlDbType.VarChar);
                com.Parameters["@wds"].Value = WorkDayStart.Value;

                com.Parameters.Add("@wde", SqlDbType.VarChar);
                com.Parameters["@wde"].Value = WorkDayEnd.Value;

                com.Parameters.Add("@shift", SqlDbType.VarChar);
                com.Parameters["@shift"].Value = ShiftStart.Value;

                com.Parameters.Add("@startdate", SqlDbType.VarChar);
                com.Parameters["@startdate"].Value = PStartDate.Value;


                try
                {
                    conn.Open();
                    int rowsAffected = com.ExecuteNonQuery();

                    Console.WriteLine(rowsAffected + "row(s) affected");
                    Response.Write("Application Submitted Successfully!!!   ");
                    Response.Write("Your Application will be reviewed and you will get a response in 12-14 Working Days");

                }
                catch (Exception ex)
                {
                    Response.Write("Error:" + ex);
                }

            }
        }
    }
}