package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MemberVO;
import db.UserDAO;

@WebServlet("/ShowSalesServlet")
public class ShowSalesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	UserDAO uDao = new UserDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<MemberVO> list = uDao.selectAllSales();
		request.setAttribute("list", list);
		request.getRequestDispatcher("salesListView.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
