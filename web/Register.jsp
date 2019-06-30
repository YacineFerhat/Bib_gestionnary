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

    <title>Register</title>

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
    <section class="hero is-fullheight">
        <div class="hero-head is-black">
            <div class="columns is-mobile is-marginless heading has-text-weight-bold">
                <div class="column left">
                    <p class="navbar-item">Bouquini</p>
                </div>
                <div class="column right">
                    <p class="navbar-item">Disconnect</p>
                </div>
            </div>
        </div>

        <div class="hero-body">
           <div class="container">
               <div class="columns is-centered">
                   <div class="column is-10 is-offset-1">
                       <div class="box">
                           <div class="title is-3 has-text-centered">
                               Register
                           </div>
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
                                                <span class="icon is-small is-right">
                                                <i class="fas fa-check"></i>
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
                                                <i class="fas fa-envelope"></i>
                                                </span>
                                                <span class="icon is-small is-right">
                                                <i class="fas fa-check"></i>
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
                                                <i class="fas fa-envelope"></i>
                                                </span>
                                                <span class="icon is-small is-right">
                                                <i class="fas fa-check"></i>
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
                                        <input value="Cancel" class="button is-danger">
                                        
                                    </p>
                                </div>
                           </form>
                       </div>
                   </div>
               </div>
           </div>
        </div>
    </section>
</body>
</html>