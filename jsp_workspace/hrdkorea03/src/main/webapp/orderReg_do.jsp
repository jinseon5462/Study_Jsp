<%@page import="db.OrderDAO"%>
<%@page import="common.OrderVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	OrderVO order = (OrderVO)request.getAttribute("order");
	OrderDAO oDao = new OrderDAO();
	int result = oDao.insert(order);
	pageContext.setAttribute("result", result);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:if test="${result == 1}">
	<script>
		alert("등록 성공!");
	</script>
</c:if>

<c:if test="${result == 0}">
	<script>
		alert("등록실패...");
	</script>
</c:if>
<script>
	location.href="regFormView.jsp";
</script>
</body>
</html>