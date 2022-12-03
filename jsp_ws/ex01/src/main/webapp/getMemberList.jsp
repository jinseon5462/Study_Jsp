<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String url = "jdbc:mariadb://localhost:3306/mydb";
	String uid = "root";
	String upw = "1234";
	String driver = "org.mariadb.jdbc.Driver";
	
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, uid, upw);
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("SELECT * FROM member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
</head>
<body>
	<h1>회원 목록</h1>
	<hr>
	<table border="1">
		<tr>
			<th>id</th><th>name</th>
		</tr>
		<%
		while(rs.next()){
		%>
		<tr>
			<td><a href="getMemberDetail.jsp?
				id=<%=rs.getString("id") %>
				&pw=<%=rs.getString("pw") %>
				&name=<%=rs.getString("name") %>
				&tel=<%=rs.getString("tel") %>">
				<%=rs.getString("id") %>
				</a>
			</td>
			<td>
				<%=rs.getString("name") %>
			</td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>