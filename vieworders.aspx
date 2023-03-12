<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="vieworders.aspx.cs" Inherits="vieworders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .parent{
            border:1px solid black;
            margin:1rem;
            padding:2rem 2rem;
            text-align:center;
        }
        .child{
            display:inline-block;
            border:1px solid red;
            padding:1rem 1rem;
            vertical-align:middle;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    <br />
        <br />
        <br />
    <div class="parent">

        <div class="child">
            <asp:Button ID="Button1" runat="server" Text="Orders" OnClick="Button1_Click"/></div>
        <div class="child">Custome-orders</div>
    </div>
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="order_id" DataSourceID="SqlDataSource1" CellPadding="8" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="order_id" HeaderText="order_id" ReadOnly="True" SortExpression="order_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="pin" HeaderText="pin" SortExpression="pin" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
            <asp:BoundField DataField="d_date" HeaderText="d_date" SortExpression="d_date" />
            <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
        </center>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fprojectConnectionString8 %>" SelectCommand="SELECT [order_id], [name], [address], [pin], [email], [mobile], [d_date], [total], [status] FROM [orders]"></asp:SqlDataSource>
</asp:Content>

