<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KTX 열차 시간표</title>
</head>
<body>
<h1>KTX 열차 시간표</h1>
<hr>
<table border="1">
	<tr>
		<th>출발</th>
		<th>도착</th>
		<th colspan="2">객실/요금</th>
		<th>예약</th>
	</tr>
	<tr>
		<td>서울(09:00)</td>
		<td>부산(12:00)</td>
		<td>일반실</td>
		<td>50,000원</td>
		<td><a href="vip.jsp">예약하기</a></td>
	</tr>
	<tr>
		<td>서울(10:00)</td>
		<td>부산(13:00)</td>
		<td>특실</td>
		<td>80,000원</td>
		<td><a href="normal.jsp">예약하기</a></td>
	</tr>
	<tr>
		<td>서울(11:00)</td>
		<td>부산(14:00)</td>
		<td>특실</td>
		<td>80,000원</td>
		<td><a href="normal.jsp">예약하기</a></td>
	</tr>
</table>
</body>
</html>