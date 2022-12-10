<%@page import="java.text.DecimalFormat"%>
<%@page import="common.ListVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<ListVO> list = (ArrayList<ListVO>)request.getAttribute("list");
	DecimalFormat df = new DecimalFormat("###,###");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품코드조회</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h2>제품코드조회</h2>
<table border="1" style="margin-left: auto; margin-right: auto;">
	<tr>
		<th>제품코드</th>
		<th>제품명</th>
		<th>단가</th>
		<th>할인율(10%)</th>
		<th>할인율(15%)</th>
	</tr>
	<%
	for(ListVO lVo : list){
	%>
	<tr>
		<td><%=lVo.getPcode() %></td>
		<td><%=lVo.getPname() %></td>
		<td><%=df.format(lVo.getCost()) %></td>
		<td><%=df.format(lVo.getDiscountrate1()) %></td>
		<td><%=df.format(lVo.getDiscountrate2()) %></td>
	</tr>
	<%
	}
	%>
</table>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>