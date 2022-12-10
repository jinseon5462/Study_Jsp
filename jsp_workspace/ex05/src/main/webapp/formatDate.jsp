<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="now" value="<%=new java.util.Date() %>"/>
<fmt:formatDate type="time" value="${now }"/><br>
<fmt:formatDate type="date" value="${now }"/><br>
<fmt:formatDate type="both" value="${now }"/><br>
<hr>
<fmt:formatDate type="time" timeStyle="short" value="${now }"/><br>
<fmt:formatDate type="date" dateStyle="short" value="${now }"/><br>
<fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${now }"/><br>
<hr>
<fmt:formatDate type="time" timeStyle="long" value="${now }"/><br>
<fmt:formatDate type="date" dateStyle="long" value="${now }"/><br>
<fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${now }"/><br>
<hr>
<fmt:formatDate type="time" timeStyle="medium" value="${now }"/><br>
<fmt:formatDate type="date" dateStyle="medium" value="${now }"/><br>
<fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${now }"/><br>
<hr>
<fmt:formatDate pattern="yyyy/MM/dd hh:mm:ss" value="${now }"/><br>
<hr>
<fmt:parseDate value="2022-11-30 09:23:31" pattern="yyyy-MM-dd hh:mm:ss" var="date"/>
<p>${date }</p>
</body>
</html>