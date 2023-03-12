<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="productview.aspx.cs" Inherits="productview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--    <link href="style.css" rel="stylesheet" />--%>
    <link href="shop1.css" rel="stylesheet" />
    <link href="pdetails.
        css" rel="stylesheet" />

    <section class="container sproduct my-5 pt-5">    <div class="row mt-5">
                <asp:Repeater ID="rptrimage" runat="server">
                    <ItemTemplate>
                <div class="col-lg-5 col-md-12 col-12 <%#GetActiveImgClass(Container.ItemIndex) %>">
                    <img class="img-fluid" src="<%#Eval("pimage") %>" alt="">
                </div>
                   </ItemTemplate>
                </asp:Repeater>

                <div class="col-lg-6 col-md-12 col-12">
                    <asp:Repeater ID="rptrpdetails" runat="server">
                        <ItemTemplate>

                    <h6>Products/Details</h6>
                    <h2 class="py-4"  style="text-transform:uppercase"><%#Eval("pname") %></h2>
                    <div style="display:flex"><h2>Rs.</h2><h2 id="hprice" runat="server"><%#Eval("pprice") %></h2></div>
                            
                            <div>
                    <h3 class="mt-5" style="font-family:Calibri">Product details</h3>
                    <p style="font-size:13px"><%#Eval("pdesc")%></p>
                    
                    </div>
                    <div class="weight">
                        <h5 class="weight">Weight: </h5>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                       
                    </div>
                            <br />
                    <div class="quantity">
                        <h5 class="quantity">Quantity:</h5>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                        </asp:DropDownList>
                        
                    </div>
                       <br />      
                    <div class="type">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1">Egg</asp:ListItem>
                            <asp:ListItem Value="2" style="margin-left:5px">Egg-less</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div>
                        <asp:Button ID="btnaddtocart" runat="server" Text="ADD TO CART" CssClass="buy-btn" 
                            style="font-size: 0.8rem;
                               font-weight: 700;
                                outline: none;
                                 border: none;
                                 background-color: coral;
                                    color: aliceblue;
                                 padding: 13px 30px;
                                   cursor: pointer;
                                    text-transform: uppercase;" OnClick="btnaddtocart_Click1"/>
                        <asp:Label ID="lblerror" runat="server" style="color:darkred"></asp:Label>
                    </div>
                    
                        </ItemTemplate>
                   </asp:Repeater>
                </div>
               
            </div>
        
        </section>

        
</asp:Content>

