
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.hotelname;
import org.apache.jasper.tagplugins.jstl.ForEach;
import others.DatabaseConnection;

@WebServlet("/checkboxcontroller")
public class checkboxcontroller extends HttpServlet

{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        int id=Integer.parseInt(req.getParameter("id"));
        try 
        {
            Connection con=DatabaseConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from hotel where id=?");
            ps.setInt(1, id);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
                hotelname h=new hotelname();
                h.setHn(rs.getString("name"));
                HttpSession hT=req.getSession();
                hT.setAttribute("hotelname", h);
                con.close();
                resp.sendRedirect("multiple-checkbox.jsp");
            }
        } 
        catch (Exception e) 
        {
                System.out.println(e);
        }
    }
    
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        
        
        String chooseservices="";
            
            String services[]=req.getParameterValues("services");
            String rooms=req.getParameter("rooms");
            int child=Integer.parseInt(req.getParameter("child"));
            int adult=Integer.parseInt(req.getParameter("adult"));
            String name=req.getParameter("hotelname");
            String uname=req.getParameter("username");
            
            
            for(int i=0;i<services.length;i++)
            {
                chooseservices+=services[i];
            }
            try 
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/hotel", "hotel", "hotel");
                Statement st=con.createStatement();
                PreparedStatement ps=con.prepareStatement("insert into booking_details values(?,?,?,?,?,?)");
                ps.setString(1, chooseservices);
                ps.setString(2, rooms);
                ps.setInt(3, child);
                ps.setInt(4, adult);
                ps.setString(5, name);
                ps.setString(6, uname);
                ps.executeUpdate();
                con.close();
                resp.sendRedirect("confirmbooking.jsp");
            } 
            catch (Exception e) 
            {
                System.out.println(e);
            }
        
    }
}        
        