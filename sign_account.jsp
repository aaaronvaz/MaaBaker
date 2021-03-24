<%-- 
    Document   : sign_account
    Created on : Mar 24, 2021, 9:02:12 AM
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import=""
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital@1&display=swap');
            h1{
                color: black;
                text-decoration: underline;
                font-family: 'Roboto Condensed', sans-serif;
            }
            p{
                color: lightcoral;
                font-family: 'Roboto Condensed', sans-serif;  
            }
            .account{
                display: flex;
                align-items: center;
                justify-content: center;
                flex-wrap: wrap;
                height:80%;
                width: 100%;
            }
            .heading{
                background-image: url("css/wallpaper.jpg");
                min-height: 200px;
                min-width: 360px;
                margin: 15px;
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
            }
            .logo{
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .logo img{
                opacity: 0.77;
                border-radius: 100px;
                -moz-border-radius: 100px;
                -webkit-border-radius: 100px;
                height: 90%;
            }
            
        </style>
    </head>
    <body>
        <header>
            <div class="heading">
                <div class="logo">
                    <img src="images/welcome_logo.PNG" id="main-logo"/>
                </div>
            </div>
        </header>
        <div class="account">
            <fieldset>
                <legend><h1>My Account</h1></legend>
                <p>Name:<% %></p>
                <p>Address:</p>
                <p>Contact no.:-------</p>
                <a href="myorder.html">My Orders</a>
            </fieldset>
        </div>
    </body>
</html>
