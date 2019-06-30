import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Driver;
import java.io.IOException;
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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ferhat Yacine
 */

public class AddWriter extends HttpServlet {
    protected void doGet(HttpServletRequest r, HttpServletResponse s)throws IOException, ServletException{
        String FamilyName= r.getParameter("WriterFamilyName");
        String FirstName= r.getParameter("WriterFirstName");
        String Birth= r.getParameter("WriterBirth");
        PrintWriter p = s.getWriter();
        //Num(num),Nom,Prenom,DateDeNaissance
            
        try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection c;
           c= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Cawa","root","");
           Statement st = c.createStatement();
            PreparedStatement pst1 = c.prepareStatement("select max(Num)+1 from auteur");
            ResultSet rs = pst1.executeQuery();
            String Auteur_id ="" ;
            while(rs.next())
            {
                Auteur_id = rs.getString(1);
            }
           st.executeUpdate("insert into auteur values('"+Auteur_id+"','"+FamilyName+"','"+FirstName+"','"+Birth+"');");
           RequestDispatcher rd = r.getRequestDispatcher("AdminWriters.jsp");
           rd.include(r,s);
        }catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AddWriter.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
}