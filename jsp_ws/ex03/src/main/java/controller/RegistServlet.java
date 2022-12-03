package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegistServlet")
public class RegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//회원가입 양식 폼 페이지로 이동
		response.sendRedirect("registForm.jsp");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//사용자가 보내온 데이터들을 처리해야 한다.(즉, 파라미터를 받아 정해진 방식대로 처리해라)
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		//파라미터 받기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		//브라우저에 그대로 출력해 주기
		/*PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("id : " + id + "<br>");
		out.println("pw : " + pw + "<br>");
		out.println("name : " + name + "<br>");
		out.println("</body></html>");*/
		response.sendRedirect("resultPage.jsp?id=" + id + "&pw=" + pw + "&name=" + name);
	}

}