<%@page import="common.BookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BookVO book = (BookVO) request.getAttribute("book");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 상세보기 페이지</title>
</head>
<body>
<h1>도서 상세보기 페이지</h1>
<hr>
<form action="UpdateServlet" method="post">
	<input type="text" name="bcode" value="<%=book.getBcode() %>" readonly><br>
	<input type="text" name="title" value="<%=book.getTitle() %>"><br>
	<input type="text" name="author" value="<%=book.getAuthor() %>"><br>
	<input type="text" name="publisher" value="<%=book.getPublisher() %>"><br>
	<input type="text" name="price" value="<%=book.getPrice() %>"><br>
	<textarea rows="5" cols="40" name="binfo"><%=book.getBinfo() %></textarea>
	<input type="submit" value="수정"><br>
	<hr>
</form>
<a href="DeleteServlet?bcode=<%=book.getBcode() %>">삭제하기</a> 
</body>
</html>