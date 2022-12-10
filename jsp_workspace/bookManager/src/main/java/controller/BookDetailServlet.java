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

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookDAO bDao = new BookDAO();
		String str_bcode = request.getParameter("bcode");
		int bcode = Integer.parseInt(str_bcode);
		BookVO book = bDao.selectOne(bcode);
		
		//책 정보 하나를 화면에 보내줘야지.
		request.setAttribute("book", book);
		request.getRequestDispatcher("bookDetailView.jsp").forward(request, response);;
		
	}
}
