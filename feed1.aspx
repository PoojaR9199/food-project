<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feed1.aspx.cs" Inherits="feed1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="feed.css" rel="stylesheet" />
</head>
<body>
     <form id="form1" runat="server">
        <div class="topnav">
            <asp:Button id="btnback" Text="Back" CssClass="btnback" runat="server" OnClick="btnback_Click" />
        </div>
        <p style="font-size:25px;font-family:Algerian;margin-left:auto;">Please leave your feedback here.</p>
        <div>
            <br /><br />
            <asp:Label Text="Feedback" CssClass="lbl_feed" runat="server" />
            <br />
<%--            <asp:TextBox ID="txtuser" runat="server" Text="" placeholder="enter the username"></asp:TextBox>--%>
            <asp:Label ID="lbluser" CssClass="lbl1" runat="server" />
        </div>
        <div class="panel">
            <br />
            <br />
            <br />
            <br />
            <asp:TextBox ID="txtfeed" runat="server" TextMode="MultiLine" Height="60px" Width="370px" CssClass="txtfeed" style="color:black;"></asp:TextBox>
<%--            <asp:TextBox ID="txtfeed" TextMode="MultiLine" Height="60px" Width="370px" CssClass="txtfeed" runat="server" />--%>
            <br /><br />
            <asp:Button ID="btnsend" Text="Send" CssClass="btnsend" runat="server" OnClick="btnsend_Click" />

        </div>
    </form>
</body>
</html>
