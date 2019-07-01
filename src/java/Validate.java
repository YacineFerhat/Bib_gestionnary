import java.sql.*;

public class Validate
 {
     public static boolean checkUser(String email,String pass, String grade) 
     {
      boolean st =false;
      try{

	 //loading drivers for mysql
         Class.forName("com.mysql.jdbc.Driver");

 	 //creating connection with the database 
         Connection con=DriverManager.getConnection
                        ("jdbc:mysql://localhost:3306/cawa","root","");
         PreparedStatement ps =con.prepareStatement
                             ("select * from utilisateur where email=? and passWord=? and grade=?");
         ps.setString(1, email);
         ps.setString(2, pass);
         ps.setString(3, grade);
         ResultSet rs =ps.executeQuery();
         st = rs.next();
        
      }catch(Exception e)
      {
          e.printStackTrace();
      }
         return st;                 
  }   
}