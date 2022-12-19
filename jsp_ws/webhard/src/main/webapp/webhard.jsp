<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	int result = (Integer)request.getAttribute("result");
	int dresult = (Integer)request.getAttribute("dresult");
	String id = (String)session.getAttribute("id");
	
	Class.forName("org.mariadb.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:mariadb://localhost:3306/greendb",
			"green01", 
			"1234"
			);
	//String query = "SELECT * FROM webhard WHERE id = ?";
	//PreparedStatement pstmt = con.prepareStatement(query);
	//pstmt.setString(1, id);
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("SELECT * FROM webhard");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
<style>
	h1 {
		text-align: center;
	}
	table {
		width: 700px;
		text-align: center;
		margin-right: auto;
		margin-left: auto;
	}
	
	th {
		background-color: cyan;
	}
	
	.left{
		text-align: left;
	}
	
	.right{
		text-align: right;
	}
	
	a {
		text-align: center;
		text-decoration: none;
	}
</style>
</head>
<body>
<h1>파일 업로드</h1>
<hr>
<a href="getmylist.do?id=${sessionScope.id }">내가 올린파일 보기</a>
<form id="frm" action="addfile.do" method="post" enctype="multipart/form-data">
	업로드할 파일을 선택하세요.<br>
	<input type="file" name="upload"><br>
	<input type="hidden" name="id" value="${sessionScope.id }">
	<input type="submit" value="업로드"><br>
</form>
<input id="btn" type="button" value="로그아웃" onclick="move()">

<table border="1">
	<tr>
		<th>사진</th>
		<th>파일명</th>
		<th>업로드시간</th>
		<th>크기</th>
		<th>업로드 유저</th>
		<th>삭제</th>
	</tr>
<%
	while(rs.next()){
%>
	<tr>
		<td><img src="files/<%=rs.getString("fname") %>" width="150px"></td>
		<td class="left">
			<a href="files/<%=rs.getString("fname") %>">
				<%=rs.getString("fname") %>
			</a>
		</td>
		<td><%=rs.getString("ftime") %></td>
		<td class="right"><%=String.format("%,d", rs.getInt("fsize")) %>&nbsp;&nbsp;</td>
		<td><%=rs.getString("id") %></td>
		
		<td>
			<a href="delete.do?num=<%=rs.getInt("num")%>&id=${sessionScope.id }" onclick="return confirm('정말 삭제하시겠습니까?')">[X]</a>
		</td>
	</tr>	
<%
	}
%>
</table>

${sessionScope.id }

<c:if test="${result == 1 }">
	<script>
		alert("등록 성공");
	</script>
</c:if>

<c:if test="${result == 0 }">
	<script>
		alert("등록 실패");
	</script>
</c:if>

<c:if test="${dresult == 1 }">
	<script>
		alert("삭제 성공");
	</script>
</c:if>

<c:if test="${dresult == 0 }">
	<script>
		alert("본인 게시물만 삭제할수있습니다.");
	</script>
</c:if>

<script>
	function move(){
		location.href="logout.jsp";
	}
</script>

</body>
</html>