<%@page import="common.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVO member = (MemberVO)request.getAttribute("member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<h2>회원정보 수정</h2>
<hr>
<form action="UpdateServlet" method="post">
	<table border="1">
	<tr>
		<th>아이디</th>
		<td><input type="text" name="id" value="${member.id }" readonly></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="text" name="pw" value="${member.pw }"></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="name" value="${member.name }"></td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td><input type="text" name="tel" value="${member.tel }"></td>
	</tr>
	</table>
	<input type="submit" value="수정">
</form>
<jsp:include page="footer.jsp"/>
</body>
</html>