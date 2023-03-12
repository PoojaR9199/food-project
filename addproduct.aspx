<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="addproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br/>
    <br />
    <br/>
    <center>
              <table style="width: 700px; height: 390px; background-color:rgba(0, 0, 0, 0.64); color:#63ef88" align="center">
                     <tr>
                         <td align="center" width="50%" colspan="2">
                             <h2> Adding Product</h2>
                              <hr />
                        </td>
                     </tr>
                    <tr>
                        <td align="center" width="50%">
                        <h4>Category:</h4>
                        </td>
                        <td width:"50%">
                            <asp:DropDownList ID="ddlist" runat="server" DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cname"></asp:DropDownList>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlist" Display="Dynamic" ErrorMessage="Category is Mandatory" ForeColor="Red" InitialValue="Select">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" width="50%">
                            <h4>Product Name:</h4>
                        </td>
                        <td width="50%">
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Product Name is Mandatory" ForeColor="Red">*</asp:RequiredFieldValidator>
                         </td>
                    </tr>
                    <tr>
                        <td align="center" width="50%">
                            <h4>Product Desc:</h4>
                        </td>
                        <td width="50%">
                           <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDesc" Display="Dynamic" ErrorMessage="Product Desc is Mandatory" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>

                    </tr>
                  <tr>

                      <td align="center" width="50%">
                        <h4>Image:</h4>
                       </td>
                      <td width="50%">
                          <asp:FileUpload ID="imageUpload" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="imageUpload" Display="Dynamic" ErrorMessage="Image is Mandatory" ForeColor="Red">*</asp:RequiredFieldValidator>
                      </td>

                  </tr>
                  <tr>
                      <td align="center" width="50%">
                        <h4>Product Price(Rs):</h4>
                       </td>
                      <td width="50%">
                       <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPrice" Display="Dynamic" ErrorMessage="Price is Mandatory" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPrice" Display="Dynamic" ErrorMessage="Price is Invalid" ForeColor="Red" ValidationExpression="[0-9]*">*</asp:RegularExpressionValidator>
                        </td>

                  </tr>
               
                  <tr>
                    <td align="center" width="50%" colspan="2">
                        <asp:Button ID="btnSubmit" runat="server" Text="Add" Font-Bold="True" ForeColor="Black" Height="36px" Width="88px" OnClick="btnSubmit_Click" />
                    </td>

                  </tr>
                  <tr>
                      <td colspan="2" align="center">
                          <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Fix the following Error" />
                        </td>

                  </tr>
                </table>
        </center>      
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fprojectConnectionString8 %>" SelectCommand="SELECT [cname] FROM [category]"></asp:SqlDataSource>
<%--            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fprojectConnectionString %>" SelectCommand="SELECT [cname] FROM [category]"></asp:SqlDataSource>--%>
        </div>
</asp:Content>

