<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="addcategory.aspx.cs" Inherits="addcategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        body{
            background-color:antiquewhite;
        }
    </style>
    <br />
    <br /><br /><br />
    <center>
    
        <table align="center" style="width:550px;height:500px;background-color:rgba(0, 0, 0, 0.64); color:#63ef88">
            <tr>
                <td colspan="2" align="center">
                    <h2>Add Category</h2>
                    
                </td>
            </tr>
             <tr>
                 <td>
                     <b style="font-size:21px;font-weight:bold;margin-left:20px;">Category ID:&nbsp;&nbsp;&nbsp;</b>
                   </td>
                 <td>
                     <asp:TextBox ID="TextBox3" runat="server"  Height="35px" Width="230px"></asp:TextBox>
                     </td>
                 
              </tr>
            <tr>
                <td>
                    <b style="font-size:21px;font-weight:bold;margin-left:20px;">Category:&nbsp;&nbsp;&nbsp;</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="44px" Width="230px" CausesValidation="true" placeholder="category name" BorderColor="#333333" BorderWidth="2px" Font-Bold="true" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                    <br/>
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Enter category name" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
                
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Add" Height="44px" Width="80px" Font-Bold="true" Font-Size="Medium" BackColor="#63ef88" BorderColor="#333333" OnClick="Button1_Click"></asp:Button>
                    </tr>
            <tr>
                <td colspan="2">
                    <br />

                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="cid" EmptyDataText="No record to display" Font-Bold="True" Font-Size="Medium" OnPageIndexChanging="GridView1_PageIndexChanging1" OnRowCancelingEdit="GridView1_RowCancelingEdit1" OnRowDeleting="GridView1_RowDeleting1" OnRowEditing="GridView1_RowEditing1" OnRowUpdating="GridView1_RowUpdating1" PageSize="4" Width="257px" BorderColor="Black" CellPadding="7" CellSpacing="5" BackColor="White">
                        <Columns>
                            <asp:TemplateField HeaderText="Category">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" Text='<%# Eval("cname") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("cname") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:CommandField CausesValidation="False" HeaderText="Operation" ShowDeleteButton="True" ShowEditButton="True">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                        </Columns>
                        <HeaderStyle BorderColor="#333333" BorderWidth="3px" Font-Size="Larger" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
</center>


    
</asp:Content>


