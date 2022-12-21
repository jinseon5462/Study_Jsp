<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 등록 페이지</title>
</head>
<body>
<h1>프로필 등록</h1>
<hr>
<form action="showInfo.jsp" method="post" enctype="multipart/form-data">
	<table border="1">
		<tr>
			<th>이름</th>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<th>나이</th>
			<td><input type="text" name="age"></td>
		</tr>
		<tr>
			<th>혈액형</th>
			<td><input type="text" name="bloodType"></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><input type="text" name="hobbie"></td>
		</tr>
		<tr>
			<th>사진</th>
			<td><input type="file" name="photo"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="등록">
				<input type="reset" value="초기화">
			</td>
		</tr>
	</table>
</form>
</body>
</html>