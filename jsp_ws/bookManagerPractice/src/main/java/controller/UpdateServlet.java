package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.BookVO;
import db.BookDAO;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BookDAO bDao = new BookDAO();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		BookVO book = new BookVO();
		book.setBcode(Integer.parseInt(request.getParameter("bcode")));
		book.setTitle(request.getParameter("title"));
		book.setAuthor(request.getParameter("author"));
		book.setPublisher(request.getParameter("publisher"));
		book.setPrice(Integer.parseInt(request.getParameter("price")));
		book.setBinfo(request.getParameter("binfo"));
		bDao.update(book);
		response.sendRedirect("ListServlet");
	}
}
