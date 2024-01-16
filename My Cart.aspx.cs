using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication1
{
    public partial class My_Cart : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["addproduct"].ToString() == "true")
            {
                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("proID");
                dt.Columns.Add("proName");
                dt.Columns.Add("image");
                dt.Columns.Add("price");
                dt.Columns.Add("quantity");
                dt.Columns.Add("totalprice");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=H:\Blackboard\LIPC1261_2122_503 Information Systems Development\Term 2\ISD project\WebApplication1\App_Data\Registration.mdf;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Cart where proID=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["proID"] = ds.Tables[0].Rows[0]["proID"].ToString();
                        dr["proName"] = ds.Tables[0].Rows[0]["proName"].ToString();
                        dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity".ToString()]);
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["Buyitems"] = dt;
                    }
                    else
                    {

                        dt = (DataTable)Session["Buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=H:\Blackboard\LIPC1261_2122_503 Information Systems Development\Term 2\ISD project\WebApplication1\App_Data\Registration.mdf;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Cart where proID=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["proID"] = ds.Tables[0].Rows[0]["proID"].ToString();
                        dr["proName"] = ds.Tables[0].Rows[0]["proName"].ToString();
                        dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["Buyitems"] = dt;
                        //GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        //GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("My Cart.aspx");
                    }
                }


            }
            else
            {
                DataTable dt;
                dt = (DataTable)Session["Buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                //if (GridView1.Rows.Count > 0)
                //{
                //    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                //    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                //}
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Buyitems"];

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt16(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    Label1.Text = "Your Item has been removed from the cart";
                    break;
                }
            }
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                dt.Rows[i]["sno"] = i;
                dt.AcceptChanges();
            }
            Session["Buyitems"] = dt;
            Response.Redirect("My Cart.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }
        // //public int grandtotal()
        //// {
        //  //   DataTable dt = new DataTable();
        //    // dt = (DataTable)Session["Buyitems"];
        //    // int nrow = dt.Rows.Count;
        //     int i = 0;
        //     int gtotal = 0;
        //     while (i < nrow)
        //     {
        //         gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());
        //        i = i + 1;
        //    }
        //    return gtotal;
        //}
    }
}