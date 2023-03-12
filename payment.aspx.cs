using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class payment : System.Web.UI.Page
{
    //string exp_month;
    //string exp_year;
    //string status = "Paid";
    //string status1 = "Ordered";
    //string st1 = "";


    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    DateTime dt = DateTime.Now;
    //    lbldate.Text = Convert.ToString(dt);



    //    SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");
    //    con.Open();
    //    string ins2 = "select total,order_id,uid from orders where email='" + Session["username"] + "'";
    //    SqlCommand cmd = new SqlCommand(ins2, con);
    //    DataTable dr = new DataTable();
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    da.Fill(dr);
    //    if (dr.Rows.Count > 0)
    //    {
    //        lbl_amt.Text = dr.Rows[0]["total"].ToString();
    //        lbl_bid.Text = dr.Rows[0]["order_id"].ToString();
    //        lbl_uid.Text = dr.Rows[0]["uid"].ToString();

    //        //lbl_adv.Text = dr.Rows[0]["adv_amt"].ToString();
    //        // txt_adamt.Text = dr.Rows[0]["adv_amt"].ToString();

    //    }
    //    if (!IsPostBack)
    //    {
    //        generate_auto_id();

    //    }



    //}
    //private void generate_auto_id()
    //{
    //    SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");

    //    con.Open();
    //    SqlCommand com2 = new SqlCommand("select count(*) from payment", con);
    //    int i = Convert.ToInt32(com2.ExecuteScalar()) + 3001;
    //    lbl_blid.Text = i.ToString();

    //}

    //protected void btn_pay_Click(object sender, EventArgs e)
    //{
    //    SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");
    //    con.Open();
    //    string ins = "insert into payment values('" + lbl_blid.Text + "','" + lbl_bid.Text + "','" + lbl_uid.Text + "','" + lbl_amt.Text + "','" + Convert.ToInt64(txt_cardnum.Text) + "','" + Convert.ToInt64(txt_cvv.Text) + "','" + exp_month + "','" + Convert.ToInt64(exp_year) + "','" + st1 + "')";
    //    SqlCommand com = new SqlCommand(ins, con);
    //    com.ExecuteNonQuery();

    //    string ins4 = "update payment set status='" + status + "' where bill_id='" + lbl_blid.Text + "'";
    //    SqlCommand com4 = new SqlCommand(ins4, con);

    //    string ins5 = "update orders set status='" + status1 + "' where order_id='" + lbl_bid.Text + "'";
    //    SqlCommand com5 = new SqlCommand(ins5, con);









    //    com4.ExecuteNonQuery();
    //    com5.ExecuteNonQuery();


    //    MessageBox.Show("Payment successfull");
    //    Response.Redirect("myorders.aspx");
    //    con.Close();
    //}

    //protected void drp_month_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    if (drp_month.SelectedIndex == 1)
    //    {
    //        exp_month = drp_month.Text;
    //    }
    //    else if (drp_month.SelectedIndex == 2)
    //    {
    //        exp_month = drp_month.Text;
    //    }
    //    else if (drp_month.SelectedIndex == 3)
    //    {
    //        exp_month = drp_month.Text;
    //    }
    //    else if (drp_month.SelectedIndex == 4)
    //    {
    //        exp_month = drp_month.Text;
    //    }
    //    else if (drp_month.SelectedIndex == 5)
    //    {
    //        exp_month = drp_month.Text;
    //    }
    //    else if (drp_month.SelectedIndex == 6)
    //    {
    //        exp_month = drp_month.Text;
    //    }
    //    else if (drp_month.SelectedIndex == 7)
    //    {
    //        exp_month = drp_month.Text;
    //    }
    //    else if (drp_month.SelectedIndex == 8)
    //    {
    //        exp_month = drp_month.Text;
    //    }
    //    else if (drp_month.SelectedIndex == 9)
    //    {
    //        exp_month = drp_month.Text;
    //    }
    //    else if (drp_month.SelectedIndex == 10)
    //    {
    //        exp_month = drp_month.Text;
    //    }
    //    else if (drp_month.SelectedIndex == 11)
    //    {
    //        exp_month = drp_month.Text;
    //    }
    //    else if (drp_month.SelectedIndex == 12)
    //    {
    //        exp_month = drp_month.Text;
    //    }
    //}

    //protected void drp_year_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //    if (drp_year.SelectedIndex == 1)
    //    {
    //        exp_year = drp_year.Text;
    //    }

    //    else if (drp_year.SelectedIndex == 2)
    //    {
    //        exp_year = drp_year.Text;
    //    }
    //    else if (drp_year.SelectedIndex == 3)
    //    {
    //        exp_year = drp_year.Text;
    //    }
    //    else if (drp_year.SelectedIndex == 4)
    //    {
    //        exp_year = drp_year.Text;
    //    }
    //    else if (drp_year.SelectedIndex == 5)
    //    {
    //        exp_year = drp_year.Text;
    //    }
    //    else if (drp_year.SelectedIndex == 6)
    //    {
    //        exp_year = drp_year.Text;
    //    }
    //    else if (drp_year.SelectedIndex == 7)
    //    {
    //        exp_year = drp_year.Text;
    //    }
    //    else if (drp_year.SelectedIndex == 8)
    //    {
    //        exp_year = drp_year.Text;
    //    }
    //    else if (drp_year.SelectedIndex == 9)
    //    {
    //        exp_year = drp_year.Text;
    //    }
    //    else if (drp_year.SelectedIndex == 10)
    //    {
    //        exp_year = drp_year.Text;
    //    }
    //    else if (drp_year.SelectedIndex == 11)
    //    {
    //        exp_year = drp_year.Text;
    //    }
    //    else if (drp_year.SelectedIndex == 12)
    //    {
    //        exp_year = drp_year.Text;
    //    }
    //    else if (drp_year.SelectedIndex == 13)
    //    {
    //        exp_year = drp_year.Text;
    //    }
    //    else if (drp_year.SelectedIndex == 14)
    //    {
    //        exp_year = drp_year.Text;
    //    }

    //}

    //protected void btn_cancel_Click(object sender, EventArgs e)
    //{
    //    SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");
    //    string ins3 = "delete from orders where order_id='" + lbl_bid.Text + "' and uid='" + lbl_uid.Text + "'";
    //    con.Open();
    //    SqlCommand com3 = new SqlCommand(ins3, con);

    //    com3.ExecuteNonQuery();
    //    //MessageBox.Show("Booking Cancelled!");
    //    //Response.Redirect("my_booking.aspx");
    //    con.Close();
    //}

    string exp_month;
    string exp_year;
    string status = "Paid";
    string status1 = "Ordered";
    string st1 = "";


    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime dt = DateTime.Now;
        lbldate.Text = Convert.ToString(dt);
        lbl_bid.Text = Session["oid"].ToString();



        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");
        con.Open();
        string ins2 = "select total,uid from orders where order_id='" + Session["oid"] + "'";
        SqlCommand cmd = new SqlCommand(ins2, con);
        DataTable dr = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dr);
        if (dr.Rows.Count > 0)
        {
            lbl_amt.Text = dr.Rows[0]["total"].ToString();
            //lbl_bid.Text = dr.Rows[0]["order_id"].ToString();
            lbl_uid.Text = dr.Rows[0]["uid"].ToString();

            //lbl_adv.Text = dr.Rows[0]["adv_amt"].ToString();
            // txt_adamt.Text = dr.Rows[0]["adv_amt"].ToString();

        }
        if (!IsPostBack)
        {
            generate_auto_id();

        }



    }
    private void generate_auto_id()
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");

        con.Open();
        SqlCommand com2 = new SqlCommand("select count(*) from payment", con);
        int i = Convert.ToInt32(com2.ExecuteScalar()) + 3001;
        lbl_blid.Text = i.ToString();

    }

    protected void btn_pay_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");
        con.Open();
        string ins = "insert into payment values('" + lbl_blid.Text + "','" + lbl_bid.Text + "','" + lbl_uid.Text + "','" + lbl_amt.Text + "','" + Convert.ToInt64(txt_cardnum.Text) + "','" + Convert.ToInt64(txt_cvv.Text) + "','" + exp_month + "','" + Convert.ToInt64(exp_year) + "','" + st1 + "')";
        SqlCommand com = new SqlCommand(ins, con);
        com.ExecuteNonQuery();

        string ins4 = "update payment set status='" + status + "' where bill_id='" + lbl_blid.Text + "'";
        SqlCommand com4 = new SqlCommand(ins4, con);
        com4.ExecuteNonQuery();
        string ins5 = "update orders set status='" + status1 + "' where order_id='" + lbl_bid.Text + "'";
        SqlCommand com5 = new SqlCommand(ins5, con);
        com5.ExecuteNonQuery();
        string ins6 = "delete from cart where umail='" + Session["username"] + "'";
        SqlCommand com6 = new SqlCommand(ins6, con);
        com6.ExecuteNonQuery();
        con.Close();



        //Response.Write("<script>alert('Payment successfull')</script>");
        MessageBox.Show("Payment successfull");
        Response.Redirect("myorders.aspx");

    }

    protected void drp_month_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drp_month.SelectedIndex == 1)
        {
            exp_month = drp_month.Text;
        }
        else if (drp_month.SelectedIndex == 2)
        {
            exp_month = drp_month.Text;
        }
        else if (drp_month.SelectedIndex == 3)
        {
            exp_month = drp_month.Text;
        }
        else if (drp_month.SelectedIndex == 4)
        {
            exp_month = drp_month.Text;
        }
        else if (drp_month.SelectedIndex == 5)
        {
            exp_month = drp_month.Text;
        }
        else if (drp_month.SelectedIndex == 6)
        {
            exp_month = drp_month.Text;
        }
        else if (drp_month.SelectedIndex == 7)
        {
            exp_month = drp_month.Text;
        }
        else if (drp_month.SelectedIndex == 8)
        {
            exp_month = drp_month.Text;
        }
        else if (drp_month.SelectedIndex == 9)
        {
            exp_month = drp_month.Text;
        }
        else if (drp_month.SelectedIndex == 10)
        {
            exp_month = drp_month.Text;
        }
        else if (drp_month.SelectedIndex == 11)
        {
            exp_month = drp_month.Text;
        }
        else if (drp_month.SelectedIndex == 12)
        {
            exp_month = drp_month.Text;
        }
    }

    protected void drp_year_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (drp_year.SelectedIndex == 1)
        {
            exp_year = drp_year.Text;
        }

        else if (drp_year.SelectedIndex == 2)
        {
            exp_year = drp_year.Text;
        }
        else if (drp_year.SelectedIndex == 3)
        {
            exp_year = drp_year.Text;
        }
        else if (drp_year.SelectedIndex == 4)
        {
            exp_year = drp_year.Text;
        }
        else if (drp_year.SelectedIndex == 5)
        {
            exp_year = drp_year.Text;
        }
        else if (drp_year.SelectedIndex == 6)
        {
            exp_year = drp_year.Text;
        }
        else if (drp_year.SelectedIndex == 7)
        {
            exp_year = drp_year.Text;
        }
        else if (drp_year.SelectedIndex == 8)
        {
            exp_year = drp_year.Text;
        }
        else if (drp_year.SelectedIndex == 9)
        {
            exp_year = drp_year.Text;
        }
        else if (drp_year.SelectedIndex == 10)
        {
            exp_year = drp_year.Text;
        }
        else if (drp_year.SelectedIndex == 11)
        {
            exp_year = drp_year.Text;
        }
        else if (drp_year.SelectedIndex == 12)
        {
            exp_year = drp_year.Text;
        }
        else if (drp_year.SelectedIndex == 13)
        {
            exp_year = drp_year.Text;
        }
        else if (drp_year.SelectedIndex == 14)
        {
            exp_year = drp_year.Text;
        }

    }

    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");
        string ins3 = "delete from orders where order_id='" + lbl_bid.Text + "' and uid='" + lbl_uid.Text + "'";
        con.Open();
        SqlCommand com3 = new SqlCommand(ins3, con);

        com3.ExecuteNonQuery();
        //MessageBox.Show("Booking Cancelled!");
        //Response.Redirect("my_booking.aspx");
        con.Close();
    }

}