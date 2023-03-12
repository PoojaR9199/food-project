using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class myorders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");
        con.Open();
        string ins = "select order_id,name,address,pin,email,mobile,d_date,total,status from orders where status='Ordered' and email='" + Session["username"] + "'";
        SqlCommand cmd = new SqlCommand(ins, con);
        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
        {
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = true;
    }
}