/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
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
public class AdminUsers extends HttpServlet {
    protected void doPost(HttpServletRequest r, HttpServletResponse s)throws IOException, ServletException
    {    
        PrintWriter p = s.getWriter();
        try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection c;
           c= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/cawa","root","");
           Statement st = c.createStatement();
           //st.executeUpdate("insert into etudiant values('"+id+"','"+nom+"','"+prenom+"');");
           ResultSet rs;
           rs =  st.executeQuery("select nom,prenom,email from utilisateur");
           while(rs.next()){
               for(int i=1;i<100;i++)
                   p.print(rs.getString(i)+" ...");
               p.print("<\br>");
           }
           System.out.println("Succes");
        }catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AdminUsers.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
