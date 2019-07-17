<!DOCTYPE html>

<%@page import="java.sql.*;" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <script src="https://kit.fontawesome.com/773695578b.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <title>Users</title>

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
        .modal{
            padding-top: 50px;
        }
       
    </style>
</head>
<body>
    <section class="hero is-fullheight">
        <div class="hero-head is-black">
            <div class="columns is-mobile is-marginless heading has-text-weight-bold">
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
                    <div class="column has-text-centered">
                        <div class="box">
                            <form action="AdminUsersResearch.jsp" method="POST">
                                    <div class="field has-addons">
                                        <p class="control">
                                            <span class="select">
                                            <select name="selection">
                                                <option value="id">Number</option>
                                                <option value="nom">Last Name</option>
                                                <option value="prenom">First Name</option>
                                                <option value="email">Email</option>                    
                                            </select>
                                            </span>
                                        </p>
                                        <p class="control is-expanded">
                                            <input class="input" name="val" type="text" placeholder="Type!">
                                        </p>
                                        <p class="control">
                                            <input class="button" type="submit" style="width:250px;" value="Search">
                                        </p>
                                        <p class="control">
                                            <input class="button is-danger" id="OpenModal" value="add a user">
                                        </p>
                                    </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="modal" id="ModalToOpen">
                    <div class="modal-background"></div>
                        <div class="modal-card">
                            <header class="modal-card-head">
                                <p class="modal-card-title">Add a user</p>
                                <button id="CloseModal" class="delete" aria-label="close"></button>
                            </header>
                            <section class="modal-card-body">
                              <!-- Content ... -->
                              <form action="AddUser" method="get">
                                <div class="field is-horizontal">
                                    <div class="field-label is-normal">
                                        <label class="label">User's family name</label>
                                    </div>
                                    <div class="field-body">
                                        <div class="field">
                                        <p class="control is-expanded has-icons-left">
                                            <input class="input" type="text" placeholder="Ferhat" name="UserFamilyName">
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
                                        <label class="label">User's first name</label>
                                    </div>
                                    <div class="field-body">
                                        <div class="field">
                                        <p class="control is-expanded has-icons-left">
                                            <input class="input" type="text" placeholder="Yacine" name="UserFirstName">
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
                                        <label class="label">User's email</label>
                                    </div>
                                    <div class="field-body">
                                        <div class="field">
                                            <p class="control is-expanded has-icons-left has-icons-right">
                                                <input class="input" type="email" placeholder="yacine.frhat@gmail.com" name="UserEmail">                                                <span class="icon is-small is-left">
                                                    <i class="fas fa-envelope"></i>
                                                </span>
                                            </p>
                                        </div>    
                                    </div>
                                </div>
                                <br>

                                <div class="field is-horizontal">
                                    <div class="field-label is-normal">
                                        <label class="label">User's password</label>
                                    </div>
                                    <div class="field-body">
                                        <div class="field">
                                            <p class="control is-expanded has-icons-left has-icons-right">
                                                <input class="input" type="password" placeholder="****" name="UserPassWord">
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
                                        <label class="label">Confirm password</label>
                                    </div>
                                    <div class="field-body">
                                        <div class="field">
                                            <p class="control is-expanded has-icons-left has-icons-right">
                                                <input class="input" type="password" placeholder="****" name="UserPassWordConfirm">
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
                                        <input type="reset" value="Cancel" class="button is-danger">
                                        
                                    </p>
                                </div>
                           </form>
                            </section>
                        
                    </div>
                </div>
                
                <div class="columns is-centered">
                    <div class="column">
                        
                        <table class="table is-fullwidth is-bordered is-striped is-hoverable">
                            <thead>
                                <tr>
                                    <th><abbr title="Id">Id</abbr></th>
                                    <th><abbr title="Last Name">Last Name</abbr></th>  
                                    <th><abbr title="First Name">First Name</abbr></th>
                                    <th><abbr title="Email">Email address</abbr></th>
                                    <th><abbr title="Actions"><p class="has-text-centered">Actions</p></abbr></th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>          
                                    <th><abbr title="Id">Id</abbr></th>
                                    <th><abbr title="Last Name">Last Name</abbr></th>  
                                    <th><abbr title="First Name">First Name</abbr></th>
                                    <th><abbr title="Email address">Email address</abbr></th>
                                    <th><abbr title="Actions"><p class="has-text-centered">Actions</p></abbr></th>
                                </tr>
                            </tfoot>
                            <tbody>
                                <%
                                try{
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Cawa","root","");
                                    String Query = "Select id,nom,prenom,email from utilisateur";
                                    Statement stm=conn.createStatement();
                                    ResultSet rs = stm.executeQuery(Query);
                                    while(rs.next()){
                                  %><tr>
                                        <td>#<%=rs.getString("id")%></td>  
                                        <td><%=rs.getString("nom")%></td>  
                                        <td><%=rs.getString("prenom")%></td>
                                        <td><%=rs.getString("email")%></td>
                                        <td class="has-text-centered" >
                                            <div class="buttons is-centered are-small">
                                                <a class="button is-danger" href="DeleteUser?id=<%=rs.getInt("id") %>">delete</a>
                                                <a class="button is-warning" href='ModifyUser.jsp?u=<%= rs.getInt("id")%>'>modify</a>
                                            </div>
                                        </td>
                                    </tr>
                                  <%
                                    }
                                }
                                catch(Exception ex){
                                    out.println("erreur");
                                }

                                  %>
                            </tbody>
                        </table>
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
    <script src="js/main.js"></script>

                            
</body>
</html>