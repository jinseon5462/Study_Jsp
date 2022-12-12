<%@page import="java.util.ArrayList"%>
<%@page import="common.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	ArrayList<MemberVO> list = (ArrayList<MemberVO>)request.getAttribute("list");
	int result = (Integer)request.getAttribute("result");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록보기/수정</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<h2>회원목록</h2>
<hr>
<table border="1">
	<tr>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>전화번호</th>
		<th>수정/삭제</th>
	</tr>
	<c:forEach var="member" items="${list }">
		<tr>
			<td>${member.id }</td>
			<td>${member.pw }</td>
			<td>${member.name }</td>
			<td>${member.tel }</td>
			<td>
				<input type="button" value="수정" onclick="location.href='UpdateServlet?id=${member.id }'">
				<input type="button" value="삭제" onclick="location.href='DeleteServlet?id=${member.id }'">
			</td>
			
		</tr>
	</c:forEach>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>