<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 등록</title>
</head>
<body>
<h1>도서 등록</h1>
<hr>
<form action="RegServlet" method="post">
	<input type="text" name="title" placeholder="제목을 입력하세요"><br>
	<input type="text" name="author" placeholder="저자를 입력하세요"><br>
	<input type="text" name="publisher" placeholder="출판사를 입력하세요"><br>
	<input type="text" name="price" placeholder="금액을 입력하세요"><br>
	<textarea rows="5" cols="20" name="binfo" placeholder="내용을 입력하세요" ></textarea><br>
	<input type="submit" value="등록">
	<input type="reset" value="초기화">
</form>
</body>
</html>