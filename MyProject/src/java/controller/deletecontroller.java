
package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.hotel;
import others.DatabaseConnection;

@WebServlet("/deletecontroller")
public class deletecontroller extends HttpServlet

{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    
    {
        hotel ht=new hotel();
        ht.setId(Integer.parseInt(req.getParameter("id")));
        try 
        {
            Connection con=DatabaseConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("update hotel set flag='D' where id=?");
            ps.setInt(1, ht.getId());
            ps.executeUpdate();
            con.close();
            resp.sendRedirect("view.jsp");
        } 
        catch (Exception e) 
        {
            System.out.println(e);
        }
    }

}
