﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="aboutus" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>About Us card</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700&display=swap');



        * {
            box-sizing: border-box;
            padding: 0;
            margin: 0;
        }



        body {
            font-family: 'Playfair Display', serif;
            display: grid;
            /*background-color: #4158D0;*/ 
            /*background-image: linear-gradient(43deg, #4158D0 0%, #C850C0 46%, #FFCC70 100%);*/
            background-color: #d7882b;
            align-content: center;
            min-height: 100vh;
        }



        section {
            margin-top: 45px;
            display: grid;
            grid-template-columns: 1fr 1fr;
            min-height: 70vh;
            width: 80vw;
            margin: 0 auto;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            border-radius: 12px;
        }



        .image {
            background-color: #12192c;
            display: flex;
            border-radius: 12px 0 0 12px;
        }



            .image img {
                height: 350px;
                margin: 60px auto;
            }



        .content {
            background-color: #12192c;
            display: flex;
            justify-content: center;
            flex-direction: column;
            align-items: center;
            border-radius: 0 12px 12px 0;
            color: #fff;
        }



            .content h2 {
                text-transform: uppercase;
                font-size: 36px;
                letter-spacing: 6px;
                opacity: 0.9;
            }



            .content span {
                height: 0.5px;
                width: 80px;
                background: #777;
                margin: 30px 0;
            }



            .content p {
                padding-bottom: 15px;
                font-weight: 300;
                opacity: 0.7;
                width: 60%;
                text-align: center;
                margin: 0 auto;
                line-height: 1.7;
                color: #ffffff
            }



        .links {
            margin: 15px 0;
        }



            .links li {
                border: 2px solid #4158D0;
                list-style: none;
                border-radius: 5px;
                padding: 10px 15px;
                width: 160px;
                text-align: center;
            }



                .links li a {
                    text-transform: uppercase;
                    color: #fff;
                    text-decoration: none;
                }



                .links li:hover {
                    border-color: #C850C0;
                }



        .vertical-line {
            height: 30px;
            width: 3px;
            background: #C850C0;
            margin: 0 auto;
        }



        .icons {
            display: flex;
            padding: 15px 0;
        }



            .icons li {
                display: block;
                padding: 5px;
                margin: 5px;
            }



                .icons li i {
                    font-size: 26px;
                    opacity: 0.8;
                }



                    .icons li i:hover {
                        color: #C850C0;
                        cursor: pointer;
                    }





        /*****************/



        @media(max-width: 900px) {

            section {
                grid-template-columns: 1fr;
                width: 100%;
                border-radius: none;
            }



            .image {
                height: 100vh;
                border-radius: none;
            }



            .content {
                height: 100vh;
                border-radius: none;
            }



                .content h2 {
                    font-size: 20px;
                    margin-top: 50px;
                }



                .content span {
                    margin: 20px 0;
                }



                .content p {
                    font-size: 14px;
                }



            .links li a {
                font-size: 14px;
            }



            .links {
                margin: 5px 0;
            }



                .links li {
                    padding: 6px 10px;
                }



            .icons li i {
                font-size: 15px;
            }
        }



        .credit {
            text-align: center;
            color: #000;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }



            .credit a {
                text-decoration: none;
                color: #000;
                font-weight: bold;
            }
        </style>
</head>
<body>

    <section>
        <div class="image">

            <img src="img/aboutimg.jpg">

        </div>

        <div class="content">

            <h2>About Us</h2>

            <span><!-- line here --></span>

            <p>We are not just a bakery, we are not just bakers. In fact, we are just like you, a bunch of food lovers fascinated with sweet indulgence, who dreamt of creating and appetizing fairy land of devine delicacies that relishes the utmost desires. We are here to redefine the all-time classics to create some heavenly and unforgettable experiences. And with all this and more, we wish to fill the empty spaces in every conversation with a smile!</p>

            <ul class="links">

                <li><a href="login.aspx">Shop</a></li>

            </ul>

            <ul class="icons">

                <li>

                    <i class="fa fa-twitter"></i>

                </li>

                <li>

                    <i class="fa fa-facebook"></i>

                </li>

            </ul>

        </div>

    </section><br><br>

</body>

</html>
