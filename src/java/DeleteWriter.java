/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Ferhat Yacine
 */
public class DeleteWriter extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        String id=request.getParameter("id");
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cawa", "root", "");
        Statement st=conn.createStatement();
        int i=st.executeUpdate("DELETE FROM auteur WHERE num="+id);
                response.sendRedirect("AdminWriters.jsp");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
    }
}
