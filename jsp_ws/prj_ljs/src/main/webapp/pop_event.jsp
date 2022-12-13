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
<title>EVENT 신청 아이디 중복확인</title>
</head>
<body>
<h1>EVENT 신청 아이디 중복확인</h1>

<c:if test="${result == 1 }">
	<span style="color:red;">${sessionScope.id }는 이미 신청한 아이디에요.</span>
</c:if>

<c:if test="${result == 0 }">
	<span style="color:green;" id="id">${sessionScope.id }</span>는 이벤트 신청 가능한 아이디에요.
	<input type="button" value="신청" onclick="regEvent()">
</c:if>
<script>
	function regEvent(){
		let param = document.getElementById("id").innerHTML;
		opener.location.href="RegEventServlet?id=" + param;
		alert("신청이 완료되었습니다!");
		self.close();
	}
</script>
</body>
</html>