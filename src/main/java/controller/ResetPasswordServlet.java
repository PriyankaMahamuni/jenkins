package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Code.ResetPasswordCode;

/**
 * Servlet implementation class ResetPasswordServlet
 */
@WebServlet("/ResetPasswordServlet")
public class ResetPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResetPasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String emailId=request.getParameter("email");
			String password=request.getParameter("NewPassword");
			int n=ResetPasswordCode.resetPassword(emailId, password);
			if(n>0)
			{
				System.out.println("Password changed");
				response.sendRedirect("RestPasswordSuccess.jsp");
				//RequestDispatcher res=request.getRequestDispatcher("ResetPasswordSuccess.jsp");
				//res.include(request, response);
			}
			
	}

}
