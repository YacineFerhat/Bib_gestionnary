/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Driver;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Ferhat Yacine
 */

@MultipartConfig(maxFileSize = 161000000)

//@MultiPartConfig(FileSiezThreshold=1024*1024*2,maxFileSize=1024*1024*10,maxRequestSize=1024*1024*50)


public class AddBook extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
        String BookTitle= request.getParameter("BookTitle");
        String BookDomain= request.getParameter("BookDomain");
        String BookResume= request.getParameter("BookResume");
        String BookPages= request.getParameter("BookPages");
        Part BookCovert = request.getPart("BookCovert");

        
        PrintWriter p = response.getWriter();
        //ISSN(AI),titre,resume,NbPage,Domain,Couverture
        
        try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection c;
           c= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Cawa","root","");
           Statement st = c.createStatement();
            PreparedStatement pst1 = c.prepareStatement("select max(ISSN)+1 from livre");
            ResultSet rs = pst1.executeQuery();
            String book_id ="" ;
            while(rs.next())
            {
                book_id = rs.getString(1);
            }
           InputStream input = BookCovert.getInputStream();
           st.executeUpdate("insert into livre values('"+book_id+"','"+BookTitle+"','"+BookResume+"','"+BookPages+"','"+BookDomain+"','"+ input +"');");
           //st.executeUpdate("insert into livre values(?,?,?,?,?,?)");
           /*
           
           pst1.setString(1,book_id);
           pst1.setString(2,BookTitle);
           pst1.setString(3,BookResume);
           pst1.setString(4,BookPages);
           pst1.setString(5,BookDomain);
           pst1.setBlob(6,input);
          */
           
           RequestDispatcher rd= request.getRequestDispatcher("AdminBooks.jsp");
           rd.forward(request, response);
        }catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AddBook.class.getName()).log(Level.SEVERE, null, ex);
        }
        }
     
    }


