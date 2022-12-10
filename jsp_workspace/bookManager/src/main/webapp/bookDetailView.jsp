<%@page import="common.BookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BookVO book = (BookVO)request.getAttribute("book");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>도서 상세 정보</h1>
<hr>
<form action="UpdateServlet" method="post">
도서 코드 : <input type="text" name="bcode" value="<%=book.getBcode() %>"readonly><br>
도서명 : <input type="text" name="title" value="<%=book.getTitle() %>"><br>
저자 : <input type="text" name="author" value="<%=book.getAuthor() %>"><br>
출판사 : <input type="text" name="publisher" value="<%=book.getPublisher() %>"><br>
가격 : <input type="text" name="price" value="<%=book.getPrice() %>"><br>
도서 상세 정보 : <textarea rows="5" cols="20"><%=book.getBinfo() %></textarea><br>
<hr>
	<input type="submit" value="수정">
</form>
<a href="DeleteServlet?bcode=<%=book.getBcode() %>">삭제</a>
</body>
</html>