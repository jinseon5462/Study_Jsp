package controller2;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;

@WebServlet("/session_login2/loginForm")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberDAO dao = new MemberDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("loginForm.jsp");
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		int result = dao.loginCheck(id, pw);
		//result == 1 성공이면 세션에 아이디 저장, main.jsp로 이동
		if(result == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			response.sendRedirect("main.jsp");
		}else {
			//result == 0 실패면 loginForm.jsp로 이동
			request.setAttribute("msg", "아이디 또는 패스워드를 확인해");
			request.getRequestDispatcher("loginForm.jsp").forward(request, response);
		}
	}

}
