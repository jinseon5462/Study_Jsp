<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="frm" action="LoginServlet" method="post">
	<input type="text" name="id"><br>
	<input type="password" name="pw"><br>
	
	<input type="submit" value="전송" onclick="return check()">	<!-- 클릭이 발생하면 check()메소드를 실행 -->
</form>
<script>
function check(){
	if(document.frm.id.value == ""){
		alert("아이디를 입력하세요");
		document.frm.id.focus();	//focus : 입력할 곳에 위치시켜준다.
		return false;
	}else if(document.frm.pw.value == ""){
		alert("패스워드를 입력하세요");
		document.frm.pw.focus();
		return false;
	}else{
		return true;
	}
}
</script>
</body>
</html>