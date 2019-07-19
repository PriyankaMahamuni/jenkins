package Code;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;
import model.RegistrationModel;

public class Display {
		public static List printData()
		{
			List<RegistrationModel> registrationList=new ArrayList<RegistrationModel>();
			try
			{
				Connection con=LoginCode.connect();
				PreparedStatement ps1=con.prepareStatement("select * from Registration");
				ResultSet result=ps1.executeQuery();
				
				while(result.next())
				{
					RegistrationModel model=new RegistrationModel();
					model.setFirstName(result.getString("firstName"));
					model.setLastName(result.getString("lastName"));
					model.setEmailId(result.getString("emailId"));
					registrationList.add(model);
				}
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return registrationList;
		}
		
}
