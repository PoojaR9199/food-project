using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class billing : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");
    //private SqlDataReader dr1;
    //private SqlDataReader dr2;
    //private SqlDataReader dr3;
    //string a, b, c, d, e, f;
    //int m;
    //string st = "";

    //int count;

    //protected void Page_Load(object sender, EventArgs e)
    //{
    //    Panel2.Visible = false;
    //    Button1.Visible = false;
    //    GridView1.Visible = true;
    //    DateTime dt = DateTime.Now;
    //    lbl_date.Text = Convert.ToString(dt);


    //    //lblcid.Text = (String)Session["uid"];
    //    //lblbid.Text = (String)Session["bid"];
    //    //SqlConnection con = new SqlConnection("Data Source=DESKTOP-R2RVAOK\\SQLEXPRESS01; Initial Catalog =fproject; Integrated Security = True");
    //    con.Open();
    //    string ins1 = "select uid,uname from signup where uemail='" + Session["username"] + "'";
    //    SqlCommand cmd1 = new SqlCommand(ins1, con);
    //    dr1 = cmd1.ExecuteReader();
    //    while (dr1.Read())
    //    {
    //        lblcid.Text = Convert.ToString(dr1.GetDecimal(0));
    //        lblname.Text = dr1.GetString(1);
    //    }

    //    lblbookdate.Text = Convert.ToString(dt);
    //    con.Close();
    //    bindproducts();








    //    //lblamount.Text = Convert.ToString(Convert.ToInt64(lbl_vcost.Text) + Convert.ToInt64(lbl_dcost.Text) + Convert.ToInt64(lbl_lscost.Text) + Convert.ToInt64(lbl_fcost.Text));
    //    //lbladv.Text = Convert.ToString(Convert.ToInt64(lblamount.Text) * 0.4);
    //    //lblrem.Text = Convert.ToString(Convert.ToInt64(lblamount.Text) - Convert.ToInt64(lbladv.Text));

    //    if (!IsPostBack)
    //    {
    //        //generate_auto_id();


    //    }

    //}



    //private void bindproducts()
    //{
    //    con.Open();
    //    string ins = "select umail,pname,pprice,pimage,pwgt,pqty,ptype,subtotal from cart where umail='" + Session["username"] + "'";
    //    SqlCommand cmd = new SqlCommand(ins, con);
    //    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
    //    {
    //        DataTable dt = new DataTable();
    //        sda.Fill(dt);
    //        GridView1.DataSource = dt;
    //        GridView1.DataBind();
    //        count = GridView1.Rows.Count;
    //        foreach (DataRow dr in dt.Rows)
    //        {
    //            m += Convert.ToInt32(dr.ItemArray[7]);
    //        }
    //    }


    //    lblamount.Text = m.ToString();


    //}

    ////private void generate_auto_id()
    ////{
    ////    SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");

    ////    con.Open();
    ////    SqlCommand com = new SqlCommand("select count(*) from orders", con);
    ////    int i = Convert.ToInt32(com.ExecuteScalar()) + 1001;
    ////    lbloid.Text = i.ToString();
    ////    Session["oid"] = lbloid.Text;
    ////}

    ////protected void btn_pay_Click(object sender, EventArgs e)
    ////{
    ////    Panel1.Visible = false;
    ////    Panel2.Visible = true;
    ////    btn_pay.Visible = false;
    ////    Button1.Visible = true;
    ////    SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");
    ////    con.Open();
    ////    string ins1 = "select uname,uemail,upho,uadd from signup where uemail='" + Session["username"] + "'";
    ////    SqlCommand cmd = new SqlCommand(ins1, con);
    ////    dr1 = cmd.ExecuteReader();
    ////    while (dr1.Read())
    ////    {
    ////        txtName.Text = dr1.GetString(0);
    ////        TextBox3.Text = dr1.GetString(1);
    ////        txtMobileNumber.Text = Convert.ToString(dr1.GetDecimal(2));
    ////        txtAddress.Text = dr1.GetString(3);
    ////    }
    ////}

    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    //string pn, pt;
    //    //    int pp, pw, pq;

    //    //    string ins = "select pname,pprice,pwgt,pqty,ptype from cart where umail='" + Session["username"] + "'";
    //    //    SqlCommand cmd = new SqlCommand(ins, con);
    //    //    dr2 = cmd.ExecuteReader();
    //    //    while(dr2.Read())
    //    //    {
    //    //        Label9.Text = dr2.GetString(0);
    //    //       Label10.Text=Convert.ToString(dr2.GetValue(1));
    //    //        Label11.Text= Convert.ToString(dr2.GetValue(2));
    //    //        Label12.Text= Convert.ToString(dr2.GetValue(3));
    //    //        Label8.Text = dr2.GetString(4);


    //    //    }
    //    //    con.Close();

    //    SqlConnection conn = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");
    //    con.Open();
    //    string or = "insert into orders values('" + Session[""] + "','" + txtName.Text + "','" + txtAddress.Text + "','" + txtPinCode.Text + "', '" + TextBox3.Text + "','" + txtMobileNumber.Text + "','" + TextBox4.Text + "','" + lblamount.Text + "','" + st + "','" + lblcid.Text + "')";
    //    SqlCommand cmd1 = new SqlCommand(or, con);
    //    cmd1.ExecuteNonQuery();
    //    con.Close();
    //    Response.Redirect("payment.aspx");

    //}

    //protected void btn_pay_Click1(object sender, EventArgs e)
    //{
    //    Panel1.Visible = false;
    //    Panel2.Visible = true;
    //    btn_pay.Visible = false;
    //    Button1.Visible = true;
    //    SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");
    //    con.Open();
    //    string ins1 = "select uname,uemail,upho,uadd from signup where uemail='" + Session["username"] + "'";
    //    SqlCommand cmd = new SqlCommand(ins1, con);
    //    dr3 = cmd.ExecuteReader();
    //    while (dr3.Read())
    //    {
    //        txtName.Text = dr3.GetString(0);
    //        TextBox3.Text = dr3.GetString(1);
    //        txtMobileNumber.Text = Convert.ToString(dr3.GetDecimal(2));
    //        txtAddress.Text = dr3.GetString(3);
    //    }
    //}

    SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");
    private SqlDataReader dr1;
    private SqlDataReader dr2;
    string a, b, c, d, e, f;
    int m;
    string st = "";
    string oi = "";
    int count;

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Button1.Visible = false;
        GridView1.Visible = true;
        DateTime dt = DateTime.Now;
        lbl_date.Text = Convert.ToString(dt);

        lbloid.Text = Session["oid"].ToString();

        //lblcid.Text = (String)Session["uid"];
        //lblbid.Text = (String)Session["bid"];
        //SqlConnection con = new SqlConnection("Data Source=DESKTOP-R2RVAOK\\SQLEXPRESS01; Initial Catalog =fproject; Integrated Security = True");
        con.Open();
        string ins1 = "select uid,uname from signup where uemail='" + Session["username"] + "'";
        SqlCommand cmd1 = new SqlCommand(ins1, con);
        dr1 = cmd1.ExecuteReader();
        while (dr1.Read())
        {
            lblcid.Text = Convert.ToString(dr1.GetDecimal(0));
            lblname.Text = dr1.GetString(1);
        }

        lblbookdate.Text = Convert.ToString(dt);
        con.Close();
        bindproducts();









        //lblamount.Text = Convert.ToString(Convert.ToInt64(lbl_vcost.Text) + Convert.ToInt64(lbl_dcost.Text) + Convert.ToInt64(lbl_lscost.Text) + Convert.ToInt64(lbl_fcost.Text));
        //lbladv.Text = Convert.ToString(Convert.ToInt64(lblamount.Text) * 0.4);
        //lblrem.Text = Convert.ToString(Convert.ToInt64(lblamount.Text) - Convert.ToInt64(lbladv.Text));

        if (!IsPostBack)
        {
            //generate_auto_id();


        }

    }



    private void bindproducts()
    {
        con.Open();
        string ins = "select umail,pname,pprice,pimage,pwgt,pqty,ptype,subtotal from cart where umail='" + Session["username"] + "'";
        SqlCommand cmd = new SqlCommand(ins, con);
        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
        {
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            count = GridView1.Rows.Count;
            foreach (DataRow dr in dt.Rows)
            {
                m += Convert.ToInt32(dr.ItemArray[7]);
            }
        }


        lblamount.Text = m.ToString();


    }

    //    private void generate_auto_id()
    //{
    //    SqlConnection con = new SqlConnection("Data Source=DESKTOP-R2RVAOK\\SQLEXPRESS01; Initial Catalog =fproject; Integrated Security = True");

    //    con.Open();
    //    SqlCommand com = new SqlCommand("select count(*) from orders", con);
    //    int i = Convert.ToInt32(com.ExecuteScalar()) + 1001;
    //    lbloid.Text = i.ToString();
    //    Session["oid"] = lbloid.Text;
    //}

    protected void btn_pay_Click(object sender, EventArgs e)
    {
        //Panel1.Visible = false;
        //Panel2.Visible = true;
        //btn_pay.Visible = false;
        //Button1.Visible = true;
        //SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");
        //con.Open();
        //string ins1 = "select uname,uemail,upho,uadd from signup where uemail='" + Session["username"] + "'";
        //SqlCommand cmd = new SqlCommand(ins1, con);
        //dr1 = cmd.ExecuteReader();
        //while (dr1.Read())
        //{
        //    txtName.Text = dr1.GetString(0);
        //    TextBox3.Text = dr1.GetString(1);
        //    txtMobileNumber.Text = Convert.ToString(dr1.GetDecimal(2));
        //    txtAddress.Text = dr1.GetString(3);
        //}
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string nt;
        nt = Session["oid"].ToString();
        string cont;
        cont = Session["username"].ToString();
        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");
        conn.Open();
        string or = "insert into orders values('" + Session["oid"] + "','" + txtName.Text + "','" + txtAddress.Text + "','" + txtPinCode.Text + "', '" + TextBox3.Text + "','" + txtMobileNumber.Text + "', '" + TextBox4.Text + "','" + lblamount.Text + "','" + st + "','" + lblcid.Text + "')";
        SqlCommand cmd = new SqlCommand(or, conn);
        cmd.ExecuteNonQuery();

        string bl = "update billing set order_id='" + Session["oid"] + "' where order_id is NULL";
        SqlCommand cmd1 = new SqlCommand(bl, conn);
        cmd1.ExecuteNonQuery();



        con.Close();
        Response.Redirect("payment.aspx");

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Button2.Visible = false;
        Button1.Visible = true;
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");
        con.Open();
        string ins1 = "select uname,uemail,upho,uadd from signup where uemail='" + Session["username"] + "'";
        SqlCommand cmd = new SqlCommand(ins1, con);
        dr1 = cmd.ExecuteReader();
        while (dr1.Read())
        {
            txtName.Text = dr1.GetString(0);
            TextBox3.Text = dr1.GetString(1);
            txtMobileNumber.Text = Convert.ToString(dr1.GetDecimal(2));
            txtAddress.Text = dr1.GetString(3);
        }
    }
}