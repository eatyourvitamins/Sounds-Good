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
    public partial class AddToCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["buyAlbums"] == null)
                {
                    Button1.Enabled = false;
                }
                else
                {
                    Button1.Enabled = true;
                }

                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("albumid");
                dt.Columns.Add("albumart");
                dt.Columns.Add("albumname");
                dt.Columns.Add("albumprice");
                dt.Columns.Add("itemquantity");
                dt.Columns.Add("totalamount");

                if  (Request.QueryString["id"] != null)
                {
                    if (Session["buyAlbums"] == null)
                    {
                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection("Data Source=YEET\\SQLEXPRESS; Initial Catalog=PROGTASK2; Integrated Security=true;");

                        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Album WHERE AlbumID=" + Request.QueryString["id"], con);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = 1;
                        dr["albumid"] = ds.Tables[0].Rows[0]["AlbumId"].ToString();
                        dr["albumart"] = ds.Tables[0].Rows[0]["AlbumArt"].ToString();
                        dr["albumname"] = ds.Tables[0].Rows[0]["AlbumName"].ToString();
                        dr["albumprice"] = ds.Tables[0].Rows[0]["AlbumPrice"].ToString();
                        dr["itemquantity"] = Request.QueryString["quantity"];

                        int intPrice = Convert.ToInt32(ds.Tables[0].Rows[0]["albumprice"].ToString());
                        int intQuantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int intTotalPrice = intPrice * intQuantity;
                        dr["totalamount"] = intTotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyAlbums"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total due";
                        GridView1.FooterRow.Cells[6].Text = "ZAR " + grandTotal().ToString();
                        Response.Redirect("AddToCart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyAlbums"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection("Data Source=YEET\\SQLEXPRESS; Initial Catalog=PROGTASK2; Integrated Security=true;");

                        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Album WHERE AlbumID=" + Request.QueryString["id"], con);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = sr + 1;
                        dr["albumid"] = ds.Tables[0].Rows[0]["AlbumId"].ToString();
                        dr["albumart"] = ds.Tables[0].Rows[0]["AlbumArt"].ToString();
                        dr["albumname"] = ds.Tables[0].Rows[0]["AlbumName"].ToString();
                        dr["albumprice"] = ds.Tables[0].Rows[0]["AlbumPrice"].ToString();
                        dr["itemquantity"] = Request.QueryString["quantity"];

                        int intPrice = Convert.ToInt32(ds.Tables[0].Rows[0]["albumprice"].ToString());
                        int intQuantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int intTotalPrice = intPrice * intQuantity;
                        dr["totalamount"] = intTotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyAlbums"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total due";
                        GridView1.FooterRow.Cells[6].Text = "ZAR " + grandTotal().ToString();
                        Session["grandtotal"] = grandTotal().ToString();
                        Response.Redirect("AddToCart.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyAlbums"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total due";
                        GridView1.FooterRow.Cells[6].Text = "ZAR " + grandTotal().ToString();
                        Session["grandtotal"] = grandTotal().ToString();
                    }
                }
            }
            string strOrderDate = DateTime.Now.ToShortDateString();
            Session["Orderdate"] = strOrderDate;
            orderID();
   
        }

        public int grandTotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyAlbums"];
            int intNrow = dt.Rows.Count;
            int intCount = 0;
            int intTotal = 0;
            while (intCount < intNrow)
            {
                intTotal = intTotal + Convert.ToInt32(dt.Rows[intCount]["totalamount"].ToString());

                intCount = intCount + 1;
            }
            return intTotal;
        }

        public void orderID()
        {
            string strAlphabet = "abCdefghIjklmNopqrStuvwXyz123456789";
            Random ran = new Random();
            char[] myArray = new char[5];
            for (int i = 0; i < 5; i++)
            {
                myArray[i] = strAlphabet[(int)(35 * ran.NextDouble())];
            }
            string strOrderID;
            strOrderID = "Order_Id: " + DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Date.ToString()
                + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(myArray) + DateTime.Now.Minute.ToString()
                + DateTime.Now.Second.ToString();
            Session["Orderid"] = strOrderID;        
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyAlbums"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }

            for (int i = 1; i < dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }

            Session["buyAlbums"] = dt;
            Response.Redirect("AddToCart.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyAlbums"];
                if (Session["username"] == null)
                {
                    Response.Write("<script language='javascript'>window.alert('Please login to make a purchase');window.location='Login.aspx';</script>");
                }
                else
                {
                    if (GridView1.Rows.Count.ToString() == "0")
                    {
                        Response.Write("<script>alert('Your Cart is Empty. You cannot place an Order');</script>");

                    }
                    else
                    {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        SqlConnection con = new SqlConnection("Data Source=YEET\\SQLEXPRESS; Initial Catalog=PROGTASK2; Integrated Security=true;");
                        con.Open();
                        SqlCommand cmd = new SqlCommand("INSERT INTO OrderSummary(OrderID,ItemNo,AlbumID,AlbumName,AlbumPrice,Quantity,OrderDate,Customer) VALUES ('" + Session["Orderid"] + "',"
                        + dt.Rows[i]["sno"] + "," + dt.Rows[i]["albumid"] + ",'" + dt.Rows[i]["albumname"] + "'," + dt.Rows[i]["albumprice"] + "," + dt.Rows[i]["itemquantity"] + ",'" +
                        Session["Orderdate"] + "'," + "'" + Session["username"] + "')", con);
   
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Redirect("PlaceOrder.aspx");

                    }
                }
            }

            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }

    
}