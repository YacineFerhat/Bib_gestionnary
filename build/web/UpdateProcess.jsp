<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%!String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/cawa";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%

String ISSN = request.getParameter("id");
String BookTitle = request.getParameter("BookTitle");
String BookDomain = request.getParameter("BookDomain");
String BookResume = request.getParameter("BookResume");
String BookPages = request.getParameter("BookPages");
String BookCovert = request.getParameter("BookCovert");
if(ISSN != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(ISSN);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);

String sql="Update livre set titre=?,Resume=?,NbPage=?,Domaine=? where ISSN="+ISSN;
ps = con.prepareStatement(sql);
ps.setString(1,BookTitle);
ps.setString(2, BookResume);
ps.setString(3, BookPages);
ps.setString(4, BookDomain);
    response.sendRedirect("AdminBooks.jsp");

int i = ps.executeUpdate();
if(i > 0)
{
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%> 


