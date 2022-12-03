<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
	String query = "SELECT * FROM board";
	PreparedStatement pstmt = conn.prepareStatement(query);
	ResultSet rs = pstmt.executeQuery(query);
	int bCount = 1;

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>
</head>
<body>
<h1>게시글 목록</h1>
<hr>
<table border="1">
	<tr>
		<th>글번호</th><th>제목</th><th>작성자</th><th>작성일자</th><th>수정일자</th><th>조회수</th>
	</tr>
	<%
	while(rs.next()){
	%>
	<tr>
		<td>
			<%=bCount %>
		</td>
		<td>
			<a href="getBoardDetail.jsp?
			title=<%=rs.getString("title") %>
			&content=<%=rs.getString("content") %>
			&writer=<%=rs.getString("writer") %>
			&date=<%=rs.getTimestamp("date") %>
			&updatedate=<%=rs.getTimestamp("updatedate") %>
			&view=<%=rs.getInt("view")%>
			&bno=<%=rs.getInt("bno") %>">
			<%=rs.getString("title") %>
			</a>
		</td>
		<td>
			<%=rs.getString("writer") %>
		</td>
		<td>
			<%=rs.getTimestamp("date") %>
		</td>
		<td>
			<%=rs.getTimestamp("updatedate") %>
		</td>
		<td>
			<%=rs.getInt("view") %>
		</td>
	</tr>
	<%
	bCount++;
	}
	%>
</table>
</body>
</html>