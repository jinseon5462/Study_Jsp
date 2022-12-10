package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ELServlet")
public class ELServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("data", "requestData2");
		
		HttpSession session = request.getSession();
		session.setAttribute("data", "sessionData2");
		
		ServletContext ctx = request.getServletContext();
		ctx.setAttribute("data", "applicationData2");
		
		request.getRequestDispatcher("ELServletResult.jsp").forward(request, response);;
	}
}
