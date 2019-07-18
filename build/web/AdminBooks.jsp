<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="livrecore"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="livresql"%>
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

    <title>Manage the books</title>

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
            padding-top: 40px;
        }
    </style>
</head>
<body>
    <section class="hero is-fullheight">
         <div class="hero-head ">
            <div class="columns is-mobile is-marginless heading has-text-weight-bold">
                <div class="column left">
                    <a href="HomeAdmin.jsp" class="navbar-item">Bouquini</a>
                    <p class="navbar-item has-text-dark">  
                        <% String user =session.getAttribute("user").toString();
                         out.print(" "+user); 
                        %>
                    </p>
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
                            <form action="AdminBooksResearch.jsp" method="POST">
                                <div class="field has-addons">
                                    <p class="control">
                                        <span class="select">
                                            <select name="selection">
                                            <option value="ISSN">Code</option>
                                            <option value="Titre">Title</option>
                                            <option value="Domaine">Domain</option>   
                                            <option value="NbPage">NbPages</option>                                              

                                        </select>
                                        </span>
                                    </p>
                                    <p class="control is-expanded">
                                        <input class="input" name="val" type="text" placeholder="Type!">
                                    </p>
                                    <p class="control">
                                        <input class="button" value="Search" type="submit" style="width:250px;">
                                    </p>
                                    <p class="control">
                                        <input class="button is-danger" id="OpenModal" value="add a book">
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
                                <p class="modal-card-title">Add a book</p>
                                <button id="CloseModal" class="delete" aria-label="close"></button>
                            </header>
                            <section class="modal-card-body">
                              <!-- Content ... -->
                              <form action="AddBook" method="post" enctype="multipart/form-data">
                                <div class="field is-horizontal">
                                    <div class="field-label is-normal">
                                        <label class="label">Title</label>
                                    </div>
                                    <div class="field-body">
                                        <div class="field">
                                        <p class="control is-expanded has-icons-left">
                                            <input class="input" type="text" placeholder="Apprendre à coder" name="BookTitle">
                                            <span class="icon is-small is-left">
                                              <i class="fas fa-book"></i>
                                            </span>
                                        </p>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <div class="field is-horizontal">
                                    <div class="field-label is-normal">
                                        <label class="label">Book's domain</label>
                                    </div>
                                    <div class="field-body">
                                        <div class="field">
                                        <p class="control is-expanded has-icons-left">
                                            <input class="input" type="text" placeholder="Coding" name="BookDomain">
                                            <span class="icon is-small is-left">
                                                <i class="fas fa-tags"></i>
                                            </span>
                                        </p>
                                        </div>
                                    </div>
                                </div>
                                <br>

                                <div class="field is-horizontal">
                                    <div class="field-label is-normal">
                                        <label class="label">Book's Resume</label>
                                    </div>
                                    <div class="field-body">
                                        <div class="field">
                                            <p class="control is-expanded has-icons-left has-icons-right">
                                                <input class="textarea" placeholder="e.g made for begginer, to learn how to code !" name="BookResume">                                                <span class="icon is-small is-left">
                                            </p>
                                        </div>    
                                    </div>
                                </div>
                                <br>

                                <div class="field is-horizontal">
                                    <div class="field-label is-normal">
                                        <label class="label">Nb Pages</label>
                                    </div>
                                    <div class="field-body">
                                        <div class="field">
                                            <p class="control is-expanded has-icons-left has-icons-right">
                                                <input class="input " type="text" placeholder="520" name="BookPages">
                                            </p>
                                        </div>    
                                    </div>
                                </div>
                                <br>

                                <div class="field is-horizontal">
                                    <div class="field-label is-normal">
                                        <label class="label">Book's covert</label>
                                    </div>
                                    <div class="field-body">
                                       <div class="file">
                                            <label class="file-label">
                                                <input class="file-input" type="file" name="BookCovert">
                                                <span class="file-cta">
                                                    <span class="file-icon">
                                                        <i class="fas fa-upload"></i>
                                                    </span>
                                                <span class="file-label">
                                                  Choose a file
                                                </span>
                                              </span>
                                            </label>
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
                                    <th><abbr title="Code">Code</abbr></th>  
                                    <th><abbr title="Name">Name</abbr></th>
                                    <th><abbr title="Domain">Domain</abbr></th>
                                    <th><abbr title="Nbr pages">Nb pages</abbr></th>
                                    <th><abbr title="Resume">Resume</abbr></th>
                                    <th><abbr title="Action"><p class="has-text-centered">Actions</p></abbr></th>

                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th><abbr title="Code">Code</abbr></th>  
                                    <th><abbr title="Name">Name</abbr></th>
                                    <th><abbr title="Domain">Domain</abbr></th>
                                    <th><abbr title="Nbr pages">Nb pages</abbr></th>
                                    <th><abbr title="Resume">Resume</abbr></th>
                                    <th><abbr title="Action"><p class="has-text-centered">Actions</p></abbr></th>
                                </tr>
                            </tfoot>
                            <tbody>
                                <%
                                try{
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Cawa","root","");
                                    String Query = "Select ISSN,Titre,Resume,NbPage,Domaine from livre";
                                    Statement stm=conn.createStatement();
                                    ResultSet rs = stm.executeQuery(Query);
                                    while(rs.next()){
                                  %><tr>
                                        <td><%=rs.getInt("ISSN")%></td>  
                                        <td><%=rs.getString("Titre")%></td>
                                        <td><%=rs.getString("Domaine")%></td>
                                        <td><%=rs.getInt("NbPage")%></td>
                                        <td><%=rs.getString("Resume")%></td>
                                        <td class="has-text-centered" style="min-width:150px">
                                            <div class="buttons are-small">
                                                <a class="button is-danger" href="DeleteBook?id=<%=rs.getInt("ISSN") %>">delete</a>
                                                <a class="button is-warning" href='ModifyBook.jsp?u=<%= rs.getInt("ISSN")%>'>modify</a>
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