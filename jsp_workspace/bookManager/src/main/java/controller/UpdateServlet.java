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
		
		int bcode = Integer.parseInt(request.getParameter("bcode"));
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher");
		int price = Integer.parseInt(request.getParameter("price"));
		String binfo = request.getParameter("binfo");
		
		BookVO book = new BookVO();
		book.setBcode(bcode);
		book.setTitle(title);
		book.setAuthor(author);
		book.setPublisher(publisher);
		book.setPrice(price);
		book.setBinfo(binfo);
		
		bDao.update(book);
		
		//책 목록 페이지로 이동
		response.sendRedirect("BookListServlet");	//리스트 서블릿으로 가야한다
	}
}
