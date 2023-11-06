
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

@WebServlet("/confirmbookingcontroller")
public class confirmbookingcontroller  extends HttpServlet
{

    confirmbooking cb=new confirmbooking();
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        
        cb.setHotelname(req.getParameter("hotelname"));
        cb.setCheckin(req.getParameter("checkin"));
        cb.setCheckout(req.getParameter("checkout"));
        cb.setFullname(req.getParameter("fullname"));
        cb.setEmail(req.getParameter("email"));
        cb.setMobile(Double.parseDouble(req.getParameter("mobile")));
        cb.setAddress1(req.getParameter("address1"));
        cb.setAddress2(req.getParameter("address2"));
        writedata();
        try 
        {
            test test=new test(cb.getEmail(), "Booking successful!!! ", "Thank you for booking at "+cb.getHotelname()+" from "+cb.getCheckin()+" to "+cb.getCheckout());
            test.sendEmail();
        } 
        catch (Exception e) 
        {
            System.out.println(e);
        }
        resp.sendRedirect("final.jsp");
    }
    public void writedata()
    {
        try 
        {
            Connection con=DatabaseConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("insert into confirm_booking values(?,?,?,?,?,?,?,?,?)");
            ps.setString(1, cb.getHotelname());
            ps.setString(2, cb.getCheckin());
            ps.setString(3, cb.getCheckout());
            ps.setString(4, cb.getFullname());
            ps.setString(5, cb.getEmail());
            ps.setDouble(6, cb.getMobile());
            ps.setString(7, cb.getAddress1());
            ps.setString(8, cb.getAddress2());
            ps.setString(9, "A");
            ps.executeUpdate();
            con.close();
        } 
        catch (Exception e) 
        {
            System.out.println(e);
        }
    }
}
