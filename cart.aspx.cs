using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class cart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True;");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindPCart();
        }
    }

    private void bindPCart()
    {
        if (Request.Cookies["cartpid"] != null)
        {
            

            string cookiedata = Request.Cookies["cartpid"].Value.Split('=')[1];
            string[] cookieDataArray = cookiedata.Split(',');
            if (cookieDataArray.Length > 0)
            {
                DataTable dt = new DataTable();
                Int64 carttotal = 0;
                //Int64 total = 0;
                for (int i = 0; i < cookieDataArray.Length; i++)
                {
                    string PID = cookieDataArray[i].ToString().Split('-')[0];
                    string typeID = cookieDataArray[i].ToString().Split('-')[1];
                    //string wgtID= cookieDataArray[i].ToString().Split('-')[2];
                    //string qtyID=cookieDataArray[i].ToString().Split('-')[3];
                    SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True;");

                    //Int64 PID = Convert.ToInt64(Request.QueryString["pid"]);

                    con.Open();
                    string ins = "select pname,pprice,pimage,pwgt,pqty,ptype from cart where umail='" + Session["username"] + "'";
                    SqlCommand cmd = new SqlCommand(ins, con);
                    //cmd.CommandType = CommandType.Text;

                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {

                        sda.Fill(dt);

                    }
                }
               // carttotal +=;
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            else
            {

            }
        }


    }
    protected void btnremovecart_Click(object sender, EventArgs e)
    {

    }
}
