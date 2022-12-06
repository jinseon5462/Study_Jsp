<%@page import="java.util.ArrayList"%>
<%@page import="common.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<MemberVO> list = (ArrayList<MemberVO>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원매출 조회</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<jsp:include page="navigation.jsp"/>
<h3>회원매출조회</h3>
<table border="1">
	<tr>
		<th>회원번호</th>
		<th>회원성명</th>
		<th>고객등급</th>
		<th>매출</th>
	</tr>
	<%
	for(MemberVO member : list){
	%>
		<tr>
		<td><%=member.getCustno() %></td>
		<td><%=member.getCustname() %></td>
		<td><%
			if(member.getGrade().equals("A")){
				out.print("VIP");
			}else if(member.getGrade().equals("B")){
				out.print("일반");
			}else{
				out.print("직원");
			}
			%></td>
		<td><%=member.getTotal() %></td>
		</tr>
	<%
	}
	%>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>