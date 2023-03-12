<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup1.aspx.cs" Inherits="signup1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link rel="stylesheet" href="signcss.css"/>
      </head>

<body>
     
  
   
    <div class="background">
        <!-- <div class="shape"></div>-->
        <!--<div class="shape"></div>-->
   
   
         <form id="form1" runat="server">
        <h3>Register here</h3>
        <asp:Label ID="Label10" runat="server" Text="UserId"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server" ></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Username" ></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="input"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="enter the user name" ForeColor="Red"></asp:RequiredFieldValidator>
             <br />
             <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Must contain only alphabets" ForeColor="Red" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Phone"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="input" TextMode="Phone"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="enter the phoneno" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Number" ForeColor="Red" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox8" runat="server" CssClass="input" TextMode="MultiLine" Width="348px"  ForeColor="white" Height="42px"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox8" ErrorMessage="enter the address" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        
        <asp:Label ID="Label5" runat="server" Text="Date of birth"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="input" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="enter the date of birth" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Age not in range" ForeColor="Red" Type="Date"></asp:RangeValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="input" TextMode="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="enter the email" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="enter the password" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Password must contain:Minimum 8 characters atleast 1 uppercase Alphabet, 1 Lowercase Alphabet, 1 Number and 1 Special character " ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&amp;])[A-Za-z\d$@$!%*?&amp;]{8,}"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>     
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="confirm the password" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="password does not match" ForeColor="Red"></asp:CompareValidator>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Security Question"></asp:Label><br />
        <asp:DropDownList ID="ddlsq" runat="server" onchange="SetDropDownListColor(this);">
            <asp:ListItem Style="color:black">Favourite color?</asp:ListItem>
            <asp:ListItem Style="color:black">Favourite pet?</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="Answer"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox7" ErrorMessage="answer the question" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        <div class="button">   
         <asp:Button ID="Button1" runat="server" Text="Create" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click1"/>
        </div>
     </form> 
        
      </div>
   
</body>
</html>
