package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MemberVO;
import db.UserDAO;

@WebServlet("/DetailServlet")
public class DetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	UserDAO uDao = new UserDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberVO member = uDao.selectOne(Integer.parseInt(request.getParameter("bcode")));
		request.setAttribute("member", member);
		request.getRequestDispatcher("detailView.jsp").forward(request, response);
	}

}
