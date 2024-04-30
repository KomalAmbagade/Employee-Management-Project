package test;
import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.annotation.*;
import jakarta.servlet.http.*;
@SuppressWarnings("serial")
@WebServlet("/emp")
public class EmployeeLoginServlet extends HttpServlet
{
	@Override
	  protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException ,IOException
	  {
		  String ei=req.getParameter("eid");
		  String en=req.getParameter("ename");
		  EmployeeBean b=new EmployeeLoginDAO().login(ei, en);
		  //System.out.println(b);
		  if(b==null)
		  {
			  req.setAttribute("msg", "Invalid Login Process...<br>");
			  req.getRequestDispatcher("Msg.jsp").forward(req, res);
		  }
		  else
		  {
			  HttpSession hs=req.getSession();
			  hs.setAttribute("b", b);
			  req.getRequestDispatcher("EmployeeLogin.jsp").forward(req, res);
		  }
		  
	  }
}
