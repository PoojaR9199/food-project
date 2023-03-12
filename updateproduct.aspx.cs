using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class updateproduct : System.Web.UI.Page
{
    string str = "Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True";
    int productid;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    if (Session["admin"] == null)
        //    {
        //        Response.Redirect("adlogin.aspx");
        //    }
        //    showProduct();
        //}
    }
    public void showProduct()
    {
        SqlConnection con = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter("select * from product1", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        showProduct();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        DropDownlist1.SelectedValue = "select category";
        showProduct();

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        int index = e.NewEditIndex;
        GridViewRow row = (GridViewRow)GridView1.Rows[index];
        Label productID = (Label)row.FindControl("Label1");
        productid = int.Parse(productID.Text.ToString());
        SqlConnection con = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter("select * from product1 where pid='" + productid + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();


    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int index = productid;
        GridViewRow row = (GridViewRow)GridView1.Rows[index];
        FileUpload fu = (FileUpload)row.FindControl("FileUpload1");
        if (fu.HasFile)
        {
            Label productID = (Label)row.FindControl("Label1");
            TextBox pname = (TextBox)row.FindControl("TextBox1");
            TextBox pdesc = (TextBox)row.FindControl("TextBox2");
            TextBox pprice = (TextBox)row.FindControl("TextBox3");
            string pcategory = ((DropDownList)GridView1.Rows[e.RowIndex].Cells[5].FindControl("DropDownlist2")).Text;
            fu.SaveAs(Server.MapPath("~/pimg/") + Path.GetFileName(fu.FileName));
            string pimage = "pimg/" + Path.GetFileName(fu.FileName);
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("update product1 set pname=@1,pdesc=@2,pimage=@3,pprice=@4,pcategory=@5 where pid=@7",con);
            cmd.Parameters.AddWithValue("@1", pname.Text);
            cmd.Parameters.AddWithValue("@2", pdesc.Text);
            cmd.Parameters.AddWithValue("@3", pimage);
            cmd.Parameters.AddWithValue("@4", pprice.Text);
            cmd.Parameters.AddWithValue("@5", pcategory);
            cmd.Parameters.AddWithValue("@7", productID.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            Response.Write("<script>alert('Product updated successfully')</script>");
            showProduct();
            DropDownlist1.SelectedValue = "select category";

        }
        else
        {
            Response.Write("<script>alert('Please select product image')</script>");
        }
    }

    protected void DropDownlist1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string cname = DropDownlist1.SelectedValue.ToString();
        if(cname=="select category")
        {
            showProduct();
        }
        else
        {
            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter("select * from product1 where pcategory='" + cname + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }



    protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        showProduct();
    }

    protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        DropDownlist1.SelectedValue = "select category";
        showProduct();
    }

    protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        int index = e.NewEditIndex;
        GridViewRow row = (GridViewRow)GridView1.Rows[index];
        Label productID = (Label)row.FindControl("Label1");
        productid = int.Parse(productID.Text.ToString());
        SqlConnection con = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter("select * from product1 where pid='" + productid + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    

    protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
    {
        int index = productid;
        GridViewRow row = (GridViewRow)GridView1.Rows[index];
        FileUpload fu = (FileUpload)row.FindControl("FileUpload1");
        if (fu.HasFile)
        {
            Label productID = (Label)row.FindControl("Label1");
            TextBox pname = (TextBox)row.FindControl("TextBox1");
            TextBox pdesc = (TextBox)row.FindControl("TextBox2");
            TextBox pprice = (TextBox)row.FindControl("TextBox3");
            string pcategory = ((DropDownList)GridView1.Rows[e.RowIndex].Cells[5].FindControl("DropDownlist2")).Text;
            fu.SaveAs(Server.MapPath("~/pimg/") + Path.GetFileName(fu.FileName));
            string pimage = "pimg/" + Path.GetFileName(fu.FileName);
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("update product1 set pname=@1,pdesc=@2,pimage=@3,pprice=@4,pcategory=@5 where pid=@7", con);
            cmd.Parameters.AddWithValue("@1", pname.Text);
            cmd.Parameters.AddWithValue("@2", pdesc.Text);
            cmd.Parameters.AddWithValue("@3", pimage);
            cmd.Parameters.AddWithValue("@4", pprice.Text);
            cmd.Parameters.AddWithValue("@5", pcategory);
            cmd.Parameters.AddWithValue("@7", productID.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            Response.Write("<script>alert('Product updated successfully')</script>");
            showProduct();
            DropDownlist1.SelectedValue = "select category";
        }
        }
}