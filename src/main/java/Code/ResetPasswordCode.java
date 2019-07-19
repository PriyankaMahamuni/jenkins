package Code;
import java.sql.Connection;

import java.sql.PreparedStatement;

import Code.LoginCode;
public class ResetPasswordCode {
		public static int resetPassword(String emailId,String password)
		{
			Connection con=LoginCode.connect();
			try
			{
				PreparedStatement ps=con.prepareStatement("update Log_In set Password='"+password+"'where UserName ='"+emailId+"'");
				int n=ps.executeUpdate();
				return n;
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return 0;
		}
}
