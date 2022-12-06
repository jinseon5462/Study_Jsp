<%@page import="db.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserDAO uDao = new UserDAO();
	int custno = uDao.showCustno();
	String date = uDao.getRegDate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록 페이지</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<jsp:include page="navigation.jsp"/>
<h3>회원 등록</h3>
<form name= "frm" action="RegServlet" method="post">
	<table border="1">
		<tr>
			<th>회원번호(자동발생)</th>
			<td><input type="custno" name="custno" value="<%=custno %>" readonly></td>
		</tr>
		<tr>
			<th>회원성명</th>
			<td><input type="text" name="custname"></td>
		</tr>
		<tr>
			<th>회원전화</th>
			<td><input type="text" name="phone"></td>
		</tr>
		<tr>
			<th>회원주소</th>
			<td><input type="text" name="address"></td>
		</tr>
		<tr>
			<th>가입일자</th>
			<td><input type="text" name="joindate" value="<%=date%>" readonly></td>
		</tr>
		<tr>
			<th>고객등급(A : VIP, B : 일반, C : 직원)</th>
			<td><input type="text" name="grade"></td>
		</tr>
		<tr>
			<th>도시코드</th>
			<td><input type="text" name="city"></td>
		</tr>		
		<tr>
			<td colspan="2">
				<input type="submit" value="등록" onclick="return check()">&nbsp;&nbsp;
				<input type="button" value="조회" onclick="move()">
			</td>
	</table>
</form>
<script>
function check(){
	if(document.frm.custname.value == ""){
		alert("회원성명이 입력되지 않았습니다.");
		document.frm.name.focus();
		return false;
	}else if(document.frm.phone.value == ""){
		alert("회원전화가 입력되지 않았습니다.");
		document.frm.phone.focus();
		return false;
	}else if(document.frm.address.value == ""){
		alert("회원주소가 입력되지 않았습니다.");
		document.frm.address.focus();
		return false;
	}else if(document.frm.joindate.value == ""){
		alert("가입일자가 입력되지 않았습니다.");
		document.frm.joindate.focus();
		return false;
	}else if(document.frm.grade.value == ""){
		alert("고객등급이 입력되지 않았습니다.");
		document.frm.grade.focus();
		return false;
	}else if(document.frm.city.value == ""){
		alert("도시코드가 입력되지 않았습니다.");
		document.frm.grade.focus();
		return false;
	}else{
		alert("회원등록이 완료되었습니다!!");
		return true;
	}
}
</script>
<script>
function move(){
	location.href="MemberListServlet";
}
</script>
<jsp:include page="footer.jsp"/>
</body>
</html>