package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.BookVO;
import db.BookDAO;

@WebServlet("/BookRegServlet")
public class BookRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("bookRegForm.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookDAO bDao = new BookDAO();
		BookVO book = new BookVO();
		
		request.setCharacterEncoding("utf-8");
		book.setTitle(request.getParameter("title"));
		book.setAuthor(request.getParameter("author"));
		book.setPublisher(request.getParameter("publisher"));
		book.setPrice(Integer.parseInt(request.getParameter("price")));
		book.setBinfo(request.getParameter("binfo"));
		bDao.insert(book);
		
		response.sendRedirect("BookListServlet");
	}
}
