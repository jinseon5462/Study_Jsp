<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팝업창</title>
</head>
<body>
<h3>팝업창</h3>
<hr>
팝업창.
<input type="checkbox" value="off">2분 동안 팝업 열지않기
<input type="submit" value="닫기" onclick="close_pop()">

<script>
	function close_pop(){
		let checkbox = document.querySelector("input[type='checkbox']");
		let checkbox_state = checkbox.checked;
		
		if(checkbox_state){
			opener.location.href="PopupServlet?pop=" + checkbox.value;
		}
		self.close();
	}
</script>
</body>
</html>