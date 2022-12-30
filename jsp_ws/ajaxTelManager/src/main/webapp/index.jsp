<%@page import="common.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	ArrayList<MemberVO> list = (ArrayList<MemberVO>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<style>
	*{
		text-align: center;
	}
	table{
		margin: 0 auto;
	}
	
	
</style>
<body>
	<h1>메인페이지</h1>
	<%@ include file="nav.jsp" %>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>전화번호</th>
		</tr>
		<c:forEach var="member" items="${list }" varStatus="status">
		<tr>
			<td>${status.count }</td>
			<td>${member.id }</td>
			<td>${member.pw }</td>
			<td>${member.name }</td>
			<td>${member.tel }</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>