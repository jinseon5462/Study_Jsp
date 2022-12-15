<%@page import="db.BoardDAO"%>
<%@page import="common.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	BoardDAO bDao = new BoardDAO();
	ArrayList<BoardVO> list = bDao.selectAll();
	request.setAttribute("list", list);
	int pageCount = 1;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록 조회</title>
</head>
<body>

<h1 style="text-align:center;">목록</h1>
<hr>
<table border="1" style="margin-left:auto; margin-right:auto;">
	<tr>
		<th>num</th>
		<th>title</th>
		<th>content</th>
		<th>id</th>
		<th>postdate</th>
		<th>visitcount</th>
		<th>name</th>
	</tr>
	<c:forEach var="board" items="${list }" varStatus="status">
		<tr>
			<td>${status.count}</td>
			<td>${board.title }</td>
			<td>${board.content }</td>
			<td>${board.id }</td>
			<td>${board.postdate }</td>
			<td>${board.visitcount }</td>
			<td>${board.name }</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>