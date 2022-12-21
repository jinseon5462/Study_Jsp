<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* String fname = (String)request.getAttribute("fname");
	String name = (String)request.getAttribute("name");
	String age = (String)request.getAttribute("age");
	String bloodType = (String)request.getAttribute("bloodType");
	String hobbie = (String)request.getAttribute("hobbie"); */
	
	request.setCharacterEncoding("utf-8");
	
	MultipartRequest multi = new MultipartRequest(
			request,
			application.getRealPath("/img"),
			100 * 1024 * 1024,
			"utf-8",
			new DefaultFileRenamePolicy()
			);
	String fname = multi.getFilesystemName("photo");
	String name = multi.getParameter("name");
	String age = multi.getParameter("age");
	String bloodType = multi.getParameter("bloodType");
	String hobbie = multi.getParameter("hobbie");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보</title>
	<style>
		.container {
			margin: 20px auto;
			width: 200px;
			height: 400px;
			background-color: lightgray;
			border-radius: 5%;
			display: flex;
			justify-content: center;
			flex-direction: column;
			align-items: center;
		}
		
		#photo {
			width: 100px;
			height: 100px;
			border-radius: 50% 50%;
			background-color: blueviolet;
			background-size: 100% 100%;
			background-image: url('img/<%=fname%>');
		}
		
		#info {
			background-color: white;
			width: 180px;
			height: 100px;
		}
	</style>
</head>
<body>
	<div class="container">
	<!-- <img id="photo" src="img/<%=fname%>"> -->
	<div id="photo"></div>
		<h1><%=name %></h1>
		<div id="info">
			<ul>
				<li>나이 : <%=age %></li>
				<li>혈액형 : <%=bloodType %></li>
				<li>취미 : <%=hobbie %></li>
			</ul>
		</div>
	</div>
</body>
</html>