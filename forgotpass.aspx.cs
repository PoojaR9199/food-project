﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class forgotpass : System.Web.UI.Page
{
   // string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
       lblsq.Visible = false;
        qst.Visible = false;
        txtans.Visible = false;
        Button2.Visible = false;
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
            Button2.Visible = true;
            string qry = "select usq from signup";
            SqlCommand cmd1 = new SqlCommand(qry, con);
          
            while(dr.Read())
            {
                qst.Text = dr.GetValue(7).ToString();
            }
        }
        else
        {
            
            lblmsg.Text = "Email not registered";
            lblmsg.ForeColor = System.Drawing.Color.Red;


        }
        con.Close();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

        
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True;");
            con.Open();
            SqlCommand cmd2;
        string lsq,tans, upw;
        lsq = qst.Text;
        tans = txtans.Text;
        upw = textpass.Text;
        string q = "update [signup] set [upass]='" + upw + "' where uans='" + tans + "' and uemail='"+txtemail.Text+"'";
        cmd2 = new SqlCommand(q, con);
        
        cmd2.ExecuteNonQuery();
            Response.Write("<script>alert('Password updated');location.href='login.aspx'</script>");
          
        }
        catch
        {
           // lblmsg2.Visible = true;
        }
    }
}