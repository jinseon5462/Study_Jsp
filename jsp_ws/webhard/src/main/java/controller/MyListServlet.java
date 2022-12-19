package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.FileVO;
import db.FileDAO;

@WebServlet("/getmylist.do")
public class MyListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	FileDAO fDao = new FileDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		ArrayList<FileVO> list = fDao.getMyList(id);
		request.setAttribute("list", list);
		request.getRequestDispatcher("getMyList.jsp").forward(request, response);
	}
}
