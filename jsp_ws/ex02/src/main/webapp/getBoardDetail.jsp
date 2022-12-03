<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String bno = request.getParameter("bno");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");
	String date = request.getParameter("date");
	String updatedate = request.getParameter("updatedate");
	String view = request.getParameter("view");

	String url = "jdbc:mariadb://localhost:3306/mydb";
	String uid = "root";
	String upw = "1234";
	String driver = "org.mariadb.jdbc.Driver";
	
	Class.forName(driver);
	String query = "UPDATE board SET view = ? WHERE bno = ?";
	Connection conn = DriverManager.getConnection(url, uid, upw);
	PreparedStatement pstmt = conn.prepareStatement(query);
	pstmt.setInt(1, Integer.parseInt(view) + 1);
	pstmt.setString(2, bno);
	pstmt.executeUpdate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
</head>
<body>
<h1>게시글 상세보기</h1>
<hr>
<form action="updateBoard.jsp" method="post">
<table border="1">
	<tr>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일자</th>
		<th>수정일자</th>
		<th>조회수</th>
	</tr>
	<tr>
		<th><input type="text" name="title" value="<%=title %>" ></th>
		<th><input type="text" name="writer" value="<%=writer %>" readonly></th>
		<th><input type="text" name="date" value="<%=date %>" readonly></th>
		<th><input type="text" name="updatedate" value="<%=updatedate %>" readonly></th>
		<th><input type="text" name="view" value="<%=Integer.parseInt(view) + 1 %>" readonly></th>
		<input type="hidden" name="bno" value="<%=bno %>"/>
	</tr>
	<tr>
		<th>내용</th>
	</tr>
	<tr>
		<th><input type="text" name="content" value="<%=content %>"></th>
	</tr>
</table>
	<input type="submit" value="게시글 수정"/>
</form>
</body>
</html>