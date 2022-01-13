using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROG_Task2
{
    public partial class Default : System.Web.UI.MasterPage
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label5.Text = "Welcome, " + Session["username"].ToString();            
            }
            else
            {
                Button2.Visible = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Session.Abandon();
            Response.Write("<script language='javascript'>window.alert('You have been logged out');window.location='Default.aspx';</script>");

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Random ran = new Random();
            int i = ran.Next(1, 6);
            Image2.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
        }

    }

        
}