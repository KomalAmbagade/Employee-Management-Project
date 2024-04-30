package test;
import java.sql.*;
public class EmployeeLoginDAO 
{
	 public EmployeeBean eb=null;
	  public EmployeeBean  login(String ei,String en)
	  {
		  try
		  {
			  Connection con=DBConnection.getCon();
			  PreparedStatement ps=con.prepareStatement("select *  from employee59 where eid=? and ename=?");
			  ps.setString(1, ei);
			  ps.setString(2, en);
			  
			  ResultSet rs=ps.executeQuery();
			  if(rs.next())
			  {
				  eb=new EmployeeBean();
				  eb.seteId(rs.getString(1));
				  eb.seteName(rs.getString(2));
				  eb.seteDesg(rs.getString(3));
				  eb.setBsal(rs.getInt(4));
				  eb.setHra(rs.getFloat(5));
				  eb.setDa(rs.getFloat(6));
				  eb.setTotsal(rs.getFloat(7));
			     
			  }
		  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		  }
		return eb;
	  }
}
