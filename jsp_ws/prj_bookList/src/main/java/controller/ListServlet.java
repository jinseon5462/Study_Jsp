package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.BoardVO;
import db.BoardDAO;

@WebServlet("/getlist.do")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	BoardDAO board = new BoardDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int page = Integer.parseInt(request.getParameter("page"));
		ArrayList<BoardVO> list = board.selectPageList(page);
		int pageCount = board.pageCount();
		
		request.setAttribute("list", list);
		request.setAttribute("pageCount", pageCount);
		request.getRequestDispatcher("getList.jsp").forward(request, response);
	}
}
