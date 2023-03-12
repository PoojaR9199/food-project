using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class addproduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //if (!IsPostBack)
        //{
        //   if (Session["admin"] == null)
        //  {
        //    Response.Redirect("adlogin.aspx");
        //   }
        //}
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-G3L33VN3\\SQLEXPRESS;Initial Catalog=fproject;Integrated Security=True");

        if (imageUpload.HasFile)
        {
            
            string filename = imageUpload.PostedFile.FileName;
            string filepath = "pimg/" + imageUpload.FileName;
            imageUpload.PostedFile.SaveAs(Server.MapPath("~/pimg/") + filename);

            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into product1 values('" + txtName.Text + "','" + txtDesc.Text + "','" + filepath + "','" + txtPrice.Text + "','" + ddlist.SelectedItem.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Product added successfully');</script>");
            txtName.Text = "";
            txtDesc.Text = "";
            txtPrice.Text = "";


        }
    }
}