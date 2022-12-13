<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//db에 접속, 로그인 처리
	MemberDAO dao = new MemberDAO();

	//로그인폼에서 넘어오는 파라미터
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	int result = dao.loginCheck(id, pw);
	
	//로그인 성공이면(result == 1) 세션에 아이디 저장
	if(result == 1){
		session.setAttribute("id", id);
		response.sendRedirect("main.jsp");
	}else{
		request.setAttribute("msg", "로그인정보가 없습니다.");
		request.getRequestDispatcher("loginForm.jsp").forward(request, response);
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>