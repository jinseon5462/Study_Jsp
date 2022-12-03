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
<title>도서 상세 정보</title>
</head>
<body>
<form action="UpdateServlet" method="post">
	도서 코드 : <input type="text" name="bcode" value="<%=book.getBcode() %>"readonly><br>
	도서 제목 : <input type="text" name="title" value="<%=book.getTitle() %>"><br>
	도서 저자 : <input type="text" name="author" value="<%=book.getAuthor() %>"><br>
	도서 출판사 : <input type="text" name="publisher" value="<%=book.getPublisher() %>"><br>
	도서 가격 : <input type="text" name="price" value="<%=book.getPrice() %>"><br><br>
	도서 정보<br><textarea rows="5" cols="40" name="binfo"><%=book.getBinfo() %></textarea>
	<input type="submit" value="수정">
	<hr>
</form>
<a href="DeleteServlet?bcode=<%=book.getBcode()%>">정보 삭제</a>
</body>
</html>