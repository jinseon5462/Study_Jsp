<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<h1>회원가입 페이지</h1>
<hr>
<form name="frm" action="reg.do" method="post">
	<input type="hidden" name="result">
	<table>
		<tr>
			<th>ID</th>
			<td><input type="text" name="id"><input type="button" value="중복확인" onclick="checkId()"></td>
		</tr>
		<tr>
			<th>PW</th>
			<td><input type="password" name="pw"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="회원가입" onclick="return regCheck()">
				<input type="reset" value="초기화">
			</td>
		</tr>
	</table>
</form>

<c:if test="${result == 1 }">
	<script>
		alert("등록 성공");
		location.href="index.jsp";
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script>
		alert("등록실패");
	</script>
</c:if>
<script>
	function checkId(){
		if(document.frm.id.value == ""){
			alert("아이디를 입력하세요.");
			document.frm.id.focus();
			return;
		}
		let param = document.frm.id.value;
		let url = "checkid.do?id=" + param;
		window.open(url, "_blank", "width=450, height=200");
	}
	
	function regCheck(){
		if(document.frm.id.value == ""){
			alert("아이디를 입력하세요.");
			document.frm.id.focus();
			return false;
		}else if(document.frm.pw.value == ""){
			alert("비밀번호를 입력하세요.");
			document.frm.pw.focus();
			return false;
		}else if(document.frm.result.value == ""){
			alert("중복확인 후 이용해주세요.");
			return false;
		}else{
			return true;
		}
	}
</script>

</body>
</html>