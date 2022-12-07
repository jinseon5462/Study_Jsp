<%@page import="java.util.ArrayList"%>
<%@page import="common.ListVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<ListVO> list = (ArrayList<ListVO>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점포별 주문현황</title>
</head>
<style>
	h2{
		text-align: center;
	}
</style>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h2>점포별 주문현황</h2>
<table border="1" style="margin-left: auto; margin-right: auto;">
	<tr>
		<th>할인점코드</th>
		<th>제품코드</th>
		<th>제품명</th>
		<th>주문총수량</th>
	</tr>
	<%
	for(ListVO lVo : list){
	%>
	<tr>
		<td><%=lVo.getShopno() %></td>
		<td><%=lVo.getPcode() %></td>
		<td><%=lVo.getPname() %></td>
		<td><%=lVo.getTotalCount()%></td>
	</tr>
	<%
	}
	%>
</table>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>