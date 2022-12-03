<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원가입 페이지</h2>
<hr>
<form action="second_request.jsp" method="post">
	id : <input type="text" name="id" placeholder="아이디를 입력하세요"><br>
	pw : <input type="password" name="pw" placeholder="비밀번호를 입력하세요"><br>
	성별 : 
	<input type="radio" name="gender" value="남자">남자
	<input type="radio" name="gender" value="여자">여자<br>
	취미 : <input type="checkbox" name="hobbies" value="등산">운동
	<input type="checkbox" name="hobbies" value="잠자기">잠자기
	<input type="checkbox" name="hobbies" value="시체놀이">시체놀이
	<input type="checkbox" name="hobbies" value="축구">축구<br>
	<input type="submit" value="입력">
	<input type="reset" value="초기화">
	<hr>
</form>
</body>
</html>