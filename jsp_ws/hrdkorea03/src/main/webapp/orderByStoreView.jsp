<%@page import="common.ListVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.OrderDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	OrderDAO oDao = new OrderDAO();
	ArrayList<ListVO> list = oDao.OrderByStoreList();
	pageContext.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점포별주문현황</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<h2 style="text-align:center;">점포별 주문현황</h2>
<table border="1" style="margin-left: auto; margin-right: auto; text-align:center;">
	<tr>
		<th>할인점코드</th>
		<th>제품코드</th>
		<th>제품명</th>
		<th>주문총수량</th>
	</tr>
	<c:forEach var="lVo" items="${list }">
		<tr>
			<td>${lVo.shopno }</td>
			<td>${lVo.pcode }</td>
			<td>${lVo.pname }</td>
			<td>${lVo.totalCount }</td>
		</tr>
	</c:forEach>
</table>

<jsp:include page="footer.jsp"/>
</body>
</html>