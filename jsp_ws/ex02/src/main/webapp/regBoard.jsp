<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
</head>
<body>
<h2>게시글 등록</h2>
<hr>
<form action="insertBoard.jsp" method="post">
	<b>제목</b><br>
	<input type="text" name="title" placeholder="제목을 입력하세요"/><br>
	<b>내용</b><br>
	<input type="text" name="content" placeholder="내용을 입력하세요"/><br>
	<b>작성자</b><br>
	<input type="text" name="writer" placeholder="작성자를 입력하세요"/><br><br>
	<input type="submit" value="게시글 등록"/>
	<input type="reset" value="입력내용 초기화"/>
</form>
</body>
</html>