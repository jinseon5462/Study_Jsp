<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문등록</title>
</head>
<style>
	h2{
		text-align:center;
	}
	select{
		text-align:center;
	}
	td{
		text-align:center;
	}
</style>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h2>주문등록</h2>
<form name="frm" action="regDo.jsp" method="post">
	<table border="1" style="margin-left: auto; margin-right: auto;">
		<tr>
			<th>주문번호</th>
			<td><input type="text" name="orderno" value=""></td>
		</tr>
		<tr>
			<th>주문점포</th>
			<td>
			<select name="shopno" size="1" style="width:153px;height:20px;">
				<option value="">점포선택</option>
				<option value="S001">S001</option>
				<option value="S002">S002</option>
				<option value="S003">S003</option>
				<option value="S004">S004</option>
			</select>
			</td>
		</tr>
		<tr>
			<th>주문일자</th>
			<td><input type="text" name="orderdate" value=""></td>
		</tr>
		<tr>
			<th>제품코드</th>
			<td>
			<select name="pcode" size="1" style="width:153px;height:20px;">
				<option value="">코드선택</option>
				<option value="AA01">AA01</option>
				<option value="AA02">AA02</option>
				<option value="AA03">AA03</option>
				<option value="AA04">AA04</option>
				<option value="AA05">AA05</option>
				<option value="AA06">AA06</option>
			</select>
			</td>
		</tr>
		<tr>
			<th>주문수량</th>
			<td><input type="text" name="amount" value=""></td>
		</tr>
		<td colspan="2">
			<input type="submit" value="주문등록" onclick="return check()">
			<input type="reset" value="다시쓰기">
		</td>
	</table>
	
</form>
<jsp:include page="footer.jsp"></jsp:include>
<script>
function check(){
	if(document.frm.orderno.value == ""){
		alert("주문번호가 입력되지 않았습니다!");
		document.frm.orderno.focus();
		return false;
	}else if(document.frm.shopno.value == ""){
		alert("주문점포가 입력되지 않았습니다!");
		document.frm.shopno.focus();
		return false;
	}else if(document.frm.orderdate.value == ""){
		alert("주문일자가 입력되지 않았습니다!");
		document.frm.orderdate.focus();
		return false;
	}else if(document.frm.pcode.value == ""){
		alert("제품코드가 입력되지 않았습니다!");
		document.frm.pcode.focus();
		return false;
	}else if(document.frm.amount.value == ""){
		alert("주문수량이 입력되지 않았습니다!");
		document.frm.amount.focus();
		return false;
	}else{
		alert("주문등록이 정상적으로 등록 되었습니다!");
		return true;
	}
}
</script>
</body>
</html>