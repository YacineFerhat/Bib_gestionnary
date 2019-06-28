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

/**
 *sss
 * @author Ferhat Yacine
 */
public class Admin extends HttpServlet {
    protected void doPost(HttpServletRequest r, HttpServletResponse s)throws IOException, ServletException
    {
        String user = r.getParameter("users");
        String book = r.getParameter("books");
        String writer = r.getParameter("writers");
        
    }
            
}