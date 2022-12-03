<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String url = "jdbc:mariadb://localhost:3306/mydb";
	String uid = "root";
	String upw = "1234";
	String driver = "org.mariadb.jdbc.Driver";
	
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");
	
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, uid, upw);
	String query = "INSERT INTO board (bno, title, content, writer, date, view) VALUES((SELECT IFNULL(MAX(bno) + 1, 1) FROM board b), ?, ?, ?, NOW(), 0)";
	PreparedStatement pstmt = conn.prepareStatement(query);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setString(3, writer);
	pstmt.executeUpdate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
</head>
<body>
<h3>게시글 등록 성공!</h3>
<hr>
<a href="index.jsp">메인메뉴로 가기</a>
</body>
</html>