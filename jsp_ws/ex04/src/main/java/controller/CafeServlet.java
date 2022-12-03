package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CafeServlet")
public class CafeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String drink = request.getParameter("drink");
		String price = request.getParameter("price");
		
		if(drink.equals("")) {
			out.print("선택한 음료가 없습니다.");
		}else if(drink.equals("랜덤커피")){
			out.print("<html><body>");
			out.print("<h1>선택하신 음료</h1>");
			out.print("<hr>");
			out.print("<img src=\"coffe.png\" width=\"200px\" alt=\"커피이미지\"><br>");
			out.print("주문하신 음료는 " + drink + "입니다.<br>");
			out.print("결제하실 금액은 3000원 입니다.");
			out.print("</body></html>");
		}else if(drink.equals("콜라")) {
			out.print("<html><body>");
			out.print("<h1>선택하신 음료</h1>");
			out.print("<hr>");
			out.print("<img src=\"cola.png\" width=\"200px\" alt=\"커피이미지\"><br>");
			out.print("주문하신 음료는 " + drink + "입니다.<br>");
			out.print("결제하실 금액은 2000원 입니다.");
			out.print("</body></html>");
		}else if(drink.equals("주스")) {
			out.print("<html><body>");
			out.print("<h1>선택하신 음료</h1>");
			out.print("<hr>");
			out.print("<img src=\"juice.png\" width=\"200px\" alt=\"커피이미지\"><br>");
			out.print("주문하신 음료는 " + drink + "입니다.<br>");
			out.print("결제하실 금액은 2500원 입니다.");
			out.print("</body></html>");
		}
	}
}