<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="billing.aspx.cs" Inherits="billing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <link href="booking.css" rel="stylesheet" />
    
     <div class="panel">
            <br /><br /><br /><br />
           <asp:Label Text="Date/Time" CssClass="lbl_date" runat="server" style="margin-left:150px"/>
            <asp:Label ID="lbl_date" CssClass="lbl_date" runat="server" />
            <br /><br />
            <%--<asp:Label Text="Billing ID:" CssClass="lbl_time" runat="server" />
            <asp:Label ID="lbl_blid" CssClass="lbl_time" runat="server" />
            <br /><br />--%>
            
            <table border="1" style="width:395px;height:171px" class="panel1">
                <tr>
                    <td style="width: 76px; text-align: center">
                         <strong>Customer ID:</strong></td>
                    <td style="width: 104px; text-align: center">
                         <asp:Label ID="lblcid" runat="server"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td style="width: 76px; text-align: center">
                        <strong>Order ID:</strong>
                    </td>
                    <td style="width: 104px; text-align: center">
                        <asp:Label ID="lbloid" runat="server"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td style="width: 76px; text-align: center">
                        <strong>Customer Name:</strong>
                    </td>
                    <td style="width: 104px; text-align: center">
                        <asp:Label ID="lblname" runat="server"></asp:Label>
                    </td>
                </tr>

                <tr>
                     <td style="width: 76px; text-align: center">
                        <strong>Book Date:</strong>
                     </td>
                    <td style="width: 104px; text-align: center">
                        <asp:Label ID="lblbookdate" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
         <asp:Panel ID="Panel1" runat="server">
            <div>
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="5" CellSpacing="2" ForeColor="Black" Width="653px">
                    <Columns>
                        <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                        <asp:BoundField DataField="pprice" HeaderText="pprice" SortExpression="pprice" />
                        <asp:BoundField DataField="pwgt" HeaderText="pwgt" SortExpression="pwgt" />
                        <asp:BoundField DataField="pqty" HeaderText="pqty" SortExpression="pqty" />
                        <asp:BoundField DataField="ptype" HeaderText="ptype" SortExpression="ptype" />
                        <asp:BoundField DataField="subtotal" HeaderText="subtotal" SortExpression="subtotal" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />

                </asp:GridView>
                </div>
                </asp:Panel>

               <%-- <table border="1" style="width: 628px; height: 100px">
                    <tr>
                        <td style="width: 71px; height: 36px; text-align:center;">
                            <strong>Product Image</strong>

                         </td>
                        <td style="width: 50px; height: 36px; text-align:center;">
                            <strong>Product Name</strong>

                        </td>
                        <td style="width: 50px; height: 36px; text-align:center;">
                            <strong>Product Weight:</strong>

                        </td>
                        <td style="width: 100px; height: 36px; text-align:center;">
                             <strong>Product Quantity:</strong>

                        </td>
                        <td style="width: 100px; height: 36px; text-align:center;">
                             <strong>Product Total:</strong>

                        </td>
                    </tr>
                   <tr>
                        
                        <td style="width: 71px">
                            
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                        </td>
                         <td style="width: 50px">
                            
                            <asp:Label ID="Label2" runat="server"></asp:Label>

                         </td>
                        <td style="width: 50px">
                             <asp:Label ID="lbl_wght" runat="server"></asp:Label>
                            
                         </td>
                        <td rowspan="3" style="width: 100px">
                            <asp:Label ID="lblqty" runat="server"></asp:Label>
                            
                        </td>
                        <td rowspan="3" style="width: 100px">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                            
                        </td>
                        <td style="width: 71px">
                            <asp:Label ID="PU" runat="server"></asp:Label>
                            

                        </td>
                    </tr>
                        
                    
                </table>--%>
         <asp:Panel ID="Panel2" runat="server" class="hello">
             
             <div>
                <h3>Delivery Address</h3>
                <hr />
                
                <div>
                    <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="Name"></asp:Label>
                    <asp:TextBox ID="txtName" CssClass="form-control" runat="server" style="width:500px;"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:Label ID="Label7" runat="server" CssClass="control-label" Text="Email"></asp:Label>
                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" TextMode="Email" style="width:500px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                </div>

                <div>
                    <asp:Label ID="Label2" runat="server" CssClass="control-label" Text="Address"></asp:Label>
                    <asp:TextBox ID="txtAddress" TextMode="MultiLine" CssClass="form-control" runat="server" style="height:20px;width:500px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Pin Code"></asp:Label>
                    <asp:TextBox ID="txtPinCode" CssClass="form-control" runat="server" style="width:500px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtPinCode"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPinCode" ErrorMessage="Enter valid pincode" ForeColor="Red" ValidationExpression="^([0-9]{6})$"></asp:RegularExpressionValidator>
                </div>
                <div>
                    <asp:Label ID="Label4" runat="server" CssClass="control-label" Text="Mobile Number"></asp:Label>
                    <asp:TextBox ID="txtMobileNumber" CssClass="form-control" runat="server" style="width:500px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtMobileNumber"></asp:RequiredFieldValidator>
                </div> 
                <div>
                   <asp:Label ID="Label5" runat="server" CssClass="control-label" Text="Delivery Date"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                    <br />

                </div>
                
                </div>
                 
         </asp:Panel>
         
         <br />
                <table style="width: 630px;height:50px;" border="0">

                       <tr>
                        <td style="width: 182px; text-align: center">
                        <strong>Discount:<br /></strong></td>
                        <td style="width: 100px; text-align: center">
                             <asp:Label ID="lblrem" runat="server">0</asp:Label><br/>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 182px; text-align: center">
                        <strong>Total Amount:<br /></strong></td>
                        <td style="width: 100px; text-align: center">
                             <asp:Label ID="lblamount" runat="server"></asp:Label><br/>
                        </td>
                    </tr>


                  
                </table>
                

                <br /><br />
            </div>
    <asp:Button ID="Button2" runat="server" Text="Proceed" OnClick="Button2_Click" CssClass="btn_pay"/>
    <%--<asp:Button ID="btn_pay" runat="server" Text="Proceed" CssClass="btn_pay" OnClick="btn_pay_Click1"/>--%>
<%--        <asp:Button Text="Proceed" ID="btn_pay" CssClass="btn_pay" runat="server" OnClick="btn_pay_Click"/> --%>
        <asp:Button ID="Button1"  CssClass="btn_pay" runat="server"  text="Payment" OnClick="Button1_Click"/>
        <br /><br /><br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fprojectConnectionString14 %>" SelectCommand="SELECT [pname], [pprice], [pwgt], [pqty], [ptype], [subtotal] FROM [cart]"></asp:SqlDataSource>
</asp:Content>

