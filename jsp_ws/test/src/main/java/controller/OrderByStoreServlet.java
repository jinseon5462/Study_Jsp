package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.ListVO;
import db.OrderDAO;

@WebServlet("/OrderByStoreServlet")
public class OrderByStoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	OrderDAO oDao = new OrderDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<ListVO> list = oDao.OrderByStoreList();
		request.setAttribute("list", list);
		request.getRequestDispatcher("OrderByStoreListView.jsp").forward(request, response);
	}

}
