

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/checkotpcontroller")
public class checkotpcontroller extends HttpServlet
{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        String userotp=req.getParameter("otp");
        
        HttpSession hs=req.getSession();
        String otp=(String)hs.getAttribute("otp");
        
        if(userotp.equals(otp))
        {
            resp.sendRedirect("changepassword.jsp");
        }
        else
        {
            PrintWriter out=resp.getWriter();
            out.println("Incorrect OTP please try again!!!");
        }
    }
    
}
