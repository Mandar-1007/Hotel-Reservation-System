
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.userdata;
import others.DatabaseConnection;
import others.test;

@WebServlet("/registercontroller")
public class registercontroller extends HttpServlet 

{
    userdata ud=new userdata();
   
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        ud.setUsername(req.getParameter("username"));
        ud.setEmail(req.getParameter("email"));
        ud.setPassword(req.getParameter("password"));
        writedata();
        try 
        {
            test test=new test(ud.getEmail(), "Registered successfully !!! ", "Thank you for registering");
            test.sendEmail();
        } 
        catch (Exception e) 
        {
            System.out.println(e);
        }
        resp.sendRedirect("login.jsp");  
    }   
    public void writedata()
    {
       
        try 
        {
           Connection con=DatabaseConnection.getConnection();
           PreparedStatement ps;
           ps = con.prepareStatement("insert into userdata values(?,?,?,?)");
           ps.setString(1, ud.getUsername());
           ps.setString(2, ud.getEmail());
           ps.setString(3, ud.getPassword());
           ps.setString(4, "user");
           ps.executeUpdate();
           con.close();
        } 
        catch (Exception e)
        {
            System.out.println(e);
        }
      
    }   
}


