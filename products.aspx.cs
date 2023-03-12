using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //generateid();
    }

    //private void generateid()
    //{
    //    SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");

    //    con.Open();
    //    SqlCommand com = new SqlCommand("select count(*) from cart1", con);
    //    int i = Convert.ToInt32(com.ExecuteScalar()) + 1001;
    //    Label4.Text = i.ToString();
    //    Session["oid"] = Label4.Text;
    //}
}