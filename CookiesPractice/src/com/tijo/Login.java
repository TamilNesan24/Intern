package com.tijo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Login extends HttpServlet {

	 public void doGet(HttpServletRequest request, HttpServletResponse response) 
		      throws IOException, ServletException {
		 
		 String  username =  request.getParameter("uname");
		 String password = request.getParameter("pwd");
		 
		 DataStore dataobj = (DataStore) getServletContext().getAttribute("dataobj");
		 if(dataobj.Logincheck(username, password))
		 {
			 Cookie cookie = new Cookie("username",username);
			 response.addCookie(cookie);
			// request.getRequestDispatcher("/Home").forward(request, response);
			 response.sendRedirect("Home");
		 }else
		 {
			 response.setContentType("text/html");
			 response.getWriter().println("Username or password is invalid");
			 request.getRequestDispatcher("/Login.html").include(request, response);
		 }
	 }
}
