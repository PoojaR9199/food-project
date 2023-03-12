<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <style>
        
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
    margin-top: 45px;
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
           <h4 class="proNameViewCart" runat="server" id="h4noitems">Feedbacks</h4>
          <asp:Repeater ID="Repeater1" runat="server">
               <ItemTemplate>
           <div class="media" style="border:1px solid black;">
    

               <div class="media-body" style="margin-left:5px">
                   <h4 class="media-heading proNameViewCart"><%#Eval("umail") %></h4>
                  <p><%#Eval("feedback") %></p>
                 
                </div>
               <br />
           </div>
               </ItemTemplate>
</asp:Repeater>
           
       </div>

         <div class="col-md-3">
           

            <div>
               <asp:Button ID="btnfeed" runat="server" Text="Give-Feedback" CssClass="buyNowbtn" OnClick="btnfeed_Click"/>
            </div>
       </div>
        </div>
</asp:Content>

