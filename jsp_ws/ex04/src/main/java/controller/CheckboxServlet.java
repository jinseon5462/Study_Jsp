package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CheckboxServlet")
public class CheckboxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//응답 한글 깨짐 방지(response)
		response.setContentType("text/html;charset=utf-8");
		
		//응답 쓸 스트림 준비(response)
		PrintWriter out = response.getWriter();
		
		//요청으로 넘어온 파라미터 처리(request)
		String[] items = request.getParameterValues("item");
		
		//브라우저에 쓰기
		out.print("<html>");
		out.print("<head>");
		out.print("<title>");
		out.print("체크박스 연습");
		out.print("</title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h1>당신이 선택한 항목입니다.</h1>");
		out.print("<hr>");
		if(items == null) {
			out.print("선택한 항목이 없습니다.");
		}else {
			for(int i = 0; i < items.length; i++) {
				if(i == items.length -1) {
					out.print(items[i]);				
				}else {
					out.print(items[i] + ", ");				
				}
			}
		}
		out.println("<br><a href=checkbox.jsp>이전 페이지로 돌아가기</a> ");
		out.print("</body>");
		out.print("</html>");
		out.close();
	}

}