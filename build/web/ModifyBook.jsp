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
        <%
            
    String host="jdbc:mysql://localhost:3306/cawa";
    Statement stat = null;
    ResultSet res = null;
    Connection conn = null;
    PreparedStatement stmt = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection(host,"root","");    
%>
        
        <div class="hero-body">
            <div class="container">
                <div class="columns is-centered">
                    <div class="column is-8">
                        <div class="box">
                            <form action="EditBook" method="get" enctype="multipart/form-data">
                               <%
                                stat = conn.createStatement();
                                String u = request.getParameter("u");
                                int num = Integer.parseInt(u);
                                String data = "select * from livre where ISSN='"+ num +"'";
                                res = stat.executeQuery(data);
                                while(res.next()){
                                %> 
       
                                <h1 class="title is-4 has-text-centered"> Modify!</h1>
                                 <input type="hidden" name="id" value="<%=res.getString("ISSN") %>">
                              <div class="field is-horizontal">
                                  <div class="field-label is-normal">
                                      <label class="label">Title</label>
                                  </div>
                                  <div class="field-body">
                                      <div class="field">
                                      <p class="control is-expanded has-icons-left">
                                          <input class="input" type="text" placeholder="Apprendre à coder" name="BookTitle"
                                                 value='<%=res.getString("Titre")%>'>
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
                                          <input class="input" type="text" placeholder="Coding" 
                                            value='<%=res.getString("Domaine")%>' name="BookDomain">
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
                                              <input value='<%=res.getString("Resume")%>' class="textarea" placeholder="e.g made for begginer, to learn how to code !" name="BookResume">                                                <span class="icon is-small is-left">
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
                                              <input value='<%=res.getString("NbPage")%>' class="input " type="text" placeholder="520" name="BookPages">
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
                                <%
                                    }
                           
                                %>
                              <div class="field is-grouped is-grouped-centered">
                                  <p class="control">
                                      <input type="submit" value="Submit" class="button is-primary">
                                  </p>
                                  <p class="control">
                                      <input type="reset" value="Cancel" class="button is-danger">
                                  </p>
                              </div>
                         </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> 
</html>
    