<%@page import="common.ListVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.OrderDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
	OrderDAO oDao = new OrderDAO();
	ArrayList<ListVO> list = oDao.selectAll();
	pageContext.setAttribute("list", list);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<h2 style="text-align:center;">주문목록조회</h2>
<table border="1" style="margin-left: auto; margin-right: auto; text-align:center;">
	<tr>
		<th>번호</th>
		<th>할인점코드</th>
		<th>점포명</th>
		<th>주문번호</th>
		<th>주문일자</th>
		<th>제품코드</th>
		<th>제품평</th>
		<th>주문수량</th>
		<th>단가</th>
		<th>소비자가격</th>
		<th>할인가격</th>
	</tr>
	<c:forEach var="lVo" items="${list }" varStatus="status">	
		<tr>
			<td>${status.count }</td>
			<td>${lVo.shopno }</td>
			<td>${lVo.shopname }</td>
			<td>${lVo.orderno }</td>
			<td>${lVo.orderdate }</td>
			<td>${lVo.pcode }</td>
			<td>${lVo.pname }</td>
			<td>${lVo.amount }</td>
			<td><fmt:formatNumber value="${lVo.cost }" pattern="###,###"/></td>
			<td><fmt:formatNumber value="${lVo.custprice }" pattern="###,###"/></td>
			<td><fmt:formatNumber value="${lVo.discountprice }" pattern="###,###"/></td>
		</tr>
	</c:forEach>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>