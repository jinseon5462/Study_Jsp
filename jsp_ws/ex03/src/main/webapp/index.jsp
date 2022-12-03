<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="FirstServlet">서블릿 연습</a><br>
<a href="SecondServlet">두번째 서블릿 연습</a><br>
<form action="SecondServlet">
	<input type="text" name="num1" placeholder="숫자1을 입력하세요"/><br>
	<input type="text" name="num2" placeholder="숫자2를 입력하세요"/><br>
	<input type="submit" value="입력"/>
</form>
<hr>
<h2><a href="RegistServlet">회원가입 양식 페이지로 가기</a></h2>
</body>
</html>