package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		System.out.println("서비스 메소드 실행...");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//브라우저에 id, pw써주기 -> 응답 -> response
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>로그인 응답페이지</title></head></body>");
		out.print("당신이 입력한 id는 " + id + "입니다.<br>");
		out.print("당신이 입력한 pw는 " + pw + "입니다.<br>");
		out.print("</body></html>");
	}
}