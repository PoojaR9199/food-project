<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="payment1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="panel">
            <br /><br /><br /><br />
            <h1 style="font-family: sans-serif;
                 background-size: 10px;
                 background-color: lightgoldenrodyellow;
                 color: darkgoldenrod;
                 font-size: 30px;
                 margin-left: 130px;
                 margin-top:-40px;
                 width: 140px;
                 padding: 10px;">Payment</h1>
            <br />

             <table border="1" style="width:395px;height:171px" class="panel1">
                  <%--<tr>
                    <td style="width: 76px; text-align: center">
                         <strong>Payment ID:</strong></td>
                    <td style="width: 104px; text-align: center">
                         <asp:Label ID="lbl_pid" runat="server"></asp:Label>
                    </td>
                </tr>--%>

                <tr>
                    <td style="width: 76px; text-align: center">
                         <strong>Bill ID:</strong></td>
                    <td style="width: 104px; text-align: center">
                         &nbsp;&nbsp;
                         <asp:Label ID="lbl_blid" runat="server"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td style="width: 76px; text-align: center">
                        <strong>Order ID:</strong>
                    </td>
                    <td style="width: 104px; text-align: center">
                        <asp:Label ID="lbl_bid" runat="server"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td style="width: 76px; text-align: center">
                        <strong>Total Amount:</strong>
                    </td>
                    <td style="width: 104px; text-align: center">
                        <asp:Label ID="lbl_amt" runat="server"></asp:Label>
                    </td>
                </tr>

                
            </table>
            
           
       
            <div>
                <table id="tab_1" border="1" class="table_pay" style="width: 530px; height: 268px">
                    <%--<tr>
                        <td style="width: 104px; text-align: center;">Amount to be paid:&nbsp;</td>
                        <td style="width: 100px;text-align:center;">
                            <br />
                            <asp:TextBox ID="txt_adamt" CssClass="txt_adamt" Width="150px" ReadOnly="true" runat="server"/>
                            <br /><br />
                        </td>
                    </tr>--%>
                    <tr>
                        <td style="width: 104px; text-align: center;">Name:&nbsp;</td>
                        <td style="width: 100px;text-align:center;">
                            <br />
                            <asp:TextBox ID="txt_name" CssClass="txt_name" placeholder="Enter Name as in the card" Width="150px" runat="server"/>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="required_validator" runat="server" ControlToValidate="txt_name" ErrorMessage="Must Enter Name" Font-Size="X-Small" Width="150px" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="regular_validator" runat="server" ControlToValidate="txt_name" ForeColor="Red" ValidationExpression="^[A-Za-z\s]+$" ErrorMessage="Do not enter numbers" Width="150px" Font-Size="X-Small"></asp:RegularExpressionValidator>
                       
                        </td>
                    </tr>
                     <tr>
                        <td style="width: 104px; text-align: center;">Card Number:&nbsp;</td>
                        <td style="width: 100px;text-align:center;">
                            <br />
                            <asp:TextBox ID="txt_cardnum" CssClass="txt_cardnum" placeholder="Enter Card Number" Width="150px" runat="server"/>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="required_validator" runat="server" ControlToValidate="txt_cardnum" ErrorMessage="Must Enter Card Number" Font-Size="X-Small" Width="150px" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" CssClass="regular_validator" runat="server" ControlToValidate="txt_cardnum" ForeColor="Red" ValidationExpression="[0-9]{16}" ErrorMessage="Enter Valid Card Number" Width="150px" Font-Size="X-Small"></asp:RegularExpressionValidator>

                        </td>
                    </tr>
                     <tr>
                        <td style="width: 104px; text-align: center;">CVV:&nbsp;</td>
                        <td style="width: 100px;text-align:center;">
                            <br />
                            <asp:TextBox ID="txt_cvv" CssClass="txt_cvv" placeholder="Enter CVV" Width="150px" runat="server"/>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="required_validator" runat="server" ControlToValidate="txt_cvv" ErrorMessage="Must Enter CVV" Font-Size="X-Small" Width="150px" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" CssClass="regular_validator" runat="server" ControlToValidate="txt_cvv" ForeColor="Red" ValidationExpression="[0-9]{3}" ErrorMessage="Enter Valid Card Number" Width="150px" Font-Size="X-Small"></asp:RegularExpressionValidator>

                        </td>
                    </tr>
                     <tr>
                        <td style="width: 104px; text-align: center;">Expiry Month:&nbsp;</td>
                        <td style="width: 100px;text-align:center;">
                            <br />
                            <asp:DropDownList ID="drp_month" CssClass="drp_month" Width="150px" runat="server" OnSelectedIndexChanged="drp_month_SelectedIndexChanged">
                                <asp:ListItem>Select Expiry Month</asp:ListItem>
                                <asp:ListItem>January</asp:ListItem>
                                <asp:ListItem>February</asp:ListItem>
                                <asp:ListItem>March</asp:ListItem>
                                <asp:ListItem>April</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>June</asp:ListItem>
                                <asp:ListItem>July</asp:ListItem>
                                <asp:ListItem>August</asp:ListItem>
                                <asp:ListItem>September</asp:ListItem>
                                <asp:ListItem>October</asp:ListItem>
                                <asp:ListItem>November</asp:ListItem>
                                <asp:ListItem>December</asp:ListItem>
                                
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="required_validator" runat="server" ControlToValidate="drp_month" ErrorMessage="Must Select Expiry Month" Font-Size="X-Small" Width="150px" ForeColor="Red"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                     <tr>
                        <td style="width: 104px; text-align: center;">Expiry Year:&nbsp;</td>
                        <td style="width: 100px;text-align:center;">
                            <br />
                           <asp:DropDownList ID="drp_year" CssClass="drp_year" Width="150px" runat="server" OnSelectedIndexChanged="drp_year_SelectedIndexChanged">
                               <asp:ListItem>Select Expiry Year</asp:ListItem>
                               <asp:ListItem>2022</asp:ListItem>
                               <asp:ListItem>2023</asp:ListItem>
                               <asp:ListItem>2024</asp:ListItem>
                               <asp:ListItem>2025</asp:ListItem>
                               <asp:ListItem>2026</asp:ListItem>
                               <asp:ListItem>2027</asp:ListItem>
                               <asp:ListItem>2028</asp:ListItem>
                               <asp:ListItem>2029</asp:ListItem>
                               <asp:ListItem>2030</asp:ListItem>
                               <asp:ListItem>2031</asp:ListItem>
                               <asp:ListItem>2032</asp:ListItem>
                               <asp:ListItem>2033</asp:ListItem>
                               <asp:ListItem>2034</asp:ListItem>
                               <asp:ListItem>2035</asp:ListItem>
                           </asp:DropDownList>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="required_validator" runat="server" ControlToValidate="drp_year" ErrorMessage="Must Select Expiry Year" Font-Size="X-Small" Width="150px" ForeColor="Red"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    
                </table>
            </div>
        </div>
        <br />
       

        <br />
        <asp:Button ID="btn_pay" Text="Pay" CssClass="btn_pay" runat="server" OnClick="btn_pay_Click" />
<%--        <asp:Button ID="btn_cancel" Text="Cancel" CssClass="btn_cancel" runat="server" OnClick="btn_cancel_Click" />--%>
        <asp:Label ID="lbl_uid" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="lbldate" runat="server" Text="Label" Visible="False"></asp:Label>
        <br /><br /><br />
    </form>
</body>
</html>
