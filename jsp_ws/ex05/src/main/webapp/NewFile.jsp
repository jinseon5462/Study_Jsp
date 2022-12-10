<%@page import="domain.MemberVO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
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
<title>Insert title here</title>
</head>
<body>
<form name="frm" action="join.do" method="post">
	id : <input type="text" name="id">
	<input type="button" value="아이디 중복확인" onclick="openNewWindow()"/><br>
	pw : <input type="text" name="pw"><br>
	name : <input type="text" name="name"><br>
	tel : <input type="text" name="tel"><br>
	<input type="submit" value="전송">
</form>
<c:if test="${result == 1}">
	<script>
		alert("등록완료");
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script>
		alert("등록실패");
	</script>
</c:if>
<script>
function openNewWindow(){
	if(document.frm.id.value == ""){
		alert("아이디를 입력하세요.");
		document.frm.id.focus();
		return;
	}
	//let param = document.getElementById("name").value;
	let param = document.frm.id.value;
	let url = "idcheck.do?id=" + param;
	window.open(url, "_blank",
		"width=450, height=200"			
	);
}
</script>
</body>
</html>