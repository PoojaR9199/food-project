using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class custom_bill : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog =fproject; Integrated Security = True");
    private SqlDataReader dr1;
    string st = "";
    int m, count;

    protected void Page_Load(object sender, EventArgs e)
    {

        Panel2.Visible = false;
        Button1.Visible = false;
        

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
    }
    private void bindproducts()
    {
        con.Open();
        string ins = "select order_id,cake,filling,shape,toppings,layer,weight,type,amt from custom where order_id='"+Session["oid"]+"'";
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
                m += Convert.ToInt32(dr.ItemArray[8]);
            }
        }


        lblamount.Text = m.ToString();





    }

    protected void btn_pay_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        btn_pay.Visible = false;
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

        string bl = "update billing set order_id='" + Session["oid"] + "' where order_id='"+Session["oid"]+"'";
        SqlCommand cmd1 = new SqlCommand(bl, conn);
        cmd1.ExecuteNonQuery();



        con.Close();
        Response.Redirect("payment.aspx");

    }
}