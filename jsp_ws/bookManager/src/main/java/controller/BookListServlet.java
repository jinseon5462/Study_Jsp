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

@WebServlet("/BookListServlet")
public class BookListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BookDAO bDao = new BookDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<BookVO> bookList = bDao.selectAll();
		//응답 (요청이아직 끝나지 않았다)으로 도서 정보 목록을 보낸다.
		request.setAttribute("list", bookList);
		int rowCnt = bDao.getRowCount();
		request.setAttribute("rowCnt", rowCnt);
		request.getRequestDispatcher("bookListView.jsp").forward(request, response);	//응답
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
