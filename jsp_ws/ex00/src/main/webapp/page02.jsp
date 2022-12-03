<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테이블연습</title>
</head>
<body>
<h1>테이블 연습</h1>
<hr>
<table border="1">
	<tr>
		<th>id</th>
		<th>pw</th>
		<th>name</th>
	</tr>
	<tr>
		<td>admin</td>
		<td>1234</td>
		<td>홍길동</td>
	</tr>
	<tr>
		<td>hong</td>
		<td>1111</td>
		<td>홍길슨</td>
	</tr>
</table>
<hr>
<table border="1">
	<tr>
		<th colspan="2">지역별 홍차</th>
	</tr>
	<tr>
		<th rowspan="3">중국</th>
		<td>정산소종</td>
	</tr>
	<tr><td>기문</td></tr>
	<tr><td>운남</td></tr>
	<tr>
		<th rowspan="4">인도 및 스리랑카</th>
		<td>아삼</td>
	</tr>
	<tr><td>실론</td></tr>
	<tr><td>다질링</td></tr>
	<tr><td>닐기리</td></tr>
</table>
</body>
</html>