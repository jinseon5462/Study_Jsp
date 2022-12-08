<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:out value="xxxx" /><br>
<%
	pageContext.setAttribute("age", 30);
%>
<c:set var="msg" value="hello" scope="session"/>
\${msg } : ${msg }<br>

<c:set var="age">
	30
</c:set>
나이 : ${age }<br>
<hr>
<c:set var="member" value="<%=new vo.MemberVO() %>" />
<c:set target="${member }" property="id" value="xxx" />
<c:set target="${member }" property="pw" value="1234" />
<c:set target="${member }" property="name" value="홍길동" />
<c:set target="${member }" property="tel" value="010-1111-1111" />
멤버객체 : ${member }<br>
맴버객체의 멤버변수 : ${member.id }<br>
맴버객체의 멤버변수 : ${member.pw }<br>
맴버객체의 멤버변수 : ${member.name }<br>
맴버객체의 멤버변수 : ${member.tel }<br>
<hr>
액션태그로 객체 정보 다루기<br>
<jsp:useBean id="m" class="vo.MemberVO" />
<jsp:setProperty property="id" name="m" value="hong"/>
<jsp:getProperty property="id" name="m"/>

<hr>
<c:set var="add" value="${10 + 5 }" />
\${add } = ${add }<br>
<c:set var="flag" value="${10 > 5 }" />
\${flag } = ${flag }<br>
</body>
</html>