<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/test";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String num = request.getParameter("num");
String nom=request.getParameter("nom");
String prenom=request.getParameter("prenom");
String date=request.getParameter("DateDeNaissance");

if(num != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(num);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update users set nom=?,prenom=?,DateDeNaissance=? where num="+num;
ps = con.prepareStatement(sql);
ps.setString(1,nom);
ps.setString(2,prenom);
ps.setString(3,date);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
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