<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록 페이지</title>
</head>
<body>
<h1>회원 등록 페이지</h1>
<hr>
<form name= "frm" action="RegServlet" method="post">
	<table border="1">
		<tr>
			<th>회원번호(자동발생)</th>
			<td><input type="custno" value="" readonly></td>
		</tr>
		<tr>
			<th>회원성명</th>
			<td><input type="text" name="custname"></td>
		</tr>
		<tr>
			<th>회원전화</th>
			<td><input type="text" name="phone"></td>
		</tr>
		<tr>
			<th>회원주소</th>
			<td><input type="text" name="address"></td>
		</tr>
		<tr>
			<th>가입일자</th>
			<td><input type="text" name="joindate"></td>
		</tr>
		<tr>
			<th>고객등급(A : VIP, B : 일반, C : 직원)</th>
			<td><input type="text" name="grade"></td>
		</tr>
		<tr>
			<th>도시코드</th>
			<td><input type="text" name="city"></td>
		</tr>		
		<tr>
			<td colspan="2">
				<input type="submit" value="등록" onclick="return check()">&nbsp;&nbsp;
			</td>
	</table>
</form>

</body>
</html>