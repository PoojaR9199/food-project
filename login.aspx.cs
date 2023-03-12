using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True;");
        con.Open();
            SqlCommand cmd = new SqlCommand("select * from signup where uemail = @uemail and upass = @upass",con);
            cmd.Parameters.AddWithValue("@uemail", txt1.Text);
            cmd.Parameters.AddWithValue("@upass", txt2.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
            string utype;
            utype = dt.Rows[0][9].ToString().Trim();
            if(utype=="user")
            {
                Session["username"] = txt1.Text;
                Response.Write("<script>alert('login successfull..');location.href='home.aspx'</script>");
            }
            if (utype == "admin")
            {
                Session["username"] = txt1.Text;
                Response.Write("<script>alert('login successfull..');location.href='adminhome.aspx'</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('email Id or password is incorrect')</script>");
        }


        //Response.Write("<script>alert('successfull')</script>");
        clr();
        con.Close();
          
        

        //SqlConnection con = new SqlConnection("Data Source=DESKTOP-R2RVAOK\\SQLEXPRESS01;Initial Catalog=project;Integrated Security=True;");
        //con.Open();
        //SqlCommand cmd = new SqlCommand("select * from signup where uemail=@uemail and upass=@upass", con);
        //cmd.Parameters.AddWithValue("@uemail", txt1.Text);
        //cmd.Parameters.AddWithValue("@upass", txt2.Text);
        //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        //if (dt.Rows.Count != 0)
        //{
        //    Session["username"] = txt1.Text;
        //    Response.Redirect("~/Userhome.aspx");
        //    // Response.Write("<script>alert('successfull')</script>");

        //}
        //else
        //{
        //    Response.Write("<script>alert('email Id or password is incorrect')</script>");
        //}

      

    }
    private void clr()
    {
        txt1.Text = string.Empty;
        txt2.Text = string.Empty;
    }


}