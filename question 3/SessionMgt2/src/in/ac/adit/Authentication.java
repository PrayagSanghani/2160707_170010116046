package in.ac.adit;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.lang.StringBuffer;

/**
 * Servlet implementation class Authentication
 */
@WebServlet("/authentication")
public class Authentication extends HttpServlet {
	
	private String username;
	private String rusername;
	private String password;
	private RequestDispatcher requestDispatcher = null;
	
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, NullPointerException {
		username = request.getParameter("username");
		password = request.getParameter("password");
		rusername = request.getParameter(rusername);
		
		
		
		StringBuffer sb = new StringBuffer(password);
		String newpassword = sb.reverse().toString();
		
		
		
		if(username.equals(newpassword)){
			requestDispatcher =request.getRequestDispatcher("home.jsp");
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
//			session.setAttribute("rev", rusername);
			
		
			
		}else {
			requestDispatcher =request.getRequestDispatcher("index.jsp");
			request.setAttribute("ERROR", "Invalid Username/Password");
		}
		requestDispatcher.forward(request, response);
	}

}
