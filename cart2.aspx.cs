using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class cart2 : System.Web.UI.Page
{
    private SqlDataReader dr1;

    //private SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindCartP();
        }
           
        
    }

    private void bindCartP()
    {


        int CartTotal = 0;
        
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True;");

        //Int64 PID = Convert.ToInt64(Request.QueryString["pid"]);

        con.Open();
        string ins = "select pname,pprice,pimage,pwgt,pqty,ptype,subtotal from cart where umail='" + Session["username"] + "'";
        SqlCommand cmd = new SqlCommand(ins, con);
        //cmd.CommandType = CommandType.Text;

        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
        {
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        //foreach (RepeaterItem item in Repeater1.Items)
        //{


        Int64 pid = Convert.ToInt64(Request.QueryString["pid"]);
        
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select subtotal from cart where umail='" + Session["username"] + "'";
        cmd1.Connection = con;
        dr1 = cmd1.ExecuteReader();
        while (dr1.Read())
        {
            for (int i = 0; i < dr1.FieldCount; i++)
            {
                int t = Convert.ToInt32(dr1.GetString(i));
                CartTotal = CartTotal + t;
                spancarttotal.InnerText = CartTotal.ToString();
                carttotal.InnerText = CartTotal.ToString();
            }
        }
            con.Close();

            //foreach (RepeaterItem item in Repeater1.Items)
            //{
            //    if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
            //    {
            //        Int64 pid = Convert.ToInt64(Request.QueryString["pid"]);
            //        con.Open();
            //        SqlCommand cmd1 = new SqlCommand();
            //        cmd1.CommandType = CommandType.Text;
            //        cmd1.CommandText = "select subtotal from cart where umail='" + Session["username"] + "'";
            //        cmd1.Connection = con;
            //        dr = cmd1.ExecuteReader();
            //        dr.Read();


            //        int t = Convert.ToInt32(dr.GetString(0));
            //        CartTotal = CartTotal + t;


            //        spancarttotal.InnerText = CartTotal.ToString();
            //        //dr = cmd1.ExecuteReader();
            //        //dr.Read();
            //        //int t = Convert.ToInt32(dr.GetString(0));
            //        //CartTotal += t;
            //        //spancarttotal.InnerText = CartTotal.ToString();

            //    }


        }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True;");
        con.Open();
        
        
        string ins = "select pid from cart where umail='" + Session["username"] + "'";
        SqlCommand cmd1 = new SqlCommand(ins, con);
        
        dr1 = cmd1.ExecuteReader();
        
        while (dr1.Read())
        {
            SqlConnection con2 = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True;");
            con2.Open();
            for (int i = 0; i < dr1.FieldCount; i++)
            {
                int t = Convert.ToInt32(dr1.GetInt32(i));
                string ins1 = "delete from cart where umail='" + Session["username"] + "' and pid='" + t + "'";
                SqlCommand cmd2 = new SqlCommand(ins1, con2);
                //int t = Convert.ToInt32(dr.GetString(i));
                //CartTotal = CartTotal + t;
                //spancarttotal.InnerText = CartTotal.ToString();
                //carttotal.InnerText = CartTotal.ToString();
                cmd2.ExecuteNonQuery();
                Response.Redirect("cart2.aspx");
               
            }
        }
        con.Close();







        //SqlConnection con = new SqlConnection("Data Source=DESKTOP-R2RVAOK\\SQLEXPRESS01;Initial Catalog=fproject;Integrated Security=True;");

        //Int64 pid = Convert.ToInt64(Request.QueryString["pid"]);
        //con.Open();
        //string ins = "delete from cart where umail='" + Session["username"] + "' and pid='" + pid + "'";
        //SqlCommand cmd1 = new SqlCommand(ins,con);
        //cmd1.ExecuteNonQuery();
        //Response.Write("<script>alert('login successfull..');location.href='products.aspx'</script>");
        //con.Close();


        //string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];

        //Button btn = (Button)(sender);

        //string PIDSIZE = btn.CommandArgument;

        //List<String> CookiePIDList = CookiePID.Split(',').Select(i => i.Trim()).Where(i => i != string.Empty).ToList();
        //CookiePIDList.Remove(PIDSIZE);
        //string CookiePIDUpdated = String.Join(",", CookiePIDList.ToArray());
        //if (CookiePIDUpdated == "")
        //{
        //    HttpCookie CartProducts = Request.Cookies["CartPID"];
        //    CartProducts.Values["CartPID"] = null;
        //    CartProducts.Expires = DateTime.Now.AddDays(-1);
        //    Response.Cookies.Add(CartProducts);
        //}
        //else
        //{
        //    HttpCookie CartProducts = Request.Cookies["CartPID"];
        //    CartProducts.Values["CartPID"] = CookiePIDUpdated;
        //    CartProducts.Expires = DateTime.Now.AddDays(30);
        //    Response.Cookies.Add(CartProducts);
        //}
        //Response.Redirect("~/cart2.aspx");
    }
    protected void btnBuy_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Response.Redirect("~/billing.aspx");
        }
        else
        {
            Response.Redirect("~/login.aspx?rurl=cart2");
        }
    }
}




   


   
