package test;
import java.sql.*;
public class UpdateEmployeeDAO {
  public int k=0;
  public int update(EmployeeBean eb) {
	  try
	  {
		  Connection con=DBConnection.getCon();
		  PreparedStatement ps=con.prepareStatement("update Employee59 set bsal=?,hra=?,da=?,totsal=? where eid=?");
		  ps.setInt(1, eb.getBsal());
		  ps.setFloat(2, eb.getHra());
		  ps.setFloat(3, eb.getDa());
		  ps.setFloat(4, eb.getTotsal());
		  ps.setString(5, eb.geteId());
		  k=ps.executeUpdate();
	  }
	  catch(Exception  e)
	  {
		  e.printStackTrace();
	  }
	  return k;
  }
}
