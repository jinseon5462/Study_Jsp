package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/reginfo.do")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		ServletContext application = request.getServletContext();
		MultipartRequest multi = new MultipartRequest(
				request,
				application.getRealPath("/img"),
				100 * 1024 * 1024,
				"utf-8",
				new DefaultFileRenamePolicy()
				);
		String fname = multi.getFilesystemName("photo");
		String name = multi.getParameter("name");
		String age = multi.getParameter("age");
		String bloodType = multi.getParameter("bloodType");
		String hobbie = multi.getParameter("hobbie");
		
		request.setAttribute("fname", fname);
		request.setAttribute("name", name);
		request.setAttribute("age", age);
		request.setAttribute("bloodType", bloodType);
		request.setAttribute("hobbie", hobbie);
		request.getRequestDispatcher("showInfo.jsp").forward(request, response);
	}

}
