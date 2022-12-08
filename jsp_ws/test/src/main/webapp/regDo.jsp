<%@page import="common.OrderVO"%>
<%@page import="db.OrderDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	/*
	request.setCharacterEncoding("utf-8");
	OrderDAO oDao = new OrderDAO();
	OrderVO order = new OrderVO();
	
	order.setOrderno(request.getParameter("orderno"));
	order.setShopno(request.getParameter("shopno"));
	order.setOrderdate(request.getParameter("orderdate"));
	order.setPcode(request.getParameter("pcode"));
	order.setAmount(Integer.parseInt(request.getParameter("amount")));
	oDao.insert(order);
	response.sendRedirect("index.jsp");
	*/
%>
<jsp:useBean id="order" class="common.OrderVO" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="order"/>
<!-- <jsp:forward page="orderReg_do.jsp"/> -->
<%
	OrderDAO dao = new OrderDAO();
	int result = dao.insert(order);
	pageContext.setAttribute("result", result);
%>
<c:if test="${result == 1}">
	<script>
	location.href="regFormView.jsp";
	</script>
</c:if>

<c:if test="${result == 0}">
	<script>alert("등록실패...")</script>
</c:if>
<script>
	location.href ="regFormView.jsp";
</script>