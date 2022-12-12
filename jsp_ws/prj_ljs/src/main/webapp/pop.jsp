<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	int result = (Integer)request.getAttribute("result");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복확인</title>
</head>
<body>
<h2>아이디 중복확인</h2>
<c:if test="${result == 1 }">
	<script>
		opener.document.frm.id.value="";
	</script>
	<span style="color:red;">이미 사용중인 아이디입니다.</span>
</c:if>
<c:if test="${result == 0 }">
	<span style="color:green;">사용가능한 아이디입니다.</span>
	<input type="button" value="사용" onclick="useId()">
</c:if>
<hr>
<form action="idCheck" name="flag">
	ID : <input type="text" name="id" value="${param.id}">
	<input type="submit" value="중복확인">
</form>
<script>
	function useId(){
		opener.frm.id.value = document.flag.id.value;
		opener.frm.result.value = 1;
		self.close();
	}
</script>
</body>
</html>