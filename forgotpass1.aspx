<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpass1.aspx.cs" Inherits="forgotpass1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <link href="forgotpasscss.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            font-family: "Poor Richard", sans-serif;
            color: #FFFFFF;
        }
    </style>
</head>
<body>
     <div class="background">
    <form id="form1" runat="server">
        
            <h3>Change Password</h3>
            <asp:TextBox ID="txtemail" runat="server" placeholder="Enter Email-ID" CssClass="input"></asp:TextBox>
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="verify" OnClick="Button1_Click"  />
        <br />
            <asp:Label ID="lblsq" runat="server" Text="Your sequrity question: "></asp:Label>
            <asp:Label ID="qst" runat="server" Text="label"></asp:Label>
            <asp:TextBox ID="txtans" runat="server" placeholder="Enter answer"></asp:TextBox>
        <asp:Label ID="lblmsg1" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblmsg2" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button3" runat="server" Text="verify" OnClick="Button3_Click" style="background-color:#00CC66;width:80px"/>
            <span class="auto-style1"></span>
        <asp:TextBox ID="textpass" runat="server" placeholder="Enter Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter password" ControlToValidate="textpass" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Should contain atleast 8 characters,1 capital letter,1 special character and 1 number" ForeColor="Red" ControlToValidate="textpass" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}"></asp:RegularExpressionValidator>
<%--        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter the password" ControlToValidate="textpass" ForeColor="Red"></asp:RequiredFieldValidator>--%>
<%--        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Password must contain:Minimum 8 characters, 1 uppercase letter, 1 Lowercase letter, 1 Number and 1 Special character " ControlToValidate="textpass" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}" ForeColor="Red"></asp:RegularExpressionValidator>--%>
        <asp:TextBox ID="textcpass" runat="server" placeholder="Re-enter password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="confirm password" ControlToValidate="textcpass" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password does not match" ControlToValidate="textcpass" ControlToCompare="textpass" ForeColor="Red"></asp:CompareValidator>
<%--       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="confirm the password" ControlToValidate="textcpass" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password does not match" ControlToCompare="textpass" ControlToValidate="textcpass" ForeColor="Red"></asp:CompareValidator>--%>
        <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click"  />
        
    </form>
    </div>>
</body>
</html>
