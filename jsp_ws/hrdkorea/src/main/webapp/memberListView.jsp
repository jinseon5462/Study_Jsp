<%@page import="java.util.ArrayList"%>
<%@page import="common.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ArrayList<MemberVO> list = (ArrayList<MemberVO>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<jsp:include page="navigation.jsp"/>
<h3>회원목록조회</h3>
<table border="1">
	<tr>
		<th>회원번호</th>
		<th>회원성명</th>
		<th>전화번호</th>
		<th>주소</th>
		<th>가입일자</th>
		<th>고객등급</th>
		<th>거주지역</th>
	</tr>
	<%
	for(MemberVO member : list){
	%>
	<tr>
		<td><a href="DetailServlet?custno=<%=member.getCustno() %>"><%=member.getCustno() %></a></td>
		<td><%=member.getCustname() %></td>
		<td><%=member.getPhone() %></td>
		<td><%=member.getAddress() %></td>
		<td><%=member.getJoindate() %></td>
		<td><%=member.getGrade() %></td>
		<td><%=member.getCity() %></td>
	</tr>
	<%
	}
	%>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>