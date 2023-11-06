
package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.confirmbooking;
import others.DatabaseConnection;
import others.test;

@WebServlet("/cancelbookingcontroller")
public class cancelbookingcontroller extends HttpServlet
{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    
    {
        confirmbooking cb=new confirmbooking();
        cb.setHotelname(req.getParameter("hotelname"));
        try 
        {
            Connection con=DatabaseConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("update confirm_booking set flag='D' where hotelname=?");
            ps.setString(1, cb.getHotelname());
            ps.executeUpdate();
            con.close();
            
            resp.sendRedirect("mybookings.jsp");
        } 
        catch (Exception e) 
        {
            System.out.println(e);
        }
    }
    
}
