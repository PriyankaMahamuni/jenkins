package Code;

import java.sql.PreparedStatement;



import java.sql.ResultSet;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import java.sql.Connection;

public class MailSendToUser {
	
	public static boolean checkEmailValide(String email) {
		Connection con=LoginCode.connect();
		try
		{
			PreparedStatement ps=con.prepareStatement("select * from Log_In");
			ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			String userEmail=rs.getString("UserName");	
			if(email.equals(userEmail))
			{
				System.out.println("Sending mail......");
				send("priynkamahamuni92@gmail.com","m@h@m#$$",email,"linking","http://localhost:8080/application/ResetPassword.jsp");
				return true;
			}
		}
		rs.close();
		ps.close();
		con.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public static void send(String adminEmail,String adminPassword,String UserEmail,String data,String ResetPageLink)
	{
		System.out.println("send mail");
		Properties propertyObject=new Properties();   
        propertyObject.put("mail.smtp.host", "smtp.gmail.com");    
        propertyObject.put("mail.smtp.socketFactory.port", "465");    
        propertyObject.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");    
        propertyObject.put("mail.smtp.auth", "true");    
        propertyObject.put("mail.smtp.port", "465");    
		
        Session session = Session.getDefaultInstance(propertyObject,new javax.mail.Authenticator() {    
                protected PasswordAuthentication getPasswordAuthentication() {    
                	 System.out.println("sending mailllllllllllll");
                	return new PasswordAuthentication("priynkamahamuni92@gmail.com","m@h@m#$$");
               
                
                }    
               });  
		try
		{
			System.out.println("message in mime");
			  MimeMessage message = new MimeMessage(session);    
	           message.addRecipient(Message.RecipientType.TO,new InternetAddress(UserEmail));    
	           message.setSubject(data);    
	           message.setText(ResetPageLink);    
	           //send message  
	           System.out.println("message has send");
	           Transport.send(message);    
	           System.out.println("message sent successfully");   
		}catch(MessagingException e) {
			throw new RuntimeException(e);} 
		}
	
}
