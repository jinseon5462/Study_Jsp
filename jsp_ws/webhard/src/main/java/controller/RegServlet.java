package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.UserVO;
import db.UserDAO;

@WebServlet("/reg.do")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	UserDAO uDao = new UserDAO();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		UserVO user = new UserVO();
		user.setId(id);
		user.setPw(pw);
		int result = uDao.insert(user);
		request.setAttribute("result", result);
		request.getRequestDispatcher("regForm.jsp").forward(request, response);
	}

}
