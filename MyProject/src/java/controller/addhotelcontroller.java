
package controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.hotel;
import others.DatabaseConnection;



@WebServlet("/addhotelcontroller")
@MultipartConfig(maxFileSize = 9999999999L)
public class addhotelcontroller extends HttpServlet
{
    hotel ht=new hotel();
    InputStream is;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        ht.setName(req.getParameter("name"));
        ht.setPrice(Integer.parseInt(req.getParameter("price")));
        ht.setLink(req.getParameter("link"));
        ht.setRating(Integer.parseInt(req.getParameter("rating")));
        Part part=req.getPart("photo");
        is=part.getInputStream();
        ht.setLocation(req.getParameter("location"));
        ht.setId(Integer.parseInt(req.getParameter("id")));
        
        Writedata();
        resp.sendRedirect("view.jsp");
        
        
    }
    public void Writedata()
    {
        try
        {
        
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/hotel", "hotel", "hotel");
        PreparedStatement ps=con.prepareStatement("insert into hotel values(?,?,?,?,?,?,?,?)");
        ps.setString(1, ht.getName());
        ps.setInt(2, ht.getPrice());
        ps.setString(3, ht.getLink());
        ps.setString(4, "A");
        ps.setInt(5, ht.getRating());
        ps.setBlob(6, is);
        ps.setString(7, ht.getLocation());
        ps.setInt(8, ht.getId());
        ps.executeUpdate();
        con.close();
        
        }
        catch (Exception e)
        {
            System.out.println(e);
        }
    }
        
}
 


