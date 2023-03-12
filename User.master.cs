using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // bindcartnumber();
        if (Session["username"] != null)
        {
            //lblsuccess.Text = "Login success..Welcome " + Session["username"].ToString();
            btnlogout.Visible = true;
            btnlogin.Visible = false;

        }
        else
        {
            btnlogout.Visible = false;
            btnlogin.Visible=true;
             Response.Redirect("~/index.aspx");
        }
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("index.aspx");
        Session["username"] = null;
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
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
