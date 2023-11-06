
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.userdata;
import others.DatabaseConnection;

@WebServlet("/logincontroller")
public class logincontroller extends HttpServlet
{
    userdata ud=new userdata();
    Connection con;
    PreparedStatement ps;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        ud.setUsername(req.getParameter("username"));
        ud.setPassword(req.getParameter("password"));
        try 
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            con=DriverManager.getConnection("jdbc:derby://localhost:1527/hotel","hotel","hotel");
            ps=con.prepareStatement("select * from userdata where username=? and password=?");
            ps.setString(1, ud.getUsername());
            ps.setString(2, ud.getPassword());
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
                ud.setEmail(rs.getString("email"));
                ud.setRole(rs.getString("role"));
                if(req.getParameter("c1")==null || req.getParameter("c1").equals(""))
                {
                    Cookie ck1=new Cookie("un", "");
                    Cookie ck2=new Cookie("pwd", "");
                    Cookie ck3=new Cookie("checked", "");
                    
                    ck1.setMaxAge(-1);
                    ck2.setMaxAge(-1);
                    ck3.setMaxAge(-1);
                    
                    resp.addCookie(ck1);
                    resp.addCookie(ck2);
                    resp.addCookie(ck3);
                }
                else
                {
                    Cookie ck1=new Cookie("un", ud.getUsername());
                    Cookie ck2=new Cookie("pwd", ud.getPassword());
                    Cookie ck3=new Cookie("checked", "true");
                    
                    ck1.setMaxAge(60*30);
                    ck2.setMaxAge(60*30);
                    ck3.setMaxAge(60*30);
                    
                    resp.addCookie(ck1);
                    resp.addCookie(ck2);
                    resp.addCookie(ck3);
                }
                
                HttpSession hs=req.getSession();
                hs.setAttribute("user", ud);
                con.close();
                resp.sendRedirect("details.jsp");
            }
            else
            {
                PrintWriter out=resp.getWriter();
                out.println("Incorrect Username or Password.Please Register!!!");
            }
        } 
        catch (Exception e) 
        {
            
            System.out.println(e);
            
        }
    }
    
}
