package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import service.LoginService;

/**
 * Servlet implementation class Cont
 */
@WebServlet(description = "controllerr", urlPatterns = { "/controllerr" })
@Controller
public class Cont extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	@RequestMapping("/welcome")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.getSession().setAttribute("result", "true");
		//System.out.println((String)request.getAttribute("result"));
		
		
		request.setAttribute("result", "true");
		RequestDispatcher dispatcher=request.getRequestDispatcher("Home.jsp");
		dispatcher.forward(request, response);
		//response.sendRedirect("Home.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	ApplicationContext fac=new ClassPathXmlApplicationContext("spring-dispatcher-servlet.xml");
	LoginService l=fac.getBean("loginService", service.LoginService.class);
		
	//LoginService l=new LoginService();	
	String user=request.getParameter("userId");
	String pass=request.getParameter("password");
	String mnum=request.getParameter("mob");
	String mailid=request.getParameter("email");
	String ftype=request.getParameter("form");
	String send=request.getParameter("formpPage");
	boolean t;
	//System.out.println("before if");
	if(ftype.equals("newUser"))
	{String nuser=request.getParameter("nuserId");
	String npass=request.getParameter("npassword");
		t=l.addNewUser(nuser, npass, mnum, mailid);
		if(t)
		{
			request.setAttribute("result", "newUserAdded");
			RequestDispatcher dispatcher=request.getRequestDispatcher(send);
			dispatcher.forward(request, response);
		}
		else
		{
			request.setAttribute("result", "newUserNotAdded");
			RequestDispatcher dispatcher=request.getRequestDispatcher(send);
			dispatcher.forward(request, response);

		}
	}
	//System.out.println(pass);
				else if(ftype.equals("logIn")){
					
	t = l.authenticate(user, pass);
	if(t)
	{
		RequestDispatcher dispatcher=request.getRequestDispatcher(send);
	request.setAttribute("result", "logged");
	HttpSession session=request.getSession();
	session.setAttribute("suser", request.getParameter("userId"));
	dispatcher.forward(request, response);
	return;
	}
	else
	{	request.setAttribute("result", "false");
		RequestDispatcher dispatcher=request.getRequestDispatcher(send);
		dispatcher.forward(request, response);
		//response.sendRedirect("Home.jsp");
		return;
	}
					}
				else if(ftype.equals("signOut")){
					HttpSession session=request.getSession(); 
					session.invalidate();
					request.setAttribute("result", "true");
					RequestDispatcher dispatcher=request.getRequestDispatcher(send);
					dispatcher.forward(request, response);
					
					
				}
	

}
}
