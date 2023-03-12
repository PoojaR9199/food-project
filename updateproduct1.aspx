<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateproduct1.aspx.cs" Inherits="updateproduct1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
 
      <meta charset="UTF-8"/>
      <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
      <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
        <title>Delicious Treats</title>
        <script src="https://kit.fontawesome.com/d54f50f266.js"></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
        <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/fontawesome.min.css"> -->

        <!-- <link rel="stylesheet" href="https://pro.fontawesome.com/release/v5.10.0/css/all.css" integrity="sha384-AYmEC3YwScVb3ZcuHtOA9#%dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" > -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" />


        <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />" -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    
    
</head>
<body>
    <form id="form1" runat="server">
         <nav class="navbar navbar-expand-lg navbar-light bg-white py-3 fixed-top">
            <div class="container">
              <a class="navbar-brand" href="#">Delicious Treats</a>
      
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                  
                  <li class="nav-item">
                    <a class="nav-link active" href="adminhome.aspx">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="addcategory.aspx">Add-Category</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="updateproduct.aspx">Update-Products</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">FeedBack</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="login.aspx">Login/SignUp</a>
                  </li>
                    <li class="nav-item">
                      <asp:Button ID="btnadminlogout" runat="server" CssClass="nav-link" BorderStyle="Ridge" Text="Sign Out" OnClick="btnadminlogout_Click" />
                  </li>
                  
                  
                    </ul>
              </div>
            </div>
          </nav>
        <div>
        <br />
            <br />
            <br />
           <center>
        Sort by:&nbsp;
        <asp:DropDownList ID="DropDownlist1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cname" Height="42px" Width="200px" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownlist1_SelectedIndexChanged">
            <asp:ListItem>select category</asp:ListItem>

        </asp:DropDownList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fprojectConnectionString2 %>" SelectCommand="SELECT [cname] FROM [category]"></asp:SqlDataSource>
        <hr />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="5" EmptyDataText="No product to display" OnPageIndexChanging="GridView1_PageIndexChanging1" OnRowCancelingEdit="GridView1_RowCancelingEdit1" OnRowEditing="GridView1_RowEditing1" OnRowUpdating="GridView1_RowUpdating1" CellSpacing="10">
            <Columns>
                <asp:TemplateField HeaderText="Product ID">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("pname") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("pdesc") %>' TextMode="MultiLine"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("pdesc") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pimage") %>' Height="100px" Width="92px" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("pprice") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("pprice") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="pcategory" DataValueField="pcategory" SelectedValue='<%# Eval("pcategory") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:fprojectConnectionString3 %>" SelectCommand="SELECT [pcategory] FROM [product1]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("pcategory") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:CommandField HeaderText="Operation" ShowEditButton="True">
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />

        </asp:GridView>
    </center>
        </div>
    </form>
</body>
</html>
