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
public class EditBook extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
        String id=request.getParameter("id");
        String BookTitle=request.getParameter("BookTitle");
        String BookDomain=request.getParameter("BookDomain");
        String BookResume=request.getParameter("BookResume");
        String BookPages=request.getParameter("BookPages");
        String BookCovert=request.getParameter("BookPages");

        PrintWriter p= response.getWriter();
        
        //p.print("<p>"+ id+"</p>");

       //Les données passent sans soucis 
       try{
                Class.forName("com.mysql.jdbc.Driver");          
                Connection c= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Cawa","root","");
                Statement st = c.createStatement();
                //p.print("<p>Working</p>");
                String sql="Update livre set Titre=?,Domaine=?,Resume=? ,NbPage=? where ISSN="+id;
                //p.print("<p>Still working " + sql +"</p>");
                PreparedStatement ps = c.prepareStatement(sql);
                ps.setString(1,BookTitle);
                ps.setString(2, BookDomain);
                ps.setString(3, BookResume);
                ps.setString(4, BookPages);
                //ps.setString(5, BookCovert);

                //p.print("<p>Still working " + ps +"</p>");
                ps.executeUpdate();
                response.sendRedirect("AdminBooks.jsp");
          }
          catch (ClassNotFoundException ex) {
            Logger.getLogger(EditBook.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(EditBook.class.getName()).log(Level.SEVERE, null, ex);
        }
          
    }
}
 