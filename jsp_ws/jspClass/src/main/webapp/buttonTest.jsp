<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button onclick="mover()">link</button>

<script>
function mover(){
	alert("페이지를 이동합니다.");
	location.href="buttonResult.jsp?x=홍길동";
}
</script>
</body>
</html>