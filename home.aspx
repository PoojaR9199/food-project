<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8"/>
      <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
      <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
        <title>Delicious Treats</title>
        
            <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

        <script src="https://kit.fontawesome.com/d54f50f266.js"></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
        <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/fontawesome.min.css"> -->

        <!-- <link rel="stylesheet" href="https://pro.fontawesome.com/release/v5.10.0/css/all.css" integrity="sha384-AYmEC3YwScVb3ZcuHtOA9#%dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" > -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" />


        <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />" -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
        <link rel="stylesheet" href="style.css"/>

        <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/> -->

    <style>
        #cart-icon{
            color:black;
        }
        #cart-icon:hover{
            color:coral;
        }
        
    </style>

    <script>
        $(document).ready(function myfunction() {
            $("#cart-icon").click(function myfunction() {
                window.location.href = "/cart.aspx";
            });
        });

    </script>

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
                    <a class="nav-link" href="myorders.aspx">My-Orders</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="feedback.aspx">FeedBack</a>
                  </li>
                     <li class="nav-item">
                        <a href="cart2.aspx">
                        <i class="fa fa-shopping-cart" aria-hidden="true" id="cart-icon"></i></a>
                       <%-- <button class="btn btn-primary navbar-btn" type="button" id="cart-icon">Cart<span class="badge" id="pcount" runat="server">6</span>
                        </button>--%>
                    </li>
                  <li class="nav-item">
                      <asp:Button ID="btnlogin" runat="server" CssClass="nav-link" BorderStyle="Ridge" Text="SignIn" OnClick="btnlogin_Click" />
                      <asp:Button ID="btnlogout" runat="server" CssClass="nav-link" BorderStyle="Ridge" Text="Sign Out" OnClick="btnlogout_Click" />
                      
                  </li>
                  
                    </ul>
              </div>
            </div>
          </nav>
        <div>
            <div><asp:Label ID="lblsuccess" runat="server" CssClass="text-success" ForeColor="White"></asp:Label></div></div>
            
    
      <section id="home">
      <div class="container">
        <h2 style="font-family:cursive;color: coral;">Super crispy</h2>
        <h1>DELICIOUS TREATS</h1>
        <p>A party without a cake is just <br/>a meeting...enjoy!!!</p>
        <button>Order Now</button>
      </div>
      </section>

      <section>
        <div class="navbar navbar-expand-lg navbar-light bg-light py-3">
        <div class="cat">
            <div class="collapse navbar-collapse" id="navbarSupportedContent1">
              <ul class="navbar-nav">
                
                <li class="nav-item">
                  <a class="nav-link" href="#">Egg-cakes</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Eggless-cakes</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">CupCakes</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Donuts</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="custom.aspx">Customized-cake</a>
                </li>
              </ul>  
            </div>
        </div>
          </div>
        </section>

        <section id="new" class="w-100">
          <div class="row p-0 m-0">
            <div class="one col-lg-4 col-md-12 col-12 p-0">
              <img class="img-fluid" src="pimg/new/img1.jpg" alt=""/>
              <div class="details">
                <h2>Super delicious desserts</h2>
                <button class="text-uppercase">Order Now</button>
              </div>
            </div>
            <div class="one col-lg-4 col-md-12 col-12 p-0">
              <img class="img-fluid" src="pimg/new/img2.jpg" alt=""/>
              <div class="details">
                <h2>cakes at its best</h2>
                <button class="text-uppercase">Order Now</button>
              </div>
            </div>
            <div class="one col-lg-4 col-md-12 col-12 p-0">
              <img class="img-fluid" src="pimg/new/img3.jpg" alt=""/>
              <div class="details">
                <h2>Customize your cake</h2>
                <button class="text-uppercase"><a href="custom.aspx" style="text-decoration:none;color:white">Order Now</a></button>
              </div>
            </div>
          </div>
        </section>

        <section id="featured" class="my-5 pb-5">
          <div class="container text-center mt-5 py-5">
            <h3>Our Featured</h3>
            <hr class="mx-auto"/>
              <p>Here you can check out our products with fair price on Delicious Treats.</p>
          </div>
          <div class="row mx-auto container-fluid">
            <div class="product text-center col-lg-3 col-md-4 col-12">
              <img class="img-fluid mb-3" src="pimg/featured/img1.jpg" alt=""/>
              <h5 class="p-name">Macroon Cake</h5>
              <h4 class="p-price">Rs.700</h4>
              <button class="buy-btn">Buy Now</button>
        </div>
          
          <div class="product text-center col-lg-3 col-md-4 col-12">
            <img class="img-fluid mb-3" src="pimg/featured/img2.jpg" alt=""/>
            <h5 class="p-name">6 Combo Donuts</h5>
            <h4 class="p-price">Rs.500</h4>
            <button class="buy-btn">Buy Now</button>

        </div>
        <div class="product text-center col-lg-3 col-md-4 col-12">
          <img class="img-fluid mb-3" src="pimg/featured/img3.jpg" alt=""/>
          <h5 class="p-name">Strawberry cupcake</h5>
          <h4 class="p-price">Rs.150</h4>
          <button class="buy-btn">Buy Now</button>

      </div>
      <div class="product text-center col-lg-3 col-md-4 col-12">
        <img class="img-fluid mb-3" src="pimg/featured/img4.jpg" alt=""/>
        <h5 class="p-name">2-tier multicolored cake</h5>
        <h4 class="p-price">Rs.1200</h4>
        <button class="buy-btn">Buy Now</button>
          </div>
        </div>
        </section>

        <section id="banner" class="my-5 py-5">
          <div class="container">
            <h4>ENJOY EVERY MOMENT</h4>
            <h1>Your happiness is <br/>our responsibility</h1>
            <button class="text-uppercase">Order Now</button>
          </div>        
        </section>

        <section id="cakes" class="my-5">
          <div class="container text-center mt-5 py-5">
            <h3>Cakes</h3>
            <hr class="mx-auto"/>
              <p>Here you can check out our products with fair price on Delicious Treats.</p>
          </div>
          <div class="row mx-auto container-fluid">
            <div class="product text-center col-lg-3 col-md-4 col-12">
              <img class="img-fluid mb-3" src="pimg/Cakes/img1.jpg" alt=""/>
              <h5 class="p-name">Rose cake</h5>
              <h4 class="p-price">Rs.700</h4>
              <button class="buy-btn">Buy Now</button>
                
          </div>
          <div class="product text-center col-lg-3 col-md-4 col-12">
            <img class="img-fluid mb-3" src="pimg/Cakes/sample4.jpg" alt=""/>
            <h5 class="p-name">Rainbow cake</h5>
            <h4 class="p-price">Rs.600</h4>
            <button class="buy-btn">Buy Now</button>

        </div>
        <div class="product text-center col-lg-3 col-md-4 col-12">
          <img class="img-fluid mb-3" src="pimg/Cakes/img3.jpg" alt=""/>
          <h5 class="p-name">Vanilla cake</h5>
          <h4 class="p-price">Rs.1400</h4>
          <button class="buy-btn">Buy Now</button>

      </div>
      <div class="product text-center col-lg-3 col-md-4 col-12">
        <img class="img-fluid mb-3" src="pimg/Cakes/img4.jpg" alt=""/>
        <h5 class="p-name">Black berry cake</h5>
        <h4 class="p-price">Rs.1000</h4>
        <button class="buy-btn">Buy Now</button>

        </div>
              </div>
        </section>

        <section id="donuts" class="my-5">
          <div class="container text-center mt-5 py-5">
            <h3>Donuts</h3>
            <hr class="mx-auto"/>
              <p>Here you can check out our products with fair price on Delicious Treats.</p>
          </div>
          <div class="row mx-auto container-fluid">
            <div class="product text-center col-lg-3 col-md-4 col-12">
              <img class="img-fluid mb-3" src="pimg/donuts/img1.jpg" alt=""/>
              <h5 class="p-name">Rose cake</h5>
              <h4 class="p-price">Rs.700</h4>
              <button class="buy-btn">Buy Now</button>
            </div>
          <div class="product text-center col-lg-3 col-md-4 col-12">
            <img class="img-fluid mb-3" src="pimg/donuts/img2.jpg" alt=""/>
            <h5 class="p-name">Rainbow cake</h5>
            <h4 class="p-price">Rs.600</h4>
            <button class="buy-btn">Buy Now</button>

          </div>
          <div class="product text-center col-lg-3 col-md-4 col-12">
            <img class="img-fluid mb-3" src="pimg/donuts/img3.jpg" alt=""/>
            <h5 class="p-name">Vanilla cake</h5>
            <h4 class="p-price">Rs.1400</h4>
            <button class="buy-btn">Buy Now</button>
          </div>
          <div class="product text-center col-lg-3 col-md-4 col-12">
            <img class="img-fluid mb-3" src="pimg/donuts/img4.jpg" alt=""/>
            <h5 class="p-name">Black berry cake</h5>
            <h4 class="p-price">Rs.1000</h4>
            <button class="buy-btn">Buy Now</button>
          </div>
          </div>
        </section>

        <section id="CupCakes" class="my-5">
          <div class="container text-center mt-5 py-5">
            <h3>CupCakes</h3>
            <hr class="mx-auto"/>
              <p>Here you can check out our products with fair price on Delicious Treats.</p>
          </div>
          <div class="row mx-auto container-fluid">
            <div class="product text-center col-lg-3 col-md-4 col-12">
              <img class="img-fluid mb-3" src="pimg/cupcakes/img1.jpg" alt=""/>
              <h5 class="p-name">Rose cake</h5>
              <h4 class="p-price">Rs.700</h4>
              <button class="buy-btn">Buy Now</button>
            </div>
          <div class="product text-center col-lg-3 col-md-4 col-12">
            <img class="img-fluid mb-3" src="pimg/cupcakes/img2.jpg" alt=""/>
            <h5 class="p-name">Rainbow cake</h5>
            <h4 class="p-price">Rs.600</h4>
            <button class="buy-btn">Buy Now</button>

          </div>
          <div class="product text-center col-lg-3 col-md-4 col-12">
            <img class="img-fluid mb-3" src="pimg/cupcakes/img3.jpg" alt=""/>
            <h5 class="p-name">Vanilla cake</h5>
            <h4 class="p-price">Rs.1400</h4>
            <button class="buy-btn">Buy Now</button>
          </div>
          <div class="product text-center col-lg-3 col-md-4 col-12">
            <img class="img-fluid mb-3" src="pimg/cupcakes/img4.jpg" alt=""/>
            <h5 class="p-name">Black berry cake</h5>
            <h4 class="p-price">Rs.1000</h4>
            <button class="buy-btn">Buy Now</button>
          </div>
          </div>
        </section>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>

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
              <center><div><a href="adlogin.aspx">ADMIN?</a></div></center>

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
        






        
          <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>

    </form>
</body>
</html>
