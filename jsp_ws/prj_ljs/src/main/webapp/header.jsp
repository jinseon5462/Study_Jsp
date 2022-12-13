<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String id = (String)session.getAttribute("id");
%>
<h2>회원관리 프로그램 v1.0</h2>
<hr>
<a href="regForm.jsp">회원등록</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="ListServlet">회원목록보기/수정</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="eventForm.jsp">이벤트신청</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="index.jsp">홈으로</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<c:if test="${id == null }">
	<a href="#" onclick="login()">로그인</a>
</c:if>
<c:if test="${id != null }">
	${id }님&nbsp;|&nbsp;<a href="logout.jsp">로그아웃</a>
</c:if>
<script>
	function login(){
		let url = "popLogin.jsp";
		window.open(url, "_blank",
			"width=450, height=200"	
		);
	}
</script>
<hr>