package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.BookVO;
import db.BookDAO;

@WebServlet("/BookDetailServlet")
public class BookDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	BookDAO bDao = new BookDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookVO book = bDao.selectOne(Integer.parseInt(request.getParameter("bcode")));
		request.setAttribute("book", book);
		request.getRequestDispatcher("bookDetailView.jsp").forward(request, response);
		
	}

}
