package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.LoginDAO;

@WebServlet("/idcheck.do")
public class CheckIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	LoginDAO lDao = new LoginDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		int result = lDao.idCheck(id);
		request.setAttribute("result", result);
		request.getRequestDispatcher("pop.jsp").forward(request, response);
	}

}