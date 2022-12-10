<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="common.ListVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<ListVO> list = (ArrayList<ListVO>) request.getAttribute("list");
	DecimalFormat df = new DecimalFormat("###,###");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	h2{
		text-align: center;
	}
</style>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h2>주문 목록</h2>
<table border="1" style="margin-left: auto; margin-right: auto;">
	<tr>
		<th>할인점코드</th>
		<th>점포명</th>
		<th>주문번호</th>
		<th>주문일자</th>
		<th>제품코드</th>
		<th>제품평</th>
		<th>주문수량</th>
		<th>단가</th>
		<th>소비자가격</th>
		<th>할인가격</th>
	</tr>
	<%
	for(ListVO lVo : list){
	%>
	<tr>
		<td><%=lVo.getShopno() %></td>
		<td><%=lVo.getShopname() %></td>
		<td><%=lVo.getOrderno() %></td>
		<td><%=lVo.getOrderdate() %></td>
		<td><%=lVo.getPcode() %></td>
		<td><%=lVo.getPname() %></td>
		<td><%=lVo.getAmount() %></td>
		<td><%=df.format(lVo.getCost()) %></td>
		<td><%=df.format(lVo.getCustprice()) %></td>
		<td><%=df.format(lVo.getDiscountprice()) %></td>
	</tr>
	<%
	}
	%>
</table>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>