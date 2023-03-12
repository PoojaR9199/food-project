﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class addcategory : System.Web.UI.Page
{
    String str = "Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            ShowGrid();
            g_autocat();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter("select * from category where cname='" + TextBox1.Text.ToString() + "'", con1);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            Response.Write("<script>alert('This category is already present');</script>");
        }
        else
        {
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into category values (@cid,@cname)", con);
            cmd.Parameters.AddWithValue("@cid", TextBox3.Text);
            cmd.Parameters.AddWithValue("@cname", TextBox1.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('1 record added');</script>");
            TextBox1.Text = "";
            g_autocat();
            ShowGrid();

        }
    }
    private void g_autocat()
    {
        SqlConnection con2 = new SqlConnection(str);
        con2.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from category", con2);
        int i = Convert.ToInt32(cmd.ExecuteScalar()) + 01;
        TextBox3.Text = i.ToString();

}
    public void ShowGrid()
    {
        SqlConnection conn = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter("select * from category", conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    //{
    //    GridView1.PageIndex = e.NewPageIndex;
    //    ShowGrid();
    //}

    //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    //{
    //    GridView1.EditIndex = -1;
    //    ShowGrid();
    //}

    //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
        
    //    int cId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
    //    SqlConnection con1 = new SqlConnection(str);
    //    con1.Open();
    //    SqlCommand cmd1 = new SqlCommand("delete from category where cid=@1", con1);
        
    //    cmd1.Parameters.AddWithValue("@1", cId);
    //    cmd1.ExecuteNonQuery();
    //    con1.Close();
    //    Response.Write("<script>alert('Category deleted successfully');</script>");
    //    ShowGrid();
    //}

    //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    //{
    //    GridView1.EditIndex = e.NewEditIndex;
    //    ShowGrid();
    //}

    //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    //{
    //    GridViewRow row = GridView1.Rows[e.RowIndex];
    //    int cId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
    //    string categoryName = (row.FindControl("TextBox2") as TextBox).Text;
    //    SqlConnection con2 = new SqlConnection(str);
    //    con2.Open();
    //    SqlCommand cmd1 = new SqlCommand("update category set cname=@1 where cid=@2", con2);
    //    cmd1.Parameters.AddWithValue("@1", categoryName);
    //    cmd1.Parameters.AddWithValue("@2", cId);
    //    cmd1.ExecuteNonQuery();
    //    con2.Close();
    //    Response.Write("<script>alert('Category updated successfully');</script>");
    //    GridView1.EditIndex = -1;

    //}


    protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        ShowGrid();
    }

    protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        ShowGrid();
    }

    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        int cId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        SqlConnection con1 = new SqlConnection(str);
        con1.Open();
        SqlCommand cmd1 = new SqlCommand("delete from category where cid=@1", con1);

        cmd1.Parameters.AddWithValue("@1", cId);
        cmd1.ExecuteNonQuery();
        con1.Close();
        Response.Write("<script>alert('Category deleted successfully');</script>");
       
    }

    protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        ShowGrid();
    }

    protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        int cId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        string categoryName = (row.FindControl("TextBox4") as TextBox).Text;
        SqlConnection con2 = new SqlConnection(str);
        con2.Open();
        SqlCommand cmd1 = new SqlCommand("update category set cname=@1 where cid=@2", con2);
        cmd1.Parameters.AddWithValue("@1", categoryName);
        cmd1.Parameters.AddWithValue("@2", cId);
        cmd1.ExecuteNonQuery();
        con2.Close();
        Response.Write("<script>alert('Category updated successfully');</script>");
        GridView1.EditIndex = -1;
    }
}