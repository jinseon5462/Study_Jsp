package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.BookVO;
import db.BookDAO;

@WebServlet("/ListServlet")
public class ListServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	BookDAO bDao = new BookDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<BookVO> bookList = bDao.selectAll();
		request.setAttribute("list", bookList);
		
		int count = bDao.rowCount();
		request.setAttribute("count", count);
		request.getRequestDispatcher("bookListView.jsp").forward(request, response);
	}
}
