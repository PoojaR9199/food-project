using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;

public partial class vieworders : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");

    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        con.Open();
        string ins = "select order_id,name,address,pin,email,mobile,d_date,total,status from orders where status='Ordered'";
        SqlCommand cmd = new SqlCommand(ins, con);
        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
        {
            DataTable dt = new DataTable();
            sda.Fill(dt);
            //GridView1.DataSource = dt;


        }
    }
}