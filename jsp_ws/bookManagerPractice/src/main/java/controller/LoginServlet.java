package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.UserDAO;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	UserDAO uDao = new UserDAO(); 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result = uDao.loginCheck(request.getParameter("id"), request.getParameter("pw"));
		if(result == 1) {
			response.sendRedirect("main.jsp");
		}else {
			response.sendRedirect("index.jsp");
		}
	}

}
