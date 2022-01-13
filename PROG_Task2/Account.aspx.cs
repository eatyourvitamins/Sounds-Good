using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace PROG_Task2
{
    public partial class Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Write("<script language='javascript'>window.alert('Please login to access account page');window.location='Login.aspx';</script>");
            }
            else
            {
                if (Session["username"].ToString() == "Admin@gmail.com")
                {
                    Label1.Text = Session["username"].ToString();
                    Label4.Text = "All transactions across all acounts are listed below";

                    SqlDataReader dr;
                    SqlConnection con = new SqlConnection("Data Source=YEET\\SQLEXPRESS; Initial Catalog=PROGTASK2; Integrated Security=true;");
                    con.Open();

                    SqlCommand cmd = new SqlCommand("SELECT * FROM OrderSummary", con);

                    dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
                else
                {
                    Label1.Text = Session["username"].ToString();

                    SqlDataReader dr;
                    SqlConnection con = new SqlConnection("Data Source=YEET\\SQLEXPRESS; Initial Catalog=PROGTASK2; Integrated Security=true;");
                    con.Open();

                    SqlCommand cmd = new SqlCommand("SELECT * FROM OrderSummary WHERE Customer='" + Session["username"] + "'", con);

                    dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }      
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}