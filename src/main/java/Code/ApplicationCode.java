package Code;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.LoginModel;
import model.RegistrationModel;
import java.sql.*;
public class ApplicationCode {
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
public static int registerUser(RegistrationModel model,LoginModel modelLogin) {
	
	int  registerData=0,loginData=0;
	Connection con=connect();
	try {
		/*
		 * @purpose : to insert data in Registration table
		 */
		PreparedStatement ps=con.prepareStatement("insert into Registration values(?,?,?,?,?,?)");
		ps.setInt(1, 0);
		ps.setString(2, model.getFirstName());
		ps.setString(3, model.getLastName());
		ps.setString(4, model.getEmailId());
		ps.setString(5,model.getPassword());
		ps.setString(6, model.getConfirmPassword());
		/*
		 * @purpose : this used to execute query
		 */
		registerData=ps.executeUpdate();
		/*
		 * @purpose : at the time of inserting into registration table  emailId and password is also inserted in Login table
		 */
		PreparedStatement ps1=con.prepareStatement("insert into Log_In  values(?,?,?)");
		ps1.setInt(1, 0);
		ps1.setString(2,modelLogin.getPassword());
		ps1.setString(3,modelLogin.getEmailId());
		loginData=ps1.executeUpdate();
		/*
		 * @purpose : to check  values are inserted in both tables or not
		 */
		if(loginData==registerData)
		{
			return loginData;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return 0;
	
}
}
