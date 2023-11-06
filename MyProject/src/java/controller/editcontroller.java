
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.hotel;
import others.DatabaseConnection;

@WebServlet("/editcontroller")
public class editcontroller extends HttpServlet

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
                hotel ht=new hotel();
                ht.setName(rs.getString("name"));
                ht.setPrice(rs.getInt("price"));
                ht.setLink(rs.getString("link"));
                ht.setRating(rs.getInt("rating"));
                ht.setLocation(rs.getString("location"));
                ht.setId(rs.getInt("id"));
                HttpSession hs=req.getSession();
                hs.setAttribute("hotel", ht);
                con.close();
                resp.sendRedirect("edit.jsp");
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
        hotel ht=new hotel();
        ht.setName(req.getParameter("name"));
        ht.setPrice(Integer.parseInt(req.getParameter("price")));
        ht.setLink(req.getParameter("link"));
        ht.setRating(Integer.parseInt(req.getParameter("rating")));
        ht.setLocation(req.getParameter("location"));
        ht.setId(Integer.parseInt(req.getParameter("id")));
       
   
        
        try 
        {
            Connection con=DatabaseConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("update hotel set name=?,price=?,link=?,rating=?,location=? where id=?");
            ps.setString(1, ht.getName());
            ps.setInt(2, ht.getPrice());
            ps.setString(3, ht.getLink());
            ps.setInt(4, ht.getRating());
            ps.setString(5, ht.getLocation());
            ps.setInt(6, ht.getId());
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

