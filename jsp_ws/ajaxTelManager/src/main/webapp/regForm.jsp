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
<title>회원가입</title>
</head>
<body>
	<h1>회원가입</h1>
	<%@ include file="nav.jsp" %>
	<form name="frm" action="reg.do" method="post">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" name="id" value="">
					<input type="button" value="중복확인" onclick="checkId()">
				</td>
			</tr>
			<tr>
				<th>확인결과</th>
				<td>
					<div id="check">
						중복확인을 해주세요.
						<!-- <input type="hidden" name="result"> -->
					</div>
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="tel"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
					<input type="submit" value="가입">
					<input type="reset" value="초기화">
				</td>
			</tr>
		</table>
		<c:if test="${result == 1}">
			<script>
				alert("회원가입 성공!");
			</script>
		</c:if>
		<c:if test="${result == 0}">
			<script>
				alert("회원가입 실패!");
			</script>
		</c:if>
		<script>
			function checkId(){
				if(document.frm.id.value == ""){
					alert("아이디를 입력해주세요");
					document.frm.id.focus();
					return;
				}
				let id = document.frm.id.value;
				const xhttp = new XMLHttpRequest();
				xhttp.onload = function(){
					document.getElementById("check").innerHTML = this.responseText;
				}
				xhttp.open("GET", "checkid.do?id=" + id, true);
				xhttp.send();
			}
			
			function allCheck(){
				if(document.frm.id.value == ""){
					alert("아이디를 입력해주세요.");
					document.frm.id.focus();
					return false;
				}else if(document.frm.pw.value == ""){
					alert("비밀번호를 입력해주세요.");
					document.frm.pw.focus();
					return false;
				}else if(document.frm.name.value == ""){
					alert("이름을 입력해주세요.");
					document.frm.name.focus();
					return false;
				}else if(document.frm.tel.value == ""){
					alert("전화번호를 입력해주세요.");
					document.frm.tel.focus();
					return false;
				}else if(document.frm.result.value == ""){
					alert("아이디 중복확인후 등록가능합니다.");
					document.frm.id.focus();
					return false;
				}else{
					return true;
				}
			
			}
		</script>
	</form>
</body>
</html>