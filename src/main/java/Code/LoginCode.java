package Code;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.LoginModel;

public class LoginCode {
	public static Connection connect()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbRegistration","root","Admin@123");
			System.out.println("Connected Sucessfully");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
	public static boolean checkRegistered(LoginModel modelLogin,String emailId,String password)
	{
		try
		{
			Connection con=connect();
			PreparedStatement ps1=con.prepareStatement("select * from Log_In");
			ResultSet result=ps1.executeQuery();
			while(result.next())
			{
				String Email=result.getString("UserName");
				String Password=result.getString("Password");
				if(Email.equals(emailId)&&Password.equals(password))
				{
					return true;
				}
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
}
