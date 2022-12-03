<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼-입력양식 연습</title>
</head>
<body>
<h1>폼 연습</h1>
<hr>
<form action="form_response.jsp" method="post">
	<input type="text" name="id" placeholder="id를 입력하세요"/><br>
	<input type="password" name="pw" placeholder="pw를 입력하세요"/><br>
	<input type="checkbox" name="hobbies" value="reading">독서
	<input type="checkbox" name="hobbies" value="coding">코딩
	<input type="checkbox" name="hobbies" value="running">달리기<br>
	<input type="radio" name="gender" value="male">남자
	<input type="radio" name="gender" value="female">여자<br>
	<!-- <input type="button" name="btn" value="버튼"><br>-->
	<input type="submit" value="전송"/>
	<input type="reset" value="초기화"/>
</form>
</body>
</html>