<%@page import="domain.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	// 1. JNDI 서버 객체 생성
	InitialContext ic = new InitialContext();

	// 2. lookup() : 자원 이름 찾기
	DataSource ds = (DataSource)ic.lookup("java:comp/env/jdbc/maria");
	
	// 3. getConnection() : 커넥션 객체 얻기
	Connection con = ds.getConnection();
	
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("SELECT * FROM member");
	ArrayList<MemberVO> list = new ArrayList<MemberVO>();
	
	while(rs.next()){
		String id = rs.getString("id");
		String pw = rs.getString("pw");
		String name = rs.getString("name");
		String tel = rs.getString("tel");
		MemberVO member = new MemberVO(id, pw, name, tel);
		list.add(member);
	}
	pageContext.setAttribute("mList", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>DataSource Test 결과</h1>
<hr>
<table border="1">
	<tr>
		<th>id</th><th>pw</th><th>name</th><th>tel</th>
	</tr>
<c:forEach var="m" items="${mList }">
	<tr>
		<td>${m.id }</td>
		<td>${m.pw }</td>
		<td>${m.name }</td>
		<td>${m.tel }</td>
	</tr>
</c:forEach>
</table>
</body>
</html>