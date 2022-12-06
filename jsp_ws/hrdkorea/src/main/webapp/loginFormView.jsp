<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int loginResult = (Integer)request.getAttribute("result");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
<h1>로그인 페이지</h1>
<hr>
<form name="frm" action="LoginServlet" method="post">
	<table border="1">
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id" value=""><br></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="pw" value=""><br></td>
		</tr>
		<tr>
			<th>로그인/초기화</th>
			<td colspan="2">
				<input type="submit" value="로그인" onclick="return check()">
				<input type="reset" value="초기화">
				<input type="submit" value="게스트 로그인" onclick="return guest()">
			</td>
		</tr>
	</table>
</form>

<script>
function check(){
	if(document.frm.id.value == ""){
		alert("아이디를 입력하세요.");
		document.frm.id.focus();
		return false;
	}else if(document.frm.pw.value == ""){
		alert("비밀번호를 입력하세요.");
		document.frm.pw.focus();
		return false;
	}
}
function guest(){
	
}
</script>
<jsp:include page="footer.jsp"/>
</body>
</html>