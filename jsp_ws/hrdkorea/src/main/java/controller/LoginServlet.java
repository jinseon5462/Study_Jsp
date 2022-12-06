package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.LoginDAO;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	LoginDAO lDao = new LoginDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("loginFormView.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int result = lDao.loginCheck(request.getParameter("id"), request.getParameter("pw"));
		
		if(result == 1 || result == -2) {
			String id = request.getParameter("id");
			String name = lDao.showName(id);
			HttpSession session = request.getSession();
			session.setAttribute("name", name);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else{
			response.sendRedirect("loginFormView.jsp");
		}
	}
}

