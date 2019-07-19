package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Code.LoginCode;
import model.LoginModel;

/**
 * Servlet implementation class LogInServlet
 */
@WebServlet("/LogInServlet")
public class LogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogInServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		response.setContentType("text/html");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String emailId=request.getParameter("txtUserName");
		String password=request.getParameter("txtPassword");
		
		LoginModel model=new LoginModel();
		model.setEmailId(emailId);
		model.setPassword(password);
		LoginCode loginObject=new LoginCode();
		boolean status=loginObject.checkRegistered(model,emailId,password);
		if(status)
		{
			HttpSession session=request.getSession();
			session.setAttribute("User",emailId);
			RequestDispatcher res=request.getRequestDispatcher("LogInSuccess.jsp");
			res.include(request, response);
		}
		else
		{
			  
			pw.println("<script type=\"text/javascript\">");  
			pw.println("alert('Invalid Email ID and Password');");  
			pw.println("</script>");
			response.sendRedirect("LogIn.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
