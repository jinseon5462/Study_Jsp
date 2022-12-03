package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SecondServlet")
public class SecondServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("hello, second servlet입니다.");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		String _num1 = request.getParameter("num1");
		String _num2 = request.getParameter("num2");
		int num1 = Integer.parseInt(_num1);
		int num2 = Integer.parseInt(_num2);
		int result = num1 + num2;
		out.print(num1 + " + " + num2 + " = " + result);
		out.println("</body></html>");
	}
}