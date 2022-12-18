<%@page import="common.PageVO"%>
<%@page import="db.BoardDAO"%>
<%@page import="common.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	ArrayList<BoardVO> list = (ArrayList<BoardVO>)request.getAttribute("list");
	ArrayList<BoardVO> allList = (ArrayList<BoardVO>)request.getAttribute("allList");
	//int pageCount = (Integer)request.getAttribute("pageCount");
	int cnt = 1;
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
			<td>${board.num }</td>
			<td>${board.title }</td>
			<td>${board.content }</td>
			<td>${board.id }</td>
			<td>${board.postdate }</td>
			<td>${board.visitcount }</td>
			<td>${board.name }</td>
		</tr>
	</c:forEach>
</table>
<br>

<div style="text-align:center;">

<!-- 

<c:forEach var="pageCount" items="${list }">
	<c:if test="${pageCount.count % 10 == 0 }">
		<a href="getlist.do?page=<%=cnt%>"><%=cnt++ %></a>&nbsp;
	</c:if>
</c:forEach>
<c:set var="start" value="${p }"/>
 -->
<!-- 
<c:forEach var="pn" begin="${start }" end="${start + 4 }" items="${list }" varStatus="status">
	<a href="getList.jsp?page=${status.count }">${status.count }</a>
</c:forEach>
<a href="getList.jsp?">다음</a>
 -->
<c:forEach var="start" begin="1" end="5">
	<a href="getlist.do?start=">${start }</a>
</c:forEach>

</div>

</body>
</html>