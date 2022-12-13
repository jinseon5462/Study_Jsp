package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.MemberDAO;

@WebServlet("/RegEventServlet")
public class RegEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	MemberDAO m = new MemberDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		m.regEvent(id);
		response.sendRedirect("index.jsp");
	}

}
