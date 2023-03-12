<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
      <meta charset="UTF-8"/>
      <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
      <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
        <title>Delicious Treats</title>
        <script src="https://kit.fontawesome.com/d54f50f266.js"></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
        <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/fontawesome.min.css"> -->

        <!-- <link rel="stylesheet" href="https://pro.fontawesome.com/release/v5.10.0/css/all.css" integrity="sha384-AYmEC3YwScVb3ZcuHtOA9#%dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" > -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" />


        <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />" -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
        <link rel="stylesheet" href="style.css"/>
    <link rel="stylesheet" href="login.css"/>
    

        <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/> -->
    </head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-white py-3 fixed-top">
            <div class="container">
              <a class="navbar-brand" href="#">Delicious Treats</a>
      
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                  
                  <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="shop.aspx">Products</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">ContactUs</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">FeedBack</a>
                  </li>
                    <li class="nav-item">
                    <i class="fa fa-shopping-cart" aria-hidden="true" id="cart-icon"></i>
                    </li>
                  <li class="nav-item">
                    <a class="nav-link active" href="login.aspx">Login/SignUp</a>
                  </li>
                  
                    </ul>
              </div>
            </div>
          </nav>

    <div class="login-page">
      <div class="form">
    <div class="login">
          <div class="header">
            <h3 style="color: #4CAF50">LOGIN</h3>
            <p style="color: #4CAF50">Please enter your credentials to login.</p>
          </div>
        </div>
          <form class="login-form" runat="server">
           <!--<input type="text" placeholder="email/phoneno" required/>
          <input type="password" placeholder="password" required/>-->
            <asp:TextBox ID="txt1" runat="server" placeholder="email" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter the email" ControlToValidate="txt1" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txt2" runat="server" TextMode="Password" placeholder="password"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter the password" ControlToValidate="txt2" ForeColor="Red"></asp:RequiredFieldValidator>
            <div>
                <asp:Button ID="btn"  style="font-family:'Roboto','sans-serif'; outline: 0; background-color: lawngreen;font-size: 14px; color:white;
                transition: all 0.3 ease;cursor: pointer;" runat="server" Text="LOGIN" OnClick="btn_Click" />
            </div>
            <p><a href="forgotpass1.aspx">Forgot Password?</a></p>  
          <p class="message">Not registered? <a href="signup1.aspx">Create an account</a></p>
        </form>
        </div>
        </div>


    
</body>
</html>
