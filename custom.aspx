<%@ Page Language="C#" AutoEventWireup="true" CodeFile="custom.aspx.cs" Inherits="custom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="customcss.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        
       <div role="main" class="form-all" style="margin:0 auto;text-align:center" >
            <div>
                <br />
                <img alt=""  class="form-image" style="border:0" src="img/custom.png"/>
            </div>
           <div class="header">
               <h1>Delicious Custom Cakes</h1> 
           </div>
        <div class="container">
           <div class="list">
               <asp:Label ID="Label3" runat="server" Text="Choose a cake" CssClass="cake"></asp:Label>
               <br /><br />
               <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                   <asp:ListItem Value="Chocolate">Chocolate</asp:ListItem>
                   <asp:ListItem Value="Strawberry">Strawberry</asp:ListItem>
                   <asp:ListItem Value="Venilla">Venilla</asp:ListItem>
                   <asp:ListItem Value="Red Velvet">Red Velvet</asp:ListItem>
                   <asp:ListItem Value="Confetti">Confetti</asp:ListItem>
                   <asp:ListItem Value="Watermelon">Watermelon</asp:ListItem>
                   <asp:ListItem Value="Pista">Pista</asp:ListItem>
                   <asp:ListItem Value="Pineapple">Pineapple</asp:ListItem>
                   <asp:ListItem Value="Coffee">Coffee</asp:ListItem>
               </asp:RadioButtonList>

           </div>
           <div class="list">
               <asp:Label ID="Label1" runat="server" Text="Choose a filling" CssClass="cake"></asp:Label><br /><br />
               <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                   <asp:ListItem Value="Chocolate">Chocolate</asp:ListItem>
                   <asp:ListItem Value="Strawberry">Strawberry</asp:ListItem>
                   <asp:ListItem Value="Venilla">Venilla</asp:ListItem>
                   <asp:ListItem Value="Cheese cream">Cheese cream</asp:ListItem>
                   <asp:ListItem Value="ButterCream">ButterCream</asp:ListItem>
                   <asp:ListItem Value="Honey">Honey</asp:ListItem> 
               </asp:RadioButtonList>

           </div>
            <div class="list">
               <asp:Label ID="Label2" runat="server" Text="Choose a Shape" CssClass="cake"></asp:Label><br /><br />
               <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                   <asp:ListItem Value="Square">Square</asp:ListItem>
                   <asp:ListItem Value="Rectangle">Rectangle</asp:ListItem>
                   <asp:ListItem Value="Circle">Circle</asp:ListItem>
                   <asp:ListItem Value="Triangle">Triangle</asp:ListItem>
                   <asp:ListItem Value="Special">Special</asp:ListItem>
                    
               </asp:RadioButtonList>

           </div>

            </div>

           <div class="container">
           <div class="list">
               <asp:Label ID="Label4" runat="server" Text="Choose toppings" CssClass="cake"></asp:Label>
               <br /><br />
               <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                   <asp:ListItem Value="1">Chocolate curls</asp:ListItem>
                   <asp:ListItem Value="2">Sugar cookies</asp:ListItem>
                   <asp:ListItem Value="3">Powder sugar</asp:ListItem>
                   <asp:ListItem Value="4">Toasted coconut</asp:ListItem>
                   <asp:ListItem Value="5">Pepper Mints</asp:ListItem>
                   <asp:ListItem Value="6">Flowers</asp:ListItem>
                   <asp:ListItem Value="7">Tooty Fruity</asp:ListItem>
               </asp:CheckBoxList>
               <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
               <br />

           </div>
           <div class="list">
               <asp:Label ID="Label5" runat="server" Text="Number of layers" CssClass="cake"></asp:Label>
               <br /><br />
               <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                   <asp:ListItem Value="1">1</asp:ListItem>
                   <asp:ListItem Value="2">2</asp:ListItem>
                   <asp:ListItem Value="3">3</asp:ListItem>
                   <asp:ListItem Value="4">4</asp:ListItem>          
               </asp:RadioButtonList>
               <br />
               <br />

               <asp:Label ID="Label6" runat="server" Text="Weight(in Kgs)" CssClass="cake"></asp:Label>
               
               <asp:Button ID="Button2" runat="server" Text="OK" OnClick="Button2_Click" ToolTip="Select Layer to select weight" />
               
               <br />
               <asp:DropDownList ID="DropDownList1" runat="server">
                   <asp:ListItem>1</asp:ListItem>
                   <asp:ListItem Value="1.5">1.5</asp:ListItem>
                   <asp:ListItem Value="2">2</asp:ListItem>
                   <asp:ListItem Value="2.5">2.5</asp:ListItem>
                   <asp:ListItem Value="3">3</asp:ListItem>
                   <asp:ListItem Value="3.5">3.5</asp:ListItem>
                   <asp:ListItem Value="4">4</asp:ListItem>
                   <asp:ListItem Value="4.5">4.5</asp:ListItem>
                   <asp:ListItem Value="5">5</asp:ListItem>
               </asp:DropDownList>
               <br />


           </div>
               <div class="list">
               <asp:Label ID="Label7" runat="server" Text="Photo or Sketch of the cake" CssClass="cake"></asp:Label>
               <br /><br />
                   <asp:FileUpload ID="imgUp" runat="server" CssClass="imgup"/>
              
                   <br />
                   <br />
                   <asp:Label ID="Label8" runat="server" Text="Type" CssClass="cake"></asp:Label><br /><br />
                   <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                       <asp:ListItem Value="Egg">Egg</asp:ListItem>
                       <asp:ListItem Value="Egg-less">Egg-less</asp:ListItem>
                   </asp:RadioButtonList>
                </div>
            </div><br /><br />
           <div class="btn"><center>
           <asp:Button ID="Button1" runat="server" Text="Submit" value="submit" OnClick="Button1_Click" /></center>
            </div>
       </div>

     
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fprojectConnectionString11 %>" SelectCommand="SELECT * FROM [custom]"></asp:SqlDataSource>

     
    </form>
</body>
</html>
