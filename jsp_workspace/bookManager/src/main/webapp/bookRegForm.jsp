<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<h1>도서정보 등록 폼</h1>
<body>
<form action="BookRegServlet" method="post">
	<input type="text" name="title" placeholder="도서 제목"><br>
	<input type="text" name="author" placeholder="도서 저자"><br>
	<input type="text" name="publisher" placeholder="도서 출판사"><br>
	<input type="text" name="price" placeholder="도서 가격"><br>
	<input type="text" name="binfo" placeholder="도서 정보"><br>
	<input type="submit" value="등록">
	<input type="reset" value="초기화">
</form>

</body>
</html>