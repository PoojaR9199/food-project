<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="updateproduct.aspx.cs" Inherits="updateproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br/><br />
    <center>
        Sort by:&nbsp;
        <asp:DropDownList ID="DropDownlist1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cname" Height="42px" Width="200px" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownlist1_SelectedIndexChanged">
            <asp:ListItem>select category</asp:ListItem>

        </asp:DropDownList>
                                

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fprojectConnectionString9 %>" SelectCommand="SELECT [cname] FROM [category]"></asp:SqlDataSource>
<%--        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fprojectConnectionString2 %>" SelectCommand="SELECT [cname] FROM [category]"></asp:SqlDataSource>--%>
        <hr />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="11" EmptyDataText="No product to display" OnPageIndexChanging="GridView1_PageIndexChanging1" OnRowCancelingEdit="GridView1_RowCancelingEdit1" OnRowEditing="GridView1_RowEditing1" OnRowUpdating="GridView1_RowUpdating1" CellSpacing="5">
            <Columns>
                <asp:TemplateField HeaderText="Product ID">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("pname") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("pdesc") %>' TextMode="MultiLine"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("pdesc") %>' ForeColor="Red"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pimage") %>' Height="100px" Width="92px" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("pprice") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("pprice") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="pcategory" DataValueField="pcategory" SelectedValue='<%# Eval("pcategory") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:fprojectConnectionString10 %>" SelectCommand="SELECT [pcategory] FROM [product1]"></asp:SqlDataSource>
<%--                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:fprojectConnectionString3 %>" SelectCommand="SELECT [pcategory] FROM [product1]"></asp:SqlDataSource>--%>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("pcategory") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:CommandField HeaderText="Operation" ShowEditButton="True">
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />

        </asp:GridView>
    </center>
</asp:Content>

