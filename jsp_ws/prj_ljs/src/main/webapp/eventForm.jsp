<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	int result = (Integer)request.getAttribute("result");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 신청 페이지</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<h2>이벤트 신청 페이지</h2>
<hr>
아래 이벤트 신청 버튼을 클릭하면 이벤트 신청접수가 됩니다.<br><br>
<form action="popLogin.jsp" method="post">
	신청 아이디 : <input type="text" name="" value="로그인하세요.">
	<input type="submit" value="로그인" onclick="move()">
</form>
<jsp:include page="footer.jsp"/>
<script>
	function move(){
		window.open("popLogin.jsp", "_blank",
			"width=500, height=300"		
		);
	}
</script>


</body>
</html>