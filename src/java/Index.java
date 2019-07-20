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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ferhat Yacine
 */
public class Index extends HttpServlet {
      protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter print = response.getWriter();

        RequestDispatcher RequestDispatcherIndex = request.getRequestDispatcher("/index.jsp");

        
        String email = request.getParameter("email");
        String pass = request.getParameter("passWord");
        
        if(!pass.isEmpty() && !email.isEmpty()){
           if(Validate.checkUser(email, pass,"1"))
        {   
            HttpSession ss = request.getSession();
            ss.setAttribute("user",email);
            this.getServletContext().getRequestDispatcher("/HomeAdmin.jsp").forward(request,response);
            this.getServletContext().getRequestDispatcher("/Header.jsp").forward(request,response);
            this.getServletContext().getRequestDispatcher("/HeaderReserch.jsp").forward(request,response);            
            
        }
        else if(Validate.checkUser(email, pass,"0")){
            
            HttpSession ss = request.getSession();
            ss.setAttribute("user",email);
            this.getServletContext().getRequestDispatcher("/HomeUser.jsp").forward(request,response);
            this.getServletContext().getRequestDispatcher("/HomeUserResearch.jsp").forward(request,response);
        }
        
        else{
            RequestDispatcherIndex.include(request,response);
            print.print("<html><body><script>alert('Les Id sont incorrects')</script></body></html>");

        } 
        }
        else if(pass.isEmpty() && email.isEmpty()) {
            
            RequestDispatcherIndex.include(request,response);
            print.print("<html><body><script>alert('Les champs Mot de passe et mail ne peuvent pas être vide!')</script></body></html>");

        }
        else if(email.isEmpty()) {
            RequestDispatcherIndex.include(request,response);
            print.print("<html><body><script>alert('Le champ Email ne peut pas être vide!')</script></body></html>");
 
        }
        else {
            RequestDispatcherIndex.include(request,response);
            print.print("<html><body><script>alert('Le champ Password ne peut pas être vide!')</script></body></html>");
 
        }
        
        
    }  
  
}
