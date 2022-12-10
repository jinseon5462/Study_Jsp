<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="frm" action="join.do" method="post">
	<table border="1">
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id" value="" onclick="openNewWindow()"/></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="pw" value=""></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><input type="text" name="name" value=""></td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td><input type="text" name="tel" value=""></td>
		</tr>
		<td colspan="2" style="text-align:center;">
			<input type="submit" value="등록">
			<input type="reset" value="초기화">
		</td>
	</table>
</form>
<c:if test="${result == 1}">
	<script>alert("등록완료");</script>
</c:if>
<c:if test="${result == 0 }">
	<script>alert("등록실패")</script>
</c:if>
<script>
fuction openNewWindow(){
	if(document.frm.id.value == ""){
		alert("아이디를 입력하세요");
		return false;
	}else if(document.frm.pw.value == ""){
		alert("비밀번호를 입력하세요");
		return false;
	}else if(document.frm.name.value == ""){
		alert("이름을 입력하세요");
		return false;
	}else if(document.frm.tel.value == ""){
		alert("전화버호를 입력하세요");
		return false;
	}else{
		return true;
	}
	let param = document.frm.id.value;
	let url = "idCheck.do?id=" + param;
	window.open(url, "_blank",
		"width=450, height=200"		
	)
}
</script>
</body>
</html>