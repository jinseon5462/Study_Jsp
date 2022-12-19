<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body>
<form name="frm" action="reg.do" method="post">
	<input type="hidden" name="result">
	<table border="1">
		<tr>
			<th>ID</th>
			<td><input type="text" name="id"><input type="button" value="아이디 중복확인" onclick="checkId()"></td>
		</tr>
		<tr>
			<th>PW</th>
			<td><input type="text" name="pw"></td>
		</tr>
		<tr>
			<th>Name</th>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<th>Tel</th>
			<td><input type="text" name="tel"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="로그인">
				<input type="reset" value="초기화">
			</td>
		</tr>
	</table>
</form>

<script>
	function checkId(){
		if(document.frm.id.value == ""){
			alert("아이디를 입력하세요.");
		}
		let param = document.frm.id.value;
		let url = "checkid.do?id=" + param;
		
	}	
</script>

</body>
</html>