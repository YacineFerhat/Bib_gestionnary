/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ferhat Yacine
 */
public class EditUser extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
        String id=request.getParameter("id");
        String nom=request.getParameter("nom");
        String prenom=request.getParameter("prenom");
        String email=request.getParameter("email");
        PrintWriter p= response.getWriter();
        //p.print("<p>"+ id+"</p>");

       //Les données passent sans soucis 
       try{
                Class.forName("com.mysql.jdbc.Driver");          
                Connection c= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Cawa","root","");
                Statement st = c.createStatement();
                //p.print("<p>Working</p>");
                String sql="Update utilisateur set nom=?,prenom=?,email=? where id="+id;
                //p.print("<p>Still working " + sql +"</p>");
                PreparedStatement ps = c.prepareStatement(sql);
                ps.setString(1,nom);
                ps.setString(2, prenom);
                ps.setString(3, email);
                //p.print("<p>Still working " + ps +"</p>");
                ps.executeUpdate();
                response.sendRedirect("AdminUsers.jsp");
          }
          catch (ClassNotFoundException ex) {
            Logger.getLogger(EditUser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(EditUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        //p.print("<p>Hello  "+ num +" , " + nom +" ,"+ prenom+ " ,"+DateDeNaissance +" </p>");
          
    }
}
 