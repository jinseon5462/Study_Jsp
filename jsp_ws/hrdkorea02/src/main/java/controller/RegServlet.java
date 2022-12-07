package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.OrderVO;
import db.OrderDAO;

@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	OrderDAO oDao = new OrderDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("regFormView.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OrderVO order = new OrderVO();
		order.setOrderno(request.getParameter("orderno"));
		order.setShopno(request.getParameter("shopno"));
		order.setOrderdate(request.getParameter("orderdate"));
		order.setPcode(request.getParameter("pcode"));
		order.setAmount(Integer.parseInt(request.getParameter("amount")));
		oDao.insert(order);
		response.sendRedirect("index.jsp");
	}
}
