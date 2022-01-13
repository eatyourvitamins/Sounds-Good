using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace PROG_Task2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=YEET\\SQLEXPRESS; Initial Catalog=PROGTASK2; Integrated Security=true;");
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Register WHERE email='" + TextBox1.Text + "' AND password= '" + TextBox2.Text + "'",con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (TextBox1.Text == "Admin@gmail.com" & TextBox2.Text == "Password1")
            {
                Session["username"] = TextBox1.Text;
                Response.Write("<script language='javascript'>window.alert('Successfully Authenticated, redirecting');window.location='Default.aspx';</script>");
            }
            else if (dt.Rows.Count == 1)
            {
                Session["username"] = TextBox1.Text;
                Response.Write("<script language='javascript'>window.alert('Successfully Authenticated, redirecting');window.location='Default.aspx';</script>");
            }
            else
            {
                Label1.Text = "Invalid credentials. Please ensure that you have the correct email and password combination.";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }
        }
    }
}