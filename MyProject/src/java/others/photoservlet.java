package others;

import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/photoservlet")
public class photoservlet extends HttpServlet
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
                Blob blob=rs.getBlob("photo");
                byte[] arr=blob.getBytes(1, (int)blob.length());
                con.close();
                resp.getOutputStream().write(arr);
            }
        } 
        catch (Exception e) 
        {
            System.out.println(e);
        }
    }
    
}
