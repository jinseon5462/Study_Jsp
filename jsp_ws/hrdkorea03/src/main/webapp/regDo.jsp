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
<jsp:useBean id="order" class="common.OrderVO" scope="request"/>
<jsp:setProperty property="*" name="order"/>
<jsp:forward page="orderReg_do.jsp"/>
