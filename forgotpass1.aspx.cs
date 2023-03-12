using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

public partial class forgotpass1 : System.Web.UI.Page
{
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblsq.Visible = false;
        qst.Visible = false;
        txtans.Visible = false;
        Button2.Visible = false;
        Button3.Visible = false;
        textpass.Visible =false;
        textcpass.Visible = false;
        RequiredFieldValidator1.Visible = false;
        RequiredFieldValidator2.Visible = false;

        //lblmsg2.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True;");
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from signup where uemail=@uemail";
        cmd.Parameters.AddWithValue("@uemail", txtemail.Text);
        
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            lblsq.Visible = true;
            qst.Visible = true;
            txtans.Visible = true;
            Button1.Visible = false;
            Button2.Visible = false;
            Button3.Visible = true;
           
            string qry = "select usq from signup";
            SqlCommand cmd1 = new SqlCommand(qry, con);

            while (dr.Read())
            {
                qst.Text = dr.GetValue(7).ToString();
            }
        }
        else
        {
            MessageBox.Show("Enter Email-id ");
           // lblmsg.Text = "Email not registered";
           // lblmsg.ForeColor = System.Drawing.Color.Red;


        }
        con.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
       
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True;");
        con.Open();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "select * from signup where uans=@uans and uemail='"+txtemail.Text+"' and usq='" + qst.Text + "'";
        cmd2.Parameters.AddWithValue("@uans", txtans.Text);
        cmd2.Connection = con;
        SqlDataReader dr = cmd2.ExecuteReader();
        if (dr.HasRows)
        {
            textpass.Visible = true;
            textcpass.Visible = true;
            Button2.Visible = true;
            lblmsg1.Visible = true;
            Button1.Visible = false;
            qst.Visible = true;
            lblsq.Visible = true;
            txtans.Visible = true;
            Button3.Visible = false;
            //RequiredFieldValidator1.Visible = true;
            //RequiredFieldValidator2.Visible = true;

            // RequiredFieldValidator5.Visible = false;
            // RequiredFieldValidator8.Visible = false;
            qry = "select uans from signup ";
            SqlCommand cmd1 = new SqlCommand(qry, con);
            while (dr.Read())
            {
                lblmsg2.Visible = false;
                lblmsg1.Text = "Reset your password now";
                lblmsg1.ForeColor = System.Drawing.Color.White;

            }

        }
        else
        {
            lblsq.Visible = true;
            qst.Visible = true;
            txtans.Visible = true;
            Button3.Visible = true;
            lblmsg2.Text = "sorry wrong answer Try again!";
            lblmsg2.ForeColor = System.Drawing.Color.Red;
            txtans.Text = "";
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (textpass.Text == "" || textcpass.Text == "")
        {
            lblsq.Visible = true;
            qst.Visible = true;
            txtans.Visible = true;
            lblmsg1.Visible = true;
            textcpass.Visible = true;
            textpass.Visible = true;
            Button2.Visible = true;
            MessageBox.Show("Enter all the fields ");
        }
        else
        { 
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True;");
            con.Open();
            SqlCommand cmd3;
            string lsq, tans, upw;
            lsq = qst.Text;
            tans = txtans.Text;
            upw = textpass.Text;
            
            string q = "update [signup] set [upass]='" + upw + "' where uemail='"+txtemail.Text+ "'";
            cmd3 = new SqlCommand(q, con);
            cmd3.ExecuteNonQuery();
            MessageBox.Show("Password changed successfully");
            Response.Redirect("login.aspx");
            //Response.Write("<script>alert('Password updated')</script>");
        }
        //catch
        //{
        //    lblmsg2.Visible = true;
        //}
            
        }

        
        ////{   RequiredFieldValidator1.Visible = true;
        ////    RequiredFieldValidator2.Visible = true;
        //    lblmsg2.Visible = true;
        

    }
