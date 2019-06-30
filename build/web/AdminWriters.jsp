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
    
    <link href="~bulma-calendar/dist/css/bulma-calendar.min.css" rel="stylesheet">
    <script src="~bulma-calendar/dist/js/bulma-calendar.min.js"></script>
    <title>Manage the writers</title>

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
            padding-top : 120px;
        }
    </style>
</head>
<body>
    <section class="hero is-fullheight">
         <div class="hero-head is-black">
            <div class="columns is-mobile is-marginless heading has-text-weight-bold">
                <div class="column left">
                    <a href="admin.jsp" class="navbar-item">Bouquini</a>
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
                            <form action="user" method="POST">
                                    <div class="field has-addons">
                                        <p class="control">
                                            <span class="select">
                                            <select>
                                                <option>Last Name</option>
                                                <option>First Name</option>
                                                <option>Date of birth</option>
                                                
                                            </select>
                                            </span>
                                        </p>
                                        <p class="control is-expanded">
                                            <input class="input" type="text" placeholder="Type!">
                                        </p>
                                        <p class="control">
                                            <input class="button" value="Search">
                                        </p>
                                        <p class="control">
                                            <input class="button is-danger" id="OpenModal" value="add a writer">
                                        </p>
                                    </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="columns is-centered">
                    <div class="column">           
                        <table class="table is-fullwidth is-bordered is-striped is-hoverable">
                            <thead>
                                <tr>
                                    <th><abbr title="Num">Num</abbr></th>  
                                    <th><abbr title="FirstName">First Name</abbr></th>  
                                    <th><abbr title="LastName">Last Name</abbr></th>
                                    <th><abbr title="DateOfBirth">Date of Birth</abbr></th>
                                    <th><abbr title="Actions">Actions</abbr></th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th><abbr title="Num">Num</abbr></th>
                                    <th><abbr title="FirstName">First Name</abbr></th>  
                                    <th><abbr title="LastName">Last Name</abbr></th>
                                    <th><abbr title="DateOfBirth">Email address</abbr></th>
                                    <th><abbr title="Actions">Actions</abbr></th>
                                </tr>
                            </tfoot>
                            <tbody>
                                <%
                                try{
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Cawa","root","");
                                    String Query = "Select Num,Nom,Prenom,DateDeNaissance from auteur";
                                    Statement stm=conn.createStatement();
                                    ResultSet rs = stm.executeQuery(Query);
                                    while(rs.next()){
                                  %><tr>
                                        <td>#<%=rs.getInt("Num")%></td>  
                                        <td><%=rs.getString("Nom")%></td>
                                        <td><%=rs.getString("prenom")%></td>
                                        <td><%=rs.getString("DateDeNaissance")%></td>

                                        <td class="has-text-centered">
                                            <div class="buttons are-small">
                                                <a class="button is-danger">delete</a>
                                                <a class="button is-warning">modify</a>
                                                <a class="button is-info">consult</a>
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
                            
    <div class="modal" id="ModalToOpen">
        <div class="modal-background"></div>
            <div class="modal-card">
                <header class="modal-card-head">
                    <p class="modal-card-title">Add a writer</p>
                    <button id="CloseModal" class="delete" aria-label="close"></button>
                </header>
                <section class="modal-card-body">
                  <!-- Content ... -->
                  <form action="AddWriter" method="get">
                    <div class="field is-horizontal">
                        <div class="field-label is-normal">
                            <label class="label">Writer's family name</label>
                        </div>
                        <div class="field-body">
                            <div class="field">
                            <p class="control is-expanded has-icons-left">
                                <input class="input" type="text" placeholder="Ferhat" name="WriterFamilyName">
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
                            <label class="label">Writer's first name</label>
                        </div>
                        <div class="field-body">
                            <div class="field">
                            <p class="control is-expanded has-icons-left">
                                <input class="input" type="text" placeholder="Yacine" name="WriterFirstName">
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
                            <label class="label">Writer's Birth</label>
                        </div>
                        <div class="field-body">
                            <div class="field">
                                <p class="control is-expanded has-icons-left has-icons-right">
                                    <input class="input" type="date" name="WriterBirth">                                                <span class="icon is-small is-left">
                                        <i class="far fa-calendar-alt"></i>
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
                            <input type="submit" value="Cancel" class="button is-danger">

                        </p>
                    </div>
               </form>
                </section>

        </div>
    </div>

<script src="js/main.js"></script>
</body>
</html>