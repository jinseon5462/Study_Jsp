<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	
	Class.forName("org.mariadb.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mariadb://localhost:3306/greendb",
			"green01", 
			"1234"
			);
	Statement stmt = con.createStatement();
	
	// 삭제할 파일의 정보를 읽어오는 쿼리(파일명을 얻기 위해)
	ResultSet rs = stmt.executeQuery("SELECT * FROM webhard WHERE num = " + num);
	
	if(rs.next()){
		// 지정된 파일 삭제
		File file = new File(application.getRealPath("/files/") + rs.getString("fname"));
		if(file != null){
			file.delete();
			// DB에서 파일정보를 삭제
			stmt.executeUpdate("DELETE FROM webhard WHERE num = " + num);
		}
	}
	response.sendRedirect("webhard.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>