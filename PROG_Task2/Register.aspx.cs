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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Response.Write("<script language='javascript'>window.alert('Please log out of any existing accounts before trying to register a new account');window.location='Default.aspx';</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=YEET\\SQLEXPRESS; Initial Catalog=PROGTASK2; Integrated Security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Register" + "(name, surname, email, gender, address, phone, password) values (@name, @surname, @email, @gender, @address, @phone, @password)",con);
            cmd.Parameters.AddWithValue("@name",TextBox1.Text);
            cmd.Parameters.AddWithValue("@surname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@address", TextBox5.Text);
            cmd.Parameters.AddWithValue("@phone", TextBox6.Text);
            cmd.Parameters.AddWithValue("@password", TextBox7.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script language='javascript'>window.alert('Successfully Registered, redirecting');window.location='Default.aspx';</script>");
        }
    }
}