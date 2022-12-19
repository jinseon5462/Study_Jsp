package controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.FileDAO;

@WebServlet("/delete.do")
public class DeleteFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	FileDAO fDao = new FileDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		String id = request.getParameter("id");
		ServletContext application = request.getServletContext();
		String fname = fDao.select(num, id);
		File file = new File(application.getRealPath("/files/") + fname);
		int dresult = fDao.delete(num, id, file);
		request.setAttribute("dresult", dresult);
		request.getRequestDispatcher("webhard.jsp").forward(request, response);
	}
}
