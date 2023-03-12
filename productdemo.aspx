<%@ Page Language="C#" AutoEventWireup="true" CodeFile="productdemo.aspx.cs" Inherits="productdemo" %>

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
    <link href="pdetails.css" rel="stylesheet" />

        <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/> -->
    </head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-white py-3 fixed-top">
            <div class="container">
              <a class="navbar-brand" href="#">Delicious Treats</a>
      
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                  
                  <li class="nav-item">
                    <a class="nav-link active" href="home.aspx">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="products.aspx">Products</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">ContactUs</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">FeedBack</a>
                  </li>
                  <li class="nav-item">
<%--                      <asp:Button ID="btnlogout" runat="server" CssClass="nav-link" BorderStyle="Ridge" Text="Sign Out" OnClick="btnlogout_Click" />--%>
                  </li>
                  
                    </ul>
              </div>
            </div>
          </nav>
       
    
        <section class="container sproduct my-5 pt-5">
            <div class="row mt-5">
                
                <div class="col-lg-5 col-md-12 col-12">
                    <img class="img-fluid" src="pimg/img3.jpg" alt=""/>
                </div>

                <div class="col-lg-6 col-md-12 col-12">
                    <h6>Home/Cake</h6>
                    <h3 class="py-4">Rose Cake</h3>
                    <h2>Rs.400</h2>
                    <div class="weight">
                        <h5 class=""><b>Weight :</b><asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                        </h5>
                    </div>
                    <div class="quantity">
                        <h5 class="quantity"><b>Quantity:</b><asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                        </asp:DropDownList>
                        </h5>
                    </div>
                    <div class="type">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1">Egg</asp:ListItem>
                            <asp:ListItem Value="2">Egg-less</asp:ListItem>
                        </asp:RadioButtonList>
                        
                    </div>
                        <asp:Button ID="btnaddtocart" runat="server" Text="ADD TO CART" CssClass="buy-btn" />
                    <div>
                    <h4 class="mt-5 mb-5">Product details</h4>
                    <p>Pineapple cake is a delicious cake containing butter, flour, egg, sugar, and pineapple jam or slices.
                        This Pineapple Cake recipe is made from scratch with crushed pineapple and topped with whipped cream for a light but decadent treat!
                    </p>
                    </div>
                </div>

            </div>
        </section>
                   <footer class="mt-5 py-5">
          <div class="row container mx-auto pt-5">
            <div class="footer-one col-lg-3 col-md-6 col-12">
              <img src="pimg/logo1.jpeg" alt="" height="50px" width="60px"/>
              
              <p class="pt-3"> jhfjdfhdjfd jhfdfhdjhfj dfdhfjhjfhddd  ddddddddd dddd dddddd dddddd ddddddd dddddddddd dddddjd  jdhjd</p>
            </div>
            <div class="footer-one col-lg-3 col-md-6 col-12">
              <h5>Featured</h5>
              <ul class="text-uppercase list-unstyled">
                <li><a href="#">Cakes</a></li>
                <li><a href="#">Donuts</a></li>
                <li><a href="#">CupCakes</a></li>
                <li><a href="#">Customized-cake</a></li>
                
              </ul>
            </div>

            <div class="footer-one col-lg-3 col-md-6 col-12">
              <h5 class="pb-2">Contact Us</h5>
              <div>
                <h6 class="text-uppercase">Address</h6>
                <p>123 STREET NAME,CITY,India</p>
              </div>
              <div>
                <h6 class="text-uppercase">Phone</h6>
                <p>(123)456-7890</p>
              </div>
              <div>
                <h6 class="text-uppercase">Email</h6>
                <p>delicioustreats@gmail.com</p>
              </div>
            </div>
            
            <div class="footer-one col-lg-3 col-md-6 col-12">
              <h5 class="pb-2">Instagram</h5>
              <div class="row">
                <img class="img-fluid w-25 h-100 m-2" src="pimg/insta/img1.jpg" alt=""/>
                <img class="img-fluid w-25 h-100 m-2" src="pimg/insta/img2.jpg" alt=""/>
                <img class="img-fluid w-25 h-100 m-2" src="pimg/insta/img3.jpg" alt=""/>
                <img class="img-fluid w-25 h-100 m-2" src="pimg/insta/img4.jpg" alt=""/>
                <img class="img-fluid w-25 h-100 m-2" src="pimg/insta/img5.jpg" alt=""/>
              </div>
            </div>
              

            <div class="copyright mt-5">
              <div class="row container mx-auto">
                <div class="col-lg-3 col-md-6 col-12">
                  <img src="pimg/payment.png" alt=""/>
                </div>

                <div class="col-lg-4 col-md-6 col-12 text-nowrap mb-2">
                  <p>Delicious Treats Ⓒ 2022, All rights reserved.</p>
                  
                </div>

              </div>
            </div>


            </div>
          
        </footer>

    </form>
</body>
</html>
