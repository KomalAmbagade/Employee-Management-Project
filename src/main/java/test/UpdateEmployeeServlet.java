package test;
import java.io.*;
import java.util.*;
import jakarta.servlet.http.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/update")
public class UpdateEmployeeServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,
	IOException{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg", "Session Expired...<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else
		{
			String eId=req.getParameter("eid");
			int bs=Integer.parseInt(req.getParameter("bsal"));
			float h=Float.parseFloat(req.getParameter("hra"));
			float d=Float.parseFloat(req.getParameter("da"));
			
			float hra=(float)(h*bs)/100;
			float da=(float)(d*bs)/100;
			float totS=bs+hra+da;
			
			ArrayList<EmployeeBean> al=(ArrayList<EmployeeBean>)hs.getAttribute("alist");
			
			Iterator<EmployeeBean>it=al.iterator();
			while(it.hasNext())
			{
				EmployeeBean eb=(EmployeeBean)it.next();
				if(eId.equals(eb.geteId())) 
				{
					eb.setBsal(bs);
					eb.setHra(hra);
					eb.setDa(da);
					eb.setTotsal(totS);
					int k=new UpdateEmployeeDAO().update(eb);
					if(k>0)
					{
						req.setAttribute("msg", "Employee Updated Successfully...<br>");
					}
					break;
				}//end of if
			}//end of loop
			req.getRequestDispatcher("UpdateEmployee.jsp").forward(req, res);
		}
	}

}
