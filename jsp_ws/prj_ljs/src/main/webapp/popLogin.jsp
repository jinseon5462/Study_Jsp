<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	int result = (Integer)request.getAttribute("result");
	session.setAttribute("id", request.getParameter("id"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<h2>로그인 폼</h2>
<hr>
<form name="frm" action="LoginServlet" method="post">
	<input type="text" name="id" value=""><br>
	<input type="password" name="pw" value=""><br>
	<input type="submit" value="로그인">
	<input type="button" value="회원가입" onclick="moveRegForm()">
</form>

<c:if test="${result == 1 }">
	<script>
		alert("성공적으로 로그인되었습니다!");
		self.close();
		opener.location.href="index.jsp";
	</script>
</c:if>

<c:if test="${result == 0 }">
	<script>
		alert("비밀번호 오류입니다.");
	</script>
</c:if>

<script>
	function moveRegForm(){
		alert("회원가입 페이지로 넘어갑니다.");
		self.close();
		opener.location.href="regForm.jsp";
	}
</script>
</body>
</html>