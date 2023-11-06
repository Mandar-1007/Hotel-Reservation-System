
package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import others.DatabaseConnection;
import others.test;

@WebServlet("/sendotpcontroller")
public class sendotpcontroller extends HttpServlet

{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        String email=req.getParameter("email");
        try 
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/hotel","hotel","hotel");
            PreparedStatement ps;
            ps = con.prepareStatement("select * from userdata where email=?");
            ps.setString(1, email);
            ResultSet rs=ps.executeQuery();
            
            if(rs.next())
            {
                Random r=new Random();
                int otp=r.nextInt(8999)+1000;
                test test=new test(email, "Password RESET OTP", "Your One Time Password: "+otp);
                test.sendEmail();
                
                HttpSession hs=req.getSession();
                hs.setAttribute("otp", otp+"");
                hs.setAttribute("email", email);
                con.close();
                resp.sendRedirect("enterotp.jsp");
            }
            con.close();
        } 
        catch (Exception e) 
        {
            System.out.println(e);
        }
    }
    
}
