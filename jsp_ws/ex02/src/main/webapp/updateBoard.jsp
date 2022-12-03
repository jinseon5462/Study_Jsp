<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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
	String bno = request.getParameter("bno");
	
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, uid, upw);
	String query = "UPDATE board SET title = ?, content = ?, updatedate = NOW() WHERE bno = ?";
	PreparedStatement pstmt = conn.prepareStatement(query);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setString(3, bno);
	pstmt.executeUpdate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 수정</title>
</head>
<body>
<h1>수정완료!</h1>
<a href="index.jsp">메인페이지로 돌아가기</a>
</body>
</html>