<%@page import="common.BookVO"%>
<%@page import="db.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>

<%
	ArrayList<BookVO> list = (ArrayList<BookVO>) request.getAttribute("list");
	int cnt = (Integer) request.getAttribute("rowCnt");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서목록</title>
</head>
<body>

<h1>도서목록 - (총<%=cnt %> 행)</h1>
<hr>
<table border="1">
	<tr>
		<th>도서코드</th>
		<th>제목</th>
		<th>저자</th
		><th>출판사</th>
		<th>도서 가격</th>
	</tr>
	<%
	for(BookVO book : list){
	%>
	<tr>
		<td><%=book.getBcode() %></td>
		<td><a href="BookDetailServlet?bcode=<%=book.getBcode()%>"><%=book.getTitle() %></a></td>
		<td><%=book.getAuthor() %></td>
		<td><%=book.getPublisher() %></td>
		<td><%=book.getPrice() %></td>
	</tr>
	<%
	}
	%>
</table>
</body>
</html>