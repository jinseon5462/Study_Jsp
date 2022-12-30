<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	*{
		text-decoration: none;
		color: black;
	}
	
</style>
<c:if test="${sessionScope.id != null }">
	<span>${sessionScope.id }님 어서오세요!</span>
	<span>&nbsp;|&nbsp;<a href="logout.jsp">로그아웃</a></span>
	<span>&nbsp;|&nbsp;<a href="getlist.do">홈으로</a></span>
</c:if>

<c:if test="${sessionScope.id == null }">
	<span><a href="regForm.jsp">회원가입</a></span>
	<span>&nbsp;|&nbsp;<a href="loginForm.jsp">로그인</a></span>
	<span>&nbsp;|&nbsp;<a href="getlist.do">홈으로</a></span>
</c:if>
<hr>