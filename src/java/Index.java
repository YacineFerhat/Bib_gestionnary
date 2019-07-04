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
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("email");
        String pass = request.getParameter("passWord");
        
        if(Validate.checkUser(email, pass,"1"))
        {
            RequestDispatcher rs = request.getRequestDispatcher("/admin.jsp");
            rs.forward(request, response);
        }
        else if(Validate.checkUser(email, pass,"0")){
            RequestDispatcher rs = request.getRequestDispatcher("/HomeUser.jsp");
            rs.forward(request, response);
        }
        else{
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.include(request,response);
            PrintWriter print = response.getWriter();
            print.print("<script>alert('Problème d'authentification')</script>");
        }
    }  
  
}
