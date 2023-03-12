using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindod();
        //bindcartnumber();
        if (Session["username"] != null)
        {
            btnlogout.Visible = true;
            btnlogin.Visible = false;
            lblsuccess.Text = "Login success..Welcome " + Session["username"].ToString();

        }
        else
        {
            btnlogout.Visible = false;
            btnlogin.Visible = true;
            //Response.Redirect("login.aspx");
        }
    }

    private void bindod()
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");

        con.Open();
        SqlCommand com = new SqlCommand("select count(*) from orders", con);
        int i = Convert.ToInt32(com.ExecuteScalar()) + 1001;
        Label1.Text = i.ToString();
        Session["oid"] = Label1.Text;
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session["username"] = null;
        Response.Redirect("~/index.aspx");
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/login.aspx");
    }
    //public void bindcartnumber()
    //{
    //    if (Request.Cookies["cartid"] != null)
    //    {
    //        string cookiepid = Request.Cookies["cartpid"].Value.Split('=')[1];
    //        string[] productarray = cookiepid.Split(',');
    //        int productcount = productarray.Length;
    //        pcount.InnerText = productcount.ToString();
    //    }
    //    else
    //    {
    //        pcount.InnerText = 0.ToString();
    //    }
    //}
}