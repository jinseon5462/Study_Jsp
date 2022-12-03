package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/middle.do")
public class RequestTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String param = request.getParameter("data");
		String new_str = param + "xxx";
		request.setAttribute("newdata", new_str);	//첫번째는 문자열이어야 한다.
		request.getRequestDispatcher("end.jsp").forward(request, response);
	}
}