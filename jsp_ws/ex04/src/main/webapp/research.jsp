<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String[] seasons = request.getParameterValues("season");
	//Map<>
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름 : <%=name %>	<br>
	성별 : <%=gender %><br>
	계절 : <%
			out.print("당신이 좋아하는 계절은 ");
			for(int i = 0; i < seasons.length; i++){
				out.print(seasons[i]);
		%>
			
		<%	}
			out.print("입니다.");
			%>
</body>
</html>