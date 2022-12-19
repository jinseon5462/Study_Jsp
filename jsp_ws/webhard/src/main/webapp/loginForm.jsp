<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	int result = (Integer)request.getAttribute("result");

	session.setAttribute("id", request.getParameter("id"));
	session.setAttribute("pw", request.getParameter("pw"));
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
<form name="frm" action="login.do" method="post">
	<table>
		<tr>
			<th>ID</th>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<th>PW</th>
			<td><input type="password" name="pw"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="로그인" onclick="return loginCheck()">
				<input type="reset" value="초기화">
			</td>
		</tr>
	</table>
</form>

<script>
	function loginCheck(){
		if(document.frm.id.value == ""){
			alert("아이디를 입력하세요.");
			document.frm.id.focus();
			return false;
		}else if(document.frm.pw.value == ""){
			alert("비밀번호를 입력하세요.");
			document.frm.pw.focus();
			return false;
		}else{
			return true;
		}
	}
</script>

<c:if test="${result == 1 }">
	<script>
		alert("로그인 성공");
		location.href="webhard.jsp";
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script>
		alert("로그인 실패");
	</script>
</c:if>

</body>
</html>