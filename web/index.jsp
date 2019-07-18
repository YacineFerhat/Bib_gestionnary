<%-- 
    Document   : index
    Created on : 21 juin 2019, 16:52:51
    Author     : Ferhat Yacine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gestion Bib</title>

    <!-- Links -->
    <link rel="stylesheet" href="style.css" />

    <!-- CDN's -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <style>
        .modal{
            padding-top: 80px;
        }
    </style>
    

  </head>
  <body style="background-image: linear-gradient(to bottom right, maroon, white 60%);">
    <section class="hero is-fullheight">
        <div class="hero-body">
            <div class="container">
                <div class="columns is-variable is-8" >
                    <div class="column is-half">
                        <div class="box">
                            <div class="field">
                                <h1 class="title is-4 has-text-centered">
                                    <i class="fas fa-unlock-alt"></i>
                                      Authentification
                                </h1>
                                <br/>
                            </div>
                            <form method="Post" action="Index">
                            <div class="field">
                                <label class="label has-text-left">Email</label>
                                <div class="control has-icons-left has-icons-right">
                                    <input name="email" class="input" type="email" placeholder="Exemple@gmail.com">
                                    <span class="icon is-small is-left">
                                        <i class="fas fa-envelope"></i>
                                    </span>
                                    <span class="icon is-small is-right">
                                        <i class="fas fa-exclamation-triangle"></i>
                                    </span>
                                </div>
                                <!--<p class="help is-danger">This email is invalid</p>-->
                            </div>
                            <div class="field">
                                <label class="label has-text-left">Password</label>
                                <p class="control has-icons-left">
                                    <input name="passWord" class="input" type="password" placeholder="Password">
                                    <span class="icon is-small is-left">
                                        <i class="fas fa-lock"></i>
                                    </span>
                                </p>
                            </div>
                           
                            
                            <div class="field ">
                                <div class="buttons is-right">
                                    <a id="OpenModal" class="button is-info">
                                        <span class="icon is-left is-small">
                                            <i class="fas fa-sign-in-alt" ></i>
                                        </span>
                                        . Register      
                                    </a>
                                    <button type="submit" class="button is-danger">
                                        <i class="fas fa-sign-in-alt" style="margin-right:5px;"> </i> Submit
                                    </button>             
                                </div>
                            </div>
                            </form>
                        </div>
                    </div>
                    <div class="column">
                        <h1 class="title is-3 has-text-centered">
                            Bouquini! <i class="fas fa-book-reader"></i>
                        </h1>
                        <p class="has-text-weight-semibold	">
                            
                            Bouquini is a full solution adapted to libraries allowing them to fully automatise the 
                            management of the librarie, it contains :

                        </p>
                        <br>
                        <ul>
                            <li>
                                <i class="fas fa-users"></i>
                                The management of the users.
                                
                            </li>
                            <br>
                            <li>
                                <i class="fas fa-book"></i>
                                The management of the books.
                            </li>
                            <br>
                            <li>
                                <i class="fas fa-user-edit"></i>
                                The management of the writers.
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
      
    <div class="modal" id="ModalToOpen">
        <div class="modal-background"></div>
            <div class="modal-card">
                <header class="modal-card-head">
                    <p class="modal-card-title has-text-centered">Register !</p>
                    <button id="CloseModal" class="delete" aria-label="close"></button>
                </header>
                <section class="modal-card-body">
                  <!-- Content ... -->
                  <form action="RegisterUser" method="get">
                                <div class="field is-horizontal">
                                    <div class="field-label is-normal">
                                        <label class="label">Family Name</label>
                                    </div>
                                    <div class="field-body">
                                        <div class="field">
                                        <p class="control is-expanded has-icons-left">
                                            <input class="input" type="text" placeholder="Family Name" name="UserFamilyName">
                                            <span class="icon is-small is-left">
                                            <i class="fas fa-user"></i>
                                            </span>
                                        </p>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <div class="field is-horizontal">
                                    <div class="field-label is-normal">
                                        <label class="label">First Name</label>
                                    </div>
                                    <div class="field-body">
                                        <div class="field">
                                        <p class="control is-expanded has-icons-left">
                                            <input class="input" type="text" placeholder="First Name" name="UserFirstName">
                                            <span class="icon is-small is-left">
                                            <i class="fas fa-user"></i>
                                            </span>
                                        </p>
                                        </div>
                                    </div>
                                </div>
                                <br>

                                <div class="field is-horizontal">
                                    <div class="field-label is-normal">
                                        <label class="label">Email</label>
                                    </div>
                                    <div class="field-body">
                                        <div class="field">
                                            <p class="control is-expanded has-icons-left has-icons-right">
                                                <input class="input is-success" type="email" placeholder="yacine.frhat@gmail.com" name="UserEmail">
                                                <span class="icon is-small is-left">
                                                <i class="fas fa-envelope"></i>
                                                </span>
                                             
                                            </p>
                                        </div>    
                                    </div>
                                </div>
                                <br>

                                <div class="field is-horizontal">
                                    <div class="field-label is-normal">
                                        <label class="label">PassWord</label>
                                    </div>
                                    <div class="field-body">
                                        <div class="field">
                                            <p class="control is-expanded has-icons-left has-icons-right">
                                                <input class="input is-success" type="password" placeholder="****" name="UserPassWord">
                                                <span class="icon is-small is-left">
                                                    <i class="fas fa-lock"></i>
                                                </span>
                                                
                                            </p>
                                        </div>    
                                    </div>
                                </div>
                                <br>

                                <div class="field is-horizontal">
                                    <div class="field-label is-normal">
                                        <label class="label">Confirm PassWord</label>
                                    </div>
                                    <div class="field-body">
                                        <div class="field">
                                            <p class="control is-expanded has-icons-left has-icons-right">
                                                <input class="input is-success" type="password" placeholder="****" name="UserPassWordConfirm">
                                                <span class="icon is-small is-left">
                                                    <i class="fas fa-lock"></i>
                                                </span>
                                                
                                            </p>
                                        </div>    
                                    </div>
                                </div>
                                <br>
                                <div class="field is-grouped is-grouped-centered">
                                    <p class="control">
                                        <input type="submit" value="Submit" class="button is-primary">
                                    </p>
                                    <p class="control">
                                        <input type="reset" value="Reset" class="button is-danger">
                                    </p>
                                </div>
                           </form>
                </section>
        </div>
    </div>
    <script src="js/main.js"></script>
  </body>
</html>