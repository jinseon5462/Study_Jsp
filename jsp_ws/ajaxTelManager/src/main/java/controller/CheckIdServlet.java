package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.MemberDAO;

@WebServlet("/checkid.do")
public class CheckIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberDAO m = new MemberDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String id = request.getParameter("id");
		int result = m.checkId(id);
		PrintWriter out = response.getWriter();
		if(result == 0) {
			out.println("<span style='color:green;'>사용가능한 아이디입니다.</span>");
			out.println("<input type='hidden' name='result' value='1'>");
		}else {
			out.println("<span style='color:red;'>이미 사용중인 아이디입니다.</span>");
			out.println("<input type='hidden' name='result'>");
			
		}
		//request.setAttribute("result", result);
		//request.getRequestDispatcher("pop_checkId.jsp").forward(request, response);
	}
}