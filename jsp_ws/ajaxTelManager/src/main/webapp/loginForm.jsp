<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	int result = (Integer)request.getAttribute("result");
	session.setAttribute("id", request.getParameter("id"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>

<h1>로그인</h1>
<%@ include file="nav.jsp" %>
<form name="frm" action="login.do" method="post">
	<table border="1">
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="pw"></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center;">
				<input type="submit" value="로그인" onclick="allCheck()">
				<input type="reset" value="초기화">
			</td>
		</tr>
	</table>
	
	<c:if test="${result == 1 }">
		<script>
			alert("로그인 성공!");
			location.href="index.jsp";
		</script>
	</c:if>
	
	<c:if test="${result == 0 }">
		<script>
			alert("로그인 실패...");
		</script>
	</c:if>
	<script>
		function allCheck(){
			if(docuemnt.frm.id.value == ""){
				alert("아이디를 입력하세요.");
				return false;
			}else if(document.frm.pw.value == ""){
				alert("비밀번호를 입력하세요.");
				return false;
			}else{
				return true;
			}
		}
	</script>
</form>
</body>
</html>