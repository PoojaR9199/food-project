using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

public partial class signup1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RangeValidator1.MinimumValue = DateTime.Now.AddYears(-65).ToShortDateString();
        RangeValidator1.MaximumValue = DateTime.Now.AddYears(-18).ToShortDateString();
        if (!IsPostBack)
        {
            generate_autoid();
        }

    }
    private void generate_autoid()
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True;");
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from signup", con);
        int i = Convert.ToInt32(cmd.ExecuteScalar()) + 101;
        TextBox9.Text = i.ToString();

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True;");
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "select uemail from signup where uemail=@uemail";
        cmd.Parameters.AddWithValue("@uemail",TextBox3.Text);
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            MessageBox.Show("Email Already Exists,Enter Different Email Address ");
            TextBox3.Text = "";
        }
        else
        {
            dr.Close();
           // SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True;");
            string ins = "insert into signup(uid,uname,upho,uadd,udob,uemail,upass,usq,uans,utype)values('" + TextBox9.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox8.Text + "','" + TextBox4.Text + "','" + TextBox3.Text + "','" + TextBox6.Text + "','" + ddlsq.Text + "','" + TextBox7.Text + "','user')";
            SqlCommand cmd1 = new SqlCommand(ins, con);
            //con.Open();
            cmd1.ExecuteNonQuery();
            MessageBox.Show("Registered successfully");
           // Response.Write("<script>alert('user is registered successfully....login to continue..')</script>");
            Response.Redirect("login.aspx");
            Session["uid"] = TextBox9.Text;
            con.Close();
        }
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}