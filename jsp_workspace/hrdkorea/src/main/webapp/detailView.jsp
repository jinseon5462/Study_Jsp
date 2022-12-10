<%@page import="common.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVO member = (MemberVO) request.getAttribute("member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
</head>
<body>
<h1>홈쇼핑 회원정보 수정</h1>
<hr>
<form action="UpdateServlet" method="post">
	<table border>
		<tr>
			<th>회원번호</th>
			<td><input type="text" name="custno" value="<%=member.getCustno() %>"readonly></td>
		</tr>
		<tr>
			<th>회원성명</th>
			<td><input type="text" name="custname" value="<%=member.getCustname() %>"></td>
		</tr>
		<tr>
			<th>회원전화</th>
			<td><input type="text" name="phone" value="<%=member.getPhone() %>"></td>
		</tr>
		<tr>
			<th>회원주소</th>
			<td><input type="text" name="address" value="<%=member.getAddress() %>"></td>
		</tr>
		<tr>
			<th>가입일자</th>
			<td><input type="text" name="joindate" value="<%=member.getJoindate() %>" readonly></td>
		</tr>
		<tr>
			<th>고객등급 [A : VIP, B : 일반, C : 직원] </th>
			<td><input type="text" name="grade" value="<%=member.getGrade() %>"></td>
		</tr>
		<tr>
			<th>도시코드</th>
			<td><input type="text" name="city" value="<%=member.getCity() %>"></td>
		</tr>
		<td colspan="2">
		<center>
			<input type="submit" value="수정" onclick="updateClear()">
			<input type="button" value="조회" onclick="move()">
		</center>
		</div>
		</td>
	</table>
</form>
<script>
function updateClear(){
	alert("회원정보수정이 완료되었습니다!");
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