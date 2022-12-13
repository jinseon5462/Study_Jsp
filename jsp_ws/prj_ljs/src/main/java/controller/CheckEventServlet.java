package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.MemberDAO;

@WebServlet("/CheckEventServlet")
public class CheckEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberDAO m = new MemberDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result = m.checkEvent(request.getParameter("id"));
		request.setAttribute("result", result);
		request.getRequestDispatcher("pop_event.jsp").forward(request, response);
	}
}
