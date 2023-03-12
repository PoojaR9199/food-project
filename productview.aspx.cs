﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class productview : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True;");
    private object pname;
    private SqlDataReader dr;
    string od = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindProductImage();
            bindPDetails();
        }
    }

    private void bindPDetails()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["pid"]);
        con.Open();
        using (SqlCommand cmd = new SqlCommand("select pname,pdesc,pprice from product1 where pid='" + PID + "'", con))
        {
            cmd.CommandType = CommandType.Text;
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                rptrpdetails.DataSource = dt;
                rptrpdetails.DataBind();
            }

        }
    }

    private void bindProductImage()
    {
        Int64 pid= Convert.ToInt64(Request.QueryString["pid"]);

        using (SqlCommand cmd = new SqlCommand("select pimage from product1 where pid='" + pid + "'", con))
        {
            cmd.CommandType = CommandType.Text;
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                rptrimage.DataSource = dt;
                rptrimage.DataBind();
            }
        }

    }
    protected string GetActiveImgClass(int ItemIndex)
    {
        if (ItemIndex == 0)
        {
            return "active";
        }
        else
        {
            return "";
        }
    }



    //protected void btnaddtocart_Click(object sender, EventArgs e)
    //{
    //    String SelectedType = string.Empty;
    //    foreach (RepeaterItem item in rptrpdetails.Items)
    //    {
    //        if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
    //        {
    //            var rbtype = item.FindControl("RadioButtonList1") as RadioButtonList;
    //            SelectedType= rbtype.SelectedValue;
    //            var lblerror = item.FindControl("lblerror") as Label;
    //            lblerror.Text = "";
    //        }
    //    }
    //    if (SelectedType != "")
    //    {
    //        Int64 pid = Convert.ToInt64(Request.QueryString["pid"]);
    //        if (Request.Cookies["cartpid"] != null)
    //        {
    //            string cookiepid = Request.Cookies["cartpid"].Value.Split('=')[1];
    //            cookiepid = cookiepid + "," + pid + "-" + SelectedType;
    //            HttpCookie CartProducts = new HttpCookie("cartpid");
    //            CartProducts.Values["cartpid"] = cookiepid;
    //            CartProducts.Expires = DateTime.Now.AddDays(30);
    //            Response.Cookies.Add(CartProducts);
    //        }
    //        else
    //        {
    //            HttpCookie CartProducts = new HttpCookie("cartpid");
    //            CartProducts.Values["cartpid"] = pid.ToString() + "-" + SelectedType;
    //            CartProducts.Expires = DateTime.Now.AddDays(30);
    //            Response.Cookies.Add(CartProducts);
    //        }
    //        Response.Redirect("~/productview.aspx?pid="+pid);
    //    }
    //    else
    //    {
    //        foreach (RepeaterItem item in rptrpdetails.Items)
    //        {
    //            if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
    //            {
    //                var lblerror = item.FindControl("lblerror") as Label;
    //                lblerror.Text = "Please select a Cake-type";
    //            }
    //        }

    //    }
    //}



    protected void btnaddtocart_Click1(object sender, EventArgs e)
    {

        string cont;
        cont = Session["username"].ToString();
        string ddlst1, ddlst2;


        String SelectedType = string.Empty;
        foreach (RepeaterItem item in rptrpdetails.Items)
        {
            if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
            {
                Int64 pid = Convert.ToInt64(Request.QueryString["pid"]);
                var rbtype = item.FindControl("RadioButtonList1") as RadioButtonList;
                SelectedType = rbtype.SelectedItem.Text;
                var dl1 = item.FindControl("DropDownList1") as DropDownList;
                var dl2 = item.FindControl("DropDownList2") as DropDownList;

                ddlst1 = dl1.SelectedValue;
                ddlst2 = dl2.SelectedValue;

                con.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "select pprice from product1 where pid='" + pid + "'";
                cmd1.Connection = con;
                dr = cmd1.ExecuteReader();
                dr.Read();
                int d = dr.GetInt32(0);
                con.Close();
                int ot = Convert.ToInt32(ddlst1) * Convert.ToInt32(ddlst2) * d;
                string ins = "insert into cart(umail,pname,pprice,pimage,pwgt,pqty,ptype,subtotal,pid)values('" + cont + "',(select pname from product1 where pid='" + pid + "'),(select pprice from product1 where pid='" + pid + "'),(select pimage from product1 where pid='" + pid + "'),'" + ddlst1 + "','" + ddlst2 + "','" + SelectedType + "','" + ot + "','" + pid + "')";
                // string ins = "insert into cart(umail,pname,pprice,pwgt,pqty,ptype)values('" +cont+"','"+name+"','" + price + "','"+ddlst1+"','"+ddlst2+ "','" + SelectedType + "')";
                SqlCommand cmd = new SqlCommand(ins, con);
                con.Open();
                cmd.ExecuteNonQuery();
                string ns = "insert into billing(umail,pname,pwgt,pqty,ptype,subtotal,pid)values('" + cont + "',(select pname from product1 where pid='" + pid + "'),'" + ddlst1 + "','" + ddlst2 + "','" + SelectedType + "','" + ot + "','" + pid + "')";
                SqlCommand cmd2 = new SqlCommand(ns, con);
                cmd2.ExecuteNonQuery();
                con.Close();

                var lblerror = item.FindControl("lblerror") as Label;
                lblerror.Text = "";
            }
        }
        if (SelectedType != "")
        {
            Int64 pid = Convert.ToInt64(Request.QueryString["pid"]);
            if (Request.Cookies["cartpid"] != null)
            {
                string cookiepid = Request.Cookies["cartpid"].Value.Split('=')[1];
                cookiepid = cookiepid + "," + pid + "-" + SelectedType;
                HttpCookie CartProducts = new HttpCookie("cartpid");
                CartProducts.Values["cartpid"] = cookiepid;
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);
            }
            else
            {
                HttpCookie CartProducts = new HttpCookie("cartpid");
                CartProducts.Values["cartpid"] = pid.ToString() + "-" + SelectedType;
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);
            }
            Response.Redirect("~/productview.aspx?pid=" + pid);
        }
        else
        {
            foreach (RepeaterItem item in rptrpdetails.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    var lblerror = item.FindControl("lblerror") as Label;
                    lblerror.Text = "Please select a Cake-type";
                }
            }

        }
    }
    }





   