<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MultipartRequest multi = new MultipartRequest(
			request,
			application.getRealPath("/files"),	// 파일을 저장할 경로
			100 * 1024 * 1024, // 최대 파일 크기
			"utf-8",	// 인코딩
			new DefaultFileRenamePolicy()	// 동일한 파일명이 있을경우 처리 방법
			);
	File file = multi.getFile("upload");
	
	String userid = multi.getParameter("id");
	String userpw = multi.getParameter("pw");
	
	if(file != null){
		Class.forName("org.mariadb.jdbc.Driver");
		Connection con = DriverManager.getConnection(
				"jdbc:mariadb://localhost:3306/greendb",
				"green01", 
				"1234"
				);
		Statement stmt = con.createStatement();
		
		// 현재 시간 얻기
		String curTime = LocalDate.now() + " " + LocalTime.now().toString().substring(0, 8);
		
		// 쿼리 실행
		String query = String.format(
					"INSERT INTO webhard(fname, ftime, fsize, id, pw) " +
					"VALUES ('%s', '%s', '%d', '%s', '%s')",
					file.getName(), curTime, (int)file.length(), userid, userpw
				);
		stmt.executeUpdate(query);
		// 메인 페이지로 돌아가기
		response.sendRedirect("webhard.jsp");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		alert("업로드 실패!");
		history.back();
	</script>
</body>
</html>