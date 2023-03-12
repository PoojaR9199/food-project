using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnadminlogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
        Session["username"] = null;
    }
}
