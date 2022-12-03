package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SelectServlet")
public class SelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//String job = request.getParameter("job");
		String[] jobs = request.getParameterValues("job");
		
		if(jobs.equals("")) {
			out.print("선택한 직업이 없습니다.");
		}else {
			out.print("<html><body>");
			out.print("<h3>당신이 선택한 직업 : ");
			for(String job : jobs) {
				out.print(job + " ");
			}
			out.print("</body></html>");
			out.close();
		}
	}
}