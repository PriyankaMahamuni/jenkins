package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Code.ApplicationCode;
import model.LoginModel;
import model.RegistrationModel;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String firstName=request.getParameter("Name");
		String lastName=request.getParameter("LastName");
		String emailId=request.getParameter("EmailId");
		String password=request.getParameter("Password");
		String confirmPassword=request.getParameter("ConfirmPassword");
		
		/*
		 * purpose : set values to model object
		 */
		RegistrationModel model=new RegistrationModel();
		model.setFirstName(firstName);
		model.setLastName(lastName);
		model.setEmailId(emailId);
		model.setPassword(password);
		model.setConfirmPassword(confirmPassword);
		
		LoginModel modelLogin=new LoginModel();
		modelLogin.setEmailId(emailId);
		modelLogin.setPassword(password);
		
		
		int n=ApplicationCode.registerUser(model,modelLogin);
		if(n!=0)
		{
			System.out.println("Data Inserted Sucessfully");
			response.sendRedirect("RegistrationSucess.jsp");
		}
		else
		{
			System.out.println("Data not Inserted");
		}
	}

}
