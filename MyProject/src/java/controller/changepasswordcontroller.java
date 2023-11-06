
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import others.DatabaseConnection;

@WebServlet("/changepasswordcontroller")
public class changepasswordcontroller extends HttpServlet

{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        String pwd=req.getParameter("password");
        String cpwd=req.getParameter("cpassword");
        
        HttpSession hs=req.getSession();
        String email=(String)hs.getAttribute("email");
        
        if(pwd.equals(cpwd))
        {
            try 
            {
                Connection con=DatabaseConnection.getConnection();
                PreparedStatement ps=con.prepareStatement("update userdata set password=? where email=?");
                ps.setString(1, pwd);
                ps.setString(2, email);
                ps.executeUpdate();
                con.close();
                resp.sendRedirect("login.jsp");
                
            } 
            catch (Exception e) 
            {
                System.out.println(e);
            }
        }
        else
        {
            PrintWriter out=resp.getWriter();
            out.println("Password & confirmed password is not the same !!!");
        }
    }
    
}
