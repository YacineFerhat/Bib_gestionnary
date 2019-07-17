<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <script src="https://kit.fontawesome.com/773695578b.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

    <title>Home</title>

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
    <section class="hero is-fullheight is-black">
         <div class="hero-head has-background-white">
            <div class="columns has-text-black is-mobile is-marginless heading has-text-weight-bold">
                <div class="column left">
                    <a href="HomeAdmin.jsp" class="navbar-item">Bouquini</a>
                </div>
                <div class="column center">
                    <a href="AdminUsers.jsp" class="navbar-item">Users</a>
                    <a href="AdminBooks.jsp" class="navbar-item">Books</a>
                    <a href="AdminWriters.jsp" class="navbar-item">Writers</a>
                </div>
                <div class="column right">
                    <a href="index.jsp" class="navbar-item">Disconnect</a>
                </div>
            </div>
        </div>
        
        <div class="hero-body">
            <div class="container">
                <div class="columns is-centered">
                    <div class="column is-8">
                         
                        <h1 class="title is-4 has-text-centered" style="margin-top :80px;">Home</h1>
                        <h2 class="subtitle is-6 has-text-centered">As an admin, you can manage the whole system</h2>
            
                    </div>
                </div>
            </div>
           
            <form method="Get" action="Admin">
                <div class="container">    
            <div class="columns">
                <div class="column has-text-centered">
                    <div class="box has-background-white">
                        <span class="icon">
                            <i class="fas fa-users fa-2x">
                            </i>
                        </span>
                        <p class="title is-4 has-text-dark"> Users</p>
                        <p>
                            Here, u can access to the users of the system, you will be able to consult their informations, maybe modify some and delete some.
                        </p>
                        <br>
                        <a href="AdminUsers.jsp" class="button">Move on</a>
                    </div>
                </div>
                <div class="column has-text-centered">
                    <div class="box">
                        <span class="icon">
                            <i class="fas fa-book fa-2x"></i>
                        
                        </span>
                        <h1 class="title is-4 has-text-dark"> Books</h1>
                        <p>
                            Here, u can access to the books stored in the system, you will be able to consult their informations, add, delete and modify.
                        </p>
                        <br>
                        <a href="AdminBooks.jsp" class="button">Move on</a>
                    </div>
                </div>
                <div class="column has-text-centered">
                    <div class="box">
                        <span class="icon">
                            <i class="fas fa-feather-alt fa-2x"></i>                        
                        </span>
                        <h1 class="title is-4 has-text-dark"> Writers</h1>
                        <p>
                            Here, you can access to the writers, you will be able to consult their informations, add writers, modify or delete some.
                        </p>
                        <br>
                        <a href="AdminWriters.jsp" class="button">Move on</a>
                    </div>        
                </div>
            </div>
                </div>
            </form>
        </div>

    </section>
</body>
</html>