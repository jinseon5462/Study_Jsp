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
<c:set var="realEnd" value="20"/>
<!-- 시작 번호 받아서 시작번호와 끝번호 설정하기 -->
<c:if test="${empty param.start }">
	<c:set var="start" value="${param.start }"/>
</c:if>
<c:set var="end" value="${start+4 }"/>

<!-- 이전 버튼 설정... 음수로 가지않게 하기 -->
<c:if test="${start > 1 }">
	<a href="listPaging.jsp?start=${start - 5 }">[이전]</a>&nbsp;&nbsp;
</c:if>
<c:forEach var="pageNum" begin="${start }" end="${(end > realEnd) ? realEnd : end }">
	<a href="#">${pageNum }</a>&nbsp;&nbsp;
</c:forEach>

<!-- 다음 버튼 설정... 마지막 페이지 설정하기 -->
<c:if test="${end < realEnd }">
	<a href="listPaging.jsp?start=${end + 1 }">[다음]</a>
</c:if>

</body>
</html>