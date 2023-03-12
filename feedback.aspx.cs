using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindfeedP();
        }
    }
    private void bindfeedP()
    {

        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True;");

        //Int64 PID = Convert.ToInt64(Request.QueryString["pid"]);

        con.Open();
        string ins = "select umail,feedback from feedback";
        SqlCommand cmd = new SqlCommand(ins, con);
        //cmd.CommandType = CommandType.Text;

        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
        {
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }



    }

    protected void btnfeed_Click(object sender, EventArgs e)
    {
        Response.Redirect("feed1.aspx");
    }
}