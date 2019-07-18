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

public class AddUser extends HttpServlet {
    protected void doGet(HttpServletRequest r, HttpServletResponse s)throws IOException, ServletException{
        String FamilyName= r.getParameter("UserFamilyName");
        String FirstName= r.getParameter("UserFirstName");
        String mail= r.getParameter("UserEmail");
        String password= r.getParameter("UserPassWord");
        String confirmPassword= r.getParameter("UserPassWordConfirm");
        String grade = r.getParameter("grade");
        PrintWriter p = s.getWriter();
        
        int grd;
        if (grade.equals("admin")) grd =1;
        else grd =0;
        
        //id(AI),nom,prenom,email,passWord,grade(0/1)
        if(password.equals(confirmPassword)){
            
        try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection c;
           c= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Cawa","root","");
           Statement st = c.createStatement();
            PreparedStatement pst1 = c.prepareStatement("select max(id)+1 from utilisateur");
            ResultSet rs = pst1.executeQuery();
            String user_id ="" ;
            while(rs.next())
            {
                user_id = rs.getString(1);
            }
           st.executeUpdate("insert into utilisateur values('"+user_id+"','"+FamilyName+"','"+FirstName+"','"+mail+"','"+password+"','"+grd +"');");
           RequestDispatcher rd = r.getRequestDispatcher("AdminUsers.jsp");
           rd.include(r,s);
        }catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AddUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        }
        else{
            RequestDispatcher rd = r.getRequestDispatcher("Register.jsp");
            rd.include(r,s);
            PrintWriter print = s.getWriter();
            print.print("<script>alert('Vos mot de passes sont différents')</script>");
        }
    }
}