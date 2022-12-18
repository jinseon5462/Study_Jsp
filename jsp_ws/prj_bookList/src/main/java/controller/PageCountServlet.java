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


@WebServlet("/pagecount.do")
public class PageCountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	BoardDAO board = new BoardDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageCount = board.pageCount();
		request.setAttribute("pageCount", pageCount);
		request.getRequestDispatcher("getList.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
