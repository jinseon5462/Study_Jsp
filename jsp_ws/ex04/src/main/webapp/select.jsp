<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀렉트 옵션 연습</title>
</head>
<body>
<form action="SelectServlet" method="get">
	직업 : 
	<select name="job" size="5" multiple="multiple">
		<option value="">선택하세요</option>
		<option value="학생">학생</option>
		<option value="공무원">공무원</option>
		<option value="군인">군인</option>
		<option value="회사원">회사원</option>
	</select>
	<input type="submit" value="전송">
</form>
</body>
</html>