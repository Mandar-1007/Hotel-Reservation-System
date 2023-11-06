
package controller;

import com.sun.corba.se.spi.presentation.rmi.StubAdapter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.PreparedStatement;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.details;
import others.DatabaseConnection;


@WebServlet("/detailscontroller")
public class detailscontroller extends HttpServlet

{
    details d=new details();
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {

        d.setCheckin(req.getParameter("checkin"));
        d.setCheckout(req.getParameter("checkout"));
        d.setLocation(req.getParameter("location"));
        HttpSession hs=req.getSession();
        hs.setAttribute("details", d);
        writedata();
        resp.sendRedirect("view.jsp");

    }
    
    public void writedata()
    {
        try 
        {
            Connection con=DatabaseConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("insert into details values(?,?,?)");
            ps.setString(1, d.getCheckin());
            ps.setString(2, d.getCheckout());
            ps.setString(3, d.getLocation());
            ps.executeUpdate();
            con.close();
        } 
        catch (Exception e) 
        {
            System.out.println(e);
        }
    
    }
}
    
