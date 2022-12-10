<%@page import="common.ListVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.OrderDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
	OrderDAO oDao = new OrderDAO();
	ArrayList<ListVO> list = oDao.getCodeList();
	pageContext.setAttribute("list", list);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품코드조회</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<h2 style="text-align:center;">제품코드조회</h2>
<table border="1" style="margin-left:auto; margin-right:auto; text-align:center;">
	<tr>
		<th>제품코드</th>
		<th>제품명</th>
		<th>단가</th>
		<th>할인율(10%)</th>
		<th>할인율(15%)</th>
	</tr>
	<c:forEach var="lVo" items="${list }">
		<tr>
			<td>${lVo.pcode }</td>
			<td>${lVo.pname }</td>
			<td><fmt:formatNumber value="${lVo.cost }" pattern="###,###"/></td>
			<td><fmt:formatNumber value="${lVo.discountrate1 }" pattern="###,###"/></td>
			<td><fmt:formatNumber value="${lVo.discountrate2 }" pattern="###,###"/></td>
		</tr>
	</c:forEach>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>