<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String id=request.getParameter("val");
    String type = request.getParameter("selection");
%>

<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <script src="https://kit.fontawesome.com/773695578b.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <title>Home Research</title>
    
   
</head>

<body>
    <section class="hero is-fullheight">
            <%@ include file="/HeaderResearch.jsp" %>

              <div class="buttons is-right">
                  <a href="AdminWriters.jsp" style="margin-top:20px;" class="button is-black"><span class="icon">
                <i class="fas fa-arrow-circle-left"></i></span><span>Go back</span></a>
              </div>
        
       
        <div class="hero-body">
            <div class="container">
                <div class="box is-centered">
                        <h1 class="title is-3 has-text-centered">Votre recherche</h1>
                        <h1 class="subtitle is-5 has-text-centered">Vous avez fait une recherche par <%=type%> ayant la valeur <%=id%></h1>
                        <%
                        try{
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Cawa","root","");
                            String Query = "Select * from auteur where "+ type +" ='"+ id +"' ";
                            Statement stm=conn.createStatement();
                            ResultSet rs = stm.executeQuery(Query);
                            while(rs.next()){
                          %>
                          <div class="box">
                                        <article class="media" id="MediaToClose">
                                      
                                       <div class="media-content">
                                         <div class="content">                                          
                                           <ul>
                                               <li><strong>Code : </strong><%=rs.getString("Num")%></li>
                                               <li><strong>Last Name : </strong><%=rs.getString("Nom")%></li>
                                               <li><strong>First Name : </strong><%=rs.getString("Prenom")%></li>
                                               <li><strong>Date of Birth : </strong><%=rs.getString("DateDeNaissance")%></li>
                                           </ul>
                                         </div>
                                       </div>
                                     
                                     </article>
                                    </div>
    <%
            }
}
catch(Exception ex){
    out.println("erreur");
}

  %>
                </div>
            </div>
        </div>
    </section>
</body>
</html>

