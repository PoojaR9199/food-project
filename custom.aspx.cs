using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class custom : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection("Data Source = LAPTOP - D1GO53D4\\SQLEXPRESS; Initial Catalog = project; Integrated Security = True;");
    string rb1, rb2, rb3, rb4, rb5, tot;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label9.Visible = false;
        DropDownList1.Visible = false;
        Button1.Visible = false;
        var item = from ListItem li in CheckBoxList1.Items
                   where li.Selected == true
                   select li;
        Label9.Text = "";
        foreach(ListItem li in item)
        {
            Label9.Text += li.Text+",";

            
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {

        
        if (RadioButtonList5.SelectedValue == "1")
        {

            DropDownList1.Visible = true;
            
            Button1.Visible = true;
        }
        else if (RadioButtonList5.SelectedValue == "2")
        {
            DropDownList1.Visible = true;
            DropDownList1.Items[0].Enabled = false;
            Button1.Visible = true;
            
        }
        else if (RadioButtonList5.SelectedValue == "3")
        {
            DropDownList1.Visible = true;
            DropDownList1.Items[0].Enabled = false;
            DropDownList1.Items[1].Enabled = false;
            DropDownList1.Items[2].Enabled = false;
            DropDownList1.Items[3].Enabled = false;
            Button1.Visible = true;
            
        }
        else if (RadioButtonList5.SelectedValue == "4")
        {
            DropDownList1.Visible = true;
            DropDownList1.Items[0].Enabled = false;
            DropDownList1.Items[1].Enabled = false;
            DropDownList1.Items[2].Enabled = false;
            DropDownList1.Items[3].Enabled = false;
            DropDownList1.Items[4].Enabled = false;
            Button1.Visible = true;
            
        }
        

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source = LAPTOP-G3L33VN3\\SQLEXPRESS; Initial Catalog = fproject; Integrated Security = True; ");

        if (RadioButtonList1.SelectedValue == "" || RadioButtonList2.SelectedValue == "" || RadioButtonList3.SelectedValue == "" || RadioButtonList5.SelectedValue == "" || RadioButtonList4.SelectedValue == ""||CheckBoxList1.SelectedIndex==-1)
        {
            Response.Write("<script>alert('Please select all the criteria')</script>");
        }
        else
        {
            //rb1 = RadioButtonList1.SelectedItem.Text;
            //rb2 = RadioButtonList1.SelectedItem.Text;
            //rb3 = RadioButtonList1.SelectedItem.Text;
            //rb4 = RadioButtonList1.SelectedItem.Text;
            //rb5 = RadioButtonList1.SelectedItem.Text;

            rb1 = RadioButtonList1.Text;
            rb2 = RadioButtonList2.Text;
            rb3 = RadioButtonList3.Text;
            rb4 = RadioButtonList4.Text;
            rb5 = RadioButtonList5.Text;
            if (RadioButtonList5.SelectedValue == "1")
            {
                Double n = Convert.ToDouble(DropDownList1.SelectedItem.Text.ToString());
                tot = Convert.ToString(500 * n);
            }
            else if (RadioButtonList5.SelectedValue == "2")
            {
                Double n = Convert.ToDouble(DropDownList1.SelectedItem.Text.ToString());
                tot = Convert.ToString(1000 * n);
            }
            else if (RadioButtonList5.SelectedValue == "3")
            {
                Double n= Convert.ToDouble(DropDownList1.SelectedItem.Text.ToString());
                tot = Convert.ToString(1500 * n);
            }
            else if (RadioButtonList5.SelectedValue == "4")
            {
                Double n= Convert.ToDouble(DropDownList1.SelectedItem.Text.ToString());
                tot = Convert.ToString(2000 * n);
            }
            string ddw = DropDownList1.Text;
            if (imgUp.HasFile)
            {
                string filename = imgUp.PostedFile.FileName;
                string filepath = "upload/" + imgUp.FileName;
                imgUp.PostedFile.SaveAs(Server.MapPath("~/upload/") + filename);

                string ins = "Insert into custom(order_id,cake,filling,shape,toppings,layer,weight,image,type,amt) values('"+Session["oid"]+"','" + rb1 + "','" + rb2 + "','" + rb3 + "','" + Label9.Text + "','" + rb5 + "','" + ddw + "','" + filepath + "','" + rb4 + "','" + tot + "')";
                SqlCommand cmd = new SqlCommand(ins, con);
                con.Open();
                cmd.ExecuteNonQuery();
                
                string ns = "insert into billing(umail,pname,player,pwgt,ptype,subtotal)values('" + Session["username"] + "','Custom Cake','" + rb5 + "','" + ddw + "','" + rb4 + "','" + tot + "')";
                SqlCommand cmd2 = new SqlCommand(ns, con);
                cmd2.ExecuteNonQuery();
                con.Close();

                MessageBox.Show("Product added successfully");
                Response.Redirect("custom_bill.aspx");
                //Response.Write("<script>alert('Product added successfully');</script>");
            }

            


        }
    }




   
    }
