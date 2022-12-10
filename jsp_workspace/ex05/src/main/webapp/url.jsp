<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="reparam.jsp" var="page">
	<c:param name="id" value="guest"/>
	<c:param name="pw">1234</c:param>
</c:url>
<c:redirect url="${page }"/>