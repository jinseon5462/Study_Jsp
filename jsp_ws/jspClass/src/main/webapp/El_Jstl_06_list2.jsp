<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[] movieList = {"타이타닉", "시네마천국", "택시 드라이버", "세상밖으로"};
	pageContext.setAttribute("list", movieList);
%>
<ul>
	<c:forEach var="movie" items="${list }" varStatus="status">
		<c:choose>
			<c:when test="${status.first }">
				<li style="font-weight:bold; color:red;">${movie }</li>
			</c:when>
			<c:otherwise>
				<li>${movie }</li>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</ul>
<hr>
<c:forEach var="movie" items="${list }" varStatus="status">
	${movie } <c:if test="${not status.last }">,</c:if>
</c:forEach>
</body>
</html>