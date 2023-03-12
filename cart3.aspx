<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="cart3.aspx.cs" Inherits="cart3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
      <style>
        .removebtn{
            border-radius: 3px;
     outline: 0;
     margin-top: 10px;
    font-size: 13px;
    min-height: 22px;
    min-width: 90px;
    font-weight: 500;
    background-color: #FF5722;
    border: 1px solid #FF5722;
    color: #fff;
        }
        .priceGray {
    font-size: 15px;
    font-family: sans-serif;
    font-weight: 400;
    color: dimgray;
}
        .proNameViewCart {
    font-size: 15px;
    line-height: 25px;
    font-family: sans-serif;
    font-weight: 600;
    color: #696e80;
}

        .buyNowbtn {
    border-radius: 3px;
    outline: 0;
    margin-top: 10px;
    margin-bottom: 20px;
    font-size: 13px;
    min-height: 22px;
    padding: 10px 15px;
    font-weight: 500;
    background-color: #14cda8;

    border: 1px solid #14cda8;
    width: 100%;
}

    </style>
    <br />
    <br />
    <br/>
    <div class="row" style="padding-top: 50px;margin-left:50px;">
 
       <div class="col-md-8">
           <h4 class="proNameViewCart" runat="server" id="h4noitem">MY CART</h4>
           <asp:Repeater ID="Repeater1" runat="server">
               <ItemTemplate>
           <div class="media" style="border:1px solid black;">
               <div class="media-left">
                   <a href="#">
                       <img class="media-object" width="100px" src="<%#Eval("pimage") %>" alt=".." />
                   </a>
               </div>

               <div class="media-body" style="margin-left:5px">
                   <h4 class="media-heading proNameViewCart"><%#Eval("pname") %></h4>
                   <div style="display:flex;font-size:12px">
                   <p><b>Weight:</b><%#Eval("pwgt")%></p>
                   <p style="margin-left:10px"><b>Quantity:</b><%#Eval("pqty") %></p>
                   <p style="margin-left:10px"><b>Type</b><%#Eval("ptype") %></p>
                   </div>
                   <div style="display:flex">
                   <p style="color:crimson"><b>Price:</b>Rs.<%#Eval("pprice") %><br />
                       <p style="color:crimson"><b>SubTotal:</b></p>
                       </div>

                   <asp:Button ID="btnremovecart" runat="server" Text="REMOVE" CssClass="removebtn" onclick="btnremovecart_Click"/>
                   </p>
                </div>
           </div>
               </ItemTemplate>
</asp:Repeater>
           
       </div>

        <div class="col-md-3">
            <div>
                <h5>PRICE DETAILS</h5>
            
             <div>
                    <label>Cart Total:</label>
                    <span class="priceGray" style="margin-left:150px">1400</span>
            </div>
                <div>
                    <label>Discount(if):</label>
                    <span class="priceGray" style="margin-left:150px">0</span>
            </div>
            </div>
            <div class="proPriceView">
               <b><label>Cart Total:</label>
                    <span class="pull-right" style="margin-left:150px">1400</span></b>
            </div>

            <div>
                <asp:Button ID="btnBuy" runat="server" Text="BUY-NOW" CssClass="buyNowbtn"/>
            </div>
       </div>

    </div>
</asp:Content>

