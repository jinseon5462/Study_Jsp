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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserDAO uDao = new UserDAO();
		
		int loginResult = uDao.loginCheck(request.getParameter("id"), request.getParameter("pw"));
		if(loginResult == 1) {
			//로그인 성공
			response.sendRedirect("bookMainPage.jsp");
		}else {
			//로그인 실패
			response.sendRedirect("index.jsp");
		}
		
	}
}
