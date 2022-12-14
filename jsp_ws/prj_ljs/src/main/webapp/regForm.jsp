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
<title>회원등록</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<h2>회원등록</h2>
<hr>
<!-- 
<form name="frm" action="RegServlet" method="post">
	<input type="hidden" name="result" value="">
	아&nbsp;&nbsp;이&nbsp;&nbsp;디 : <input type="text" name="id" value="">
	<input type="button" value="아이디 중복 확인" onclick="sameCheck()">
	<div id="check">중복 결과 : <input type="text" name="check" value=""></div>
	비밀번호 : <input type="password" name="pw" value=""><br>
	이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름 : <input type="text" name="name" value=""><br>
	연&nbsp;&nbsp;락&nbsp;&nbsp;처 : <input type="text" name="tel" value=""><br>
	<input type="submit" value="등록" onclick="return regCheck()">
	<input type="reset" value="초기화">
</form>

 -->

<form name="frm" action="RegServlet" method="post">
	<table border="1">
		<tr>
			<th>id</th>
			<td style="text-align: left;">
				<input type="text" name="id" value="">&nbsp;
				<input type="button" value="아이디 중복 확인" onclick="sameCheck()"><br>
			</td>
		</tr>
		<tr>
			<th>확인결과</th>
			<td>
				<div id="check">
					중복확인을 해주세요.<br>
					<input type="hidden" name="result">
				</div>
			</td>
		</tr>
		<tr>
			<th>pw</th>
			<td style="text-align: left;"><input type="password" name="pw" value=""></td>
		</tr>
		<tr>
			<th>name</th>
			<td style="text-align: left;"><input type="text" name="name" value=""></td>
		</tr>
		<tr>
			<th>tel</th>
			<td style="text-align: left;"><input type="text" name="tel" value=""></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="등록" onclick="return regCheck()">
				<input type="reset" value="초기화">
			</td>
		</tr>
	</table>
</form>

<jsp:include page="footer.jsp"/>
<c:if test="${result == 1 }">
	<script>
		alert("등록성공!");
		location.href="ListServlet";
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script>
		alert("등록실패...");
	</script>
</c:if>
<script>

	function sameCheck(){
		let param = document.frm.id.value;
		const xhttp = new XMLHttpRequest();
		xhttp.onload = function(){
			document.getElementById("check").innerHTML = this.responseText;
		}
		xhttp.open("GET", "idCheck?id=" + param, true);
		xhttp.send();
	}
	
	/*
	function idCheck(){
		if(document.frm.id.value == ""){
			alert("아이디를 입력하세요.");
			document.frm.id.focus();
			return;
		}
		let param = document.frm.id.value;
		let url = "idCheck?id=" + param;
		window.open(url,"_blank",
			"width=450, height=200"		
		);
	}
	*/
	
	function regCheck(){
		if(document.frm.id.value == ""){
			alert("아이디를 입력하세요.");
			document.frm.id.focus();
			return false;
		}else if(document.frm.pw.value == ""){
			alert("비밀번호를 입력하세요.");
			document.frm.pw.focus();
			return false;
		}else if(document.frm.name.value == ""){
			alert("이름을 입력하세요.");
			document.frm.name.focus();
			return false;
		}else if(document.frm.tel.value == ""){
			alert("전화번호를 입력하세요.");
			document.frm.tel.focus();
			return false;
		}else if(document.frm.result.value == ""){
			alert("중복체크를 진행해주세요.");
			return false;
		}else{
			return true;
		}
	}
</script>
</body>
</html>