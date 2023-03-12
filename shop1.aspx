<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shop1.aspx.cs" Inherits="shop1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
      <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
      <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
        <title>Products</title>
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/fontawesome.min.css"/>

        <link rel="stylesheet" href="https://pro.fontawesome.com/release/v5.10.0/css/all.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"/>


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
   
    
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
<!--   <link rel="stylesheet" href="style.css"/>-->
      <link href="shop1.css" rel="stylesheet"/>
    <style type="text/css">
        .auto-style1 {
            height: 24px;
        }
    </style>
      
</head>
<body>
    <form id="form2" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-white py-3 fixed-top">
            <div class="container">
              <a class="navbar-brand" href="#">Delicious Treats</a>
      
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                  
                  <li class="nav-item">
                    <a class="nav-link " href="index.aspx">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" href="addtoc.html">Products</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">FeedBack</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">ContactUs</a>
                  </li>
                  <li class="nav-item">
                      <asp:HyperLink ID="HyperLink1" runat="server" CssClass="nav-link" NavigateUrl="~/login.aspx">Login</asp:HyperLink>
<%--                    <a class="nav-link" href="#">Login/SignUP</a>--%>
                  </li>
                    <li class="nav-item">
                        <asp:Button ID="Button1" runat="server" Text="Logout" />
                  </li>
                   </ul> 
                  
                  <i class="fa-solid fa-bag-shopping" id="cart-icon"></i>
                  </div>
                </div>

        </nav>
         <section class="shop container">
            <h2 class="section-title">Our Products</h2>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="pid" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" Height="293px" RepeatColumns="4">
            <ItemStyle BorderColor="White" BorderWidth="20px" />
            <ItemTemplate>
                
                <div class="product-box">
             <table>
                 <tr>
                     <td class="auto-style1" style="text-align:center">
                         <asp:Image ID="Image1" runat="server" BackColor="#5F98F3" Height="250px" Width="250px" ImageUrl='<%#Eval("pimage") %>' class="product-img"/>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style1" style="margin-left:2px">
                         <asp:Label ID="Label1" runat="server" Text='<%#Eval("pname") %>' CssClass="product-title"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style1" style="margin-left:2px">
                         <asp:Label ID="Label5" runat="server" Text='<%#Eval("pdesc") %>' style="font-size:12px"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style1" style="text-align:left">
                         <asp:Label ID="Label2" runat="server" Text="Price: Rs." style="text-align:center" CssClass="price"></asp:Label>
                         <asp:Label ID="Label3" runat="server" Text='<%#Eval("pprice") %>' style="text-align:center" CssClass="price"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style1" style="text-align:left; align-items:center">
                         <asp:Label ID="Label4" runat="server" Text="Weight(kg):" style="text-align:center" CssClass="price"></asp:Label>
                         <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="50px">
                             <asp:ListItem Value="1">1</asp:ListItem>
                             <asp:ListItem Value="2">2</asp:ListItem>
                             <asp:ListItem Value="3">3</asp:ListItem>
                             <asp:ListItem Value="4">4</asp:ListItem>
                             <asp:ListItem Value="5">5</asp:ListItem>
                         </asp:DropDownList>
                         
                     </td>
                     
                 </tr>
                    <tr>
                     <td class="auto-style1" style="text-align:left;">
                         <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CellPadding="2" CellSpacing="2" style="font-family:Arial;" CssClass="price">
                             <asp:ListItem Value="1">Egg</asp:ListItem>
                             <asp:ListItem Value="2">Egg-less</asp:ListItem>
                         </asp:RadioButtonList>
                         
                     </td>
                     
                 </tr>
                 
                 <tr>
                     <td> 
                         <i class="fa-solid fa-bag-shopping add-cart" onclick="myfunctionA();"></i>
                         <!--<asp:Button ID="Button2" runat="server" Text="cart" class="add-cart" OnClientClick="return myfunctionA();"></asp:Button>-->
                     </td>
                     </tr>
    <!--
                     <td class="auto-style1"style="text-align:center">
                         
                         <asp:Button ID="Button1" runat="server" Text="Add to Cart" CommandArgument='<%#Eval("pid") %>' CommandName="addtocart"/>
                     </td>-->
                 
             </table>
                 </div> 
                   
                
            </ItemTemplate>
        </asp:DataList>
             
           </section>
         <div id="snackbar">Item added to cart..</div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fprojectConnectionString5 %>" SelectCommand="SELECT [pid], [pname], [pdesc], [pimage], [pprice] FROM [product1]"></asp:SqlDataSource>
        
    <script src="js/main.js"></script>    
    </form>
   
    </body>









       
</html>
