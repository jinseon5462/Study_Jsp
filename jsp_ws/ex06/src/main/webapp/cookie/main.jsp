<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Cookie[] cookies = request.getCookies();
	String flag = "";
	if(cookies != null){
		for(Cookie c : cookies){
			if(c.getName().equals("pop")){
				flag = c.getValue();
				pageContext.setAttribute("flag", flag);
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
main page
<hr>
<a href="p1.jsp">테스트 페이지</a>
<c:if test="${flag != off}">
	<script>
		window.open("pop.jsp", "_blank", "width=400px, height=200px");
	</script>
</c:if>
</body>
</html>
