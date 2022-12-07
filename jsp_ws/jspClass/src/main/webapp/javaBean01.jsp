<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	vo.MemberVO member2 = new vo.MemberVO();
	member2.setId("aaa");
	member2.setPw("1234");
	member2.setName("홍길동");
	member2.setTel("010-1111-1111");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- vo.MemberVO member = new vo.MemberVO(); -->
<jsp:useBean id="member" class="vo.MemberVO"/>

<!-- member.setId("aaa"); -->
<jsp:setProperty property="id" name="member" value="bbb"/>
<jsp:setProperty property="pw" name="member" value="2222"/>
<jsp:setProperty property="name" name="member" value="김구"/>
<jsp:setProperty property="tel" name="member" value="010-2222-2222"/>

<!-- member.getId() -->
id : <jsp:getProperty property="id" name="member"/><br>
pw : <jsp:getProperty property="pw" name="member"/><br>
name : <jsp:getProperty property="name" name="member"/><br>
tel : <jsp:getProperty property="tel" name="member"/><br>
</body>
</html>