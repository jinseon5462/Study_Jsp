package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RadioServlet")
public class RadioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String gender = request.getParameter("gender"); 
		String chk_mail = request.getParameter("chk_mail");
		String comment = request.getParameter("comment");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h1>당신이 입력한 정보입니다.</h1>");
		out.println("<hr>");
		out.println("성별 : " + gender + "<br>");
		out.println("메일 정보 수신여부 : " + chk_mail + "<br>");
		out.println("가입인사 : " + comment + "<br>");
		out.println("<a href=radio.jsp>이전페이지로 돌아가기</a> ");
		out.println("</body></html>");
	}
}