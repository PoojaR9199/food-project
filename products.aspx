<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" href="shop1.css" />
<%--    <link rel="stylesheet" href="style.css" />--%>
    <style>
        a{
            text-decoration:none;
            color:black;
        }
        a:hover{
        color:black;
        color:black;
        }
      
    </style>
    <br />
    <br />

    <section class="shop container">
            <h2 class="section-title">Our Products</h2>
        <asp:Label ID="Label4" runat="server" Text="Label" Visible="false"></asp:Label>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="pid" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" Height="293px" RepeatColumns="5">
            <ItemStyle BorderColor="White" BorderWidth="20px" />
            <ItemTemplate>
                
                <div class="product-box">
                    <a href="productview.aspx?pid=<%#Eval("pid") %>">
             <table>
                 <tr>
                     <td class="auto-style1" style="text-align:center">
                         <asp:Image ID="Image1" runat="server" BackColor="#5F98F3" Height="250px" Width="250px" ImageUrl='<%#Eval("pimage") %>' class="product-img"/>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style1" style="margin-left:2px">
                         <asp:Label ID="Label1" runat="server" Text='<%#Eval("pname") %>' CssClass="product-title" Font-Bold="True"></asp:Label>
                     </td>
                 </tr>
                 
                 <tr>
                     <td class="auto-style1" style="text-align:left">
                         <asp:Label ID="Label2" runat="server" Text="Price: Rs." style="text-align:center" Font-Bold="True"></asp:Label>
                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("pprice") %>' style="text-align:center" Font-Bold="True"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td> 
                         <i class="fa-solid fa-bag-shopping add-cart" onclick="myfunctionA();"></i>
                         <!--<asp:Button ID="Button2" runat="server" Text="cart" class="add-cart" OnClientClick="return myfunctionA();"></asp:Button>-->
                     </td>
                     </tr>
                 <%--<tr>
                     <td class="auto-style1" style="margin-left:2px">
                         <asp:Label ID="Label6" runat="server" Text="Description:" Font-Bold="True"></asp:Label>
                         <asp:Label ID="Label5" runat="server" Text='<%#Eval("pdesc") %>' style="font-size:12px"></asp:Label>
                     </td>
                 </tr>--%>
                 <%--<tr>
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
                     
                 </tr>--%>
                 
                 
    <!--     <td class="auto-style1"style="text-align:center">
                         
                         <asp:Button ID="Button1" runat="server" Text="Add to Cart" CommandArgument='<%#Eval("pid") %>' CommandName="addtocart"/>
                     </td>-->
                 
                </table>
                 </div>
                </a>
            </ItemTemplate>
        </asp:DataList>
             
           </section>
         <div id="snackbar">Item added to cart..</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fprojectConnectionString7 %>" SelectCommand="SELECT [pid], [pname], [pdesc], [pimage], [pprice] FROM [product1]"></asp:SqlDataSource>
<%--        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fprojectConnectionString5 %>" SelectCommand="SELECT [pid], [pname], [pdesc], [pimage], [pprice] FROM [product1]"></asp:SqlDataSource>--%>
        
    <script src="js/main.js"></script>    
    
</asp:Content>

