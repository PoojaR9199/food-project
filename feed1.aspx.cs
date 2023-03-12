using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class feed1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbluser.Text =Session["username"].ToString();
    }

    protected void btnsend_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog = fproject; Integrated Security = True");
        string ins = "insert into feedback values('" + lbluser.Text + "','" + txtfeed.Text + "')";
        SqlCommand com = new SqlCommand(ins, con);
        con.Open();
        com.ExecuteNonQuery();
       Response.Write("<script>alert('Feedback sent successfully');</script>");

        con.Close();

    }

    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("feedback.aspx");
    }
}