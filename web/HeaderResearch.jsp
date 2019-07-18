<%-- 
    Document   : HeaderResearch.jsp
    Created on : 18 juil. 2019, 22:43:00
    Author     : Ferhat Yacine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <style>
        .center , .center-column, .top, .right, .bottom, .left{
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .center-column{
            flex-direction: column;
        }

        .top{
            align-items: flex-start;
        }
        .right{
            justify-content: flex-end;
        }
        .bottom{
            align-items: flex-end;
        }
        .left{
            justify-content: flex-start;
        }
        .single-spaced, .single-spaced *{
            line-height: 1;
        }
    </style>
    </head>
    <body>
        <div class="hero-head has-background-black">
            <div class="columns is-mobile is-marginless heading has-text-weight-bold">
                <div class="column left ">
                    <a href="HomeAdmin.jsp" class="navbar-item has-text-white">Bouquini</a>
                </div>
                <div class="column center">
                    <a href="AdminUsers.jsp" class="navbar-item has-text-white">Users</a>
                    <a href="AdminBooks.jsp" class="navbar-item has-text-white">Books</a>
                    <a href="AdminWriters.jsp" class="navbar-item has-text-white">Writers</a>
                </div>
                <div class="column right">
                    <a href="index.jsp" class="navbar-item has-text-white">Disconnect</a>
                </div>
            </div>
        </div>    
    </body>
</html>
