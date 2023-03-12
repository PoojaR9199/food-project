using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class cart3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindCartP();
        }
    }

    private void bindCartP()
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True;");

        //Int64 PID = Convert.ToInt64(Request.QueryString["pid"]);

        con.Open();
        string ins = "select pname,pprice,pimage,pwgt,pqty,ptype from cart where umail='" + Session["username"] + "'";
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

    protected void btnremovecart_Click(object sender, EventArgs e)
    {
        Int64 pid = Convert.ToInt64(Request.QueryString["pid"]);
        string ins2="delete from cart where umail='"+ Session["username"] + "' and pid='"+pid+"'";
    }
}