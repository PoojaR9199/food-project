<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpass.aspx.cs" Inherits="forgotpass" %>

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
            <span class="auto-style1"></span><asp:TextBox ID="textpass" runat="server" placeholder="Enter Password"></asp:TextBox>
            <asp:TextBox ID="textcpass" runat="server" placeholder="Reenter password"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Reset Password" OnClick="Button2_Click" />
        
    </form>
    </div>
</body>
</html>
