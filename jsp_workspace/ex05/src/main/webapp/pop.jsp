<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	int result = (Integer)request.getAttribute("result");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>아이디 중복확인</h2>
<hr>
<form action="idcheck.do" name="frm" method="get">
	ID : <input type="text" name="id" value="${param.id }">
	<input type="submit" value="중복확인">
</form>
<c:if test="${result == 1}">
	<script>
		opener.document.frm.id.value="";
	</script>
	${param.id }는 이미 사용중입니다.
</c:if>
<c:if test="${result == 0 }">
	${param.id }는 사용 가능한 아이디 입니다.
	<input type="button" value="사용" onclick="idok()">
</c:if>
<script>
	function idok(){
		opener.frm.id.value = document.frm.id.value;
		self.close();
	}
</script>
</body>
</html>