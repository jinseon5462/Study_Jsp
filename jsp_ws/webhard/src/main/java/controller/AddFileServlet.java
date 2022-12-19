package controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import db.FileDAO;

@WebServlet("/addfile.do")
public class AddFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	FileDAO fDao = new FileDAO();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		ServletContext application = request.getServletContext();
		MultipartRequest multi = new MultipartRequest(
				request,
				application.getRealPath("/files"),
				100 * 1024 * 1024,
				"utf-8",
				new DefaultFileRenamePolicy()
				);
		File file = multi.getFile("upload");
		String userId = multi.getParameter("id");
		int result = fDao.insert(file, userId);
		request.setAttribute("result", result);
		response.sendRedirect("webhard.jsp");
	}
}
