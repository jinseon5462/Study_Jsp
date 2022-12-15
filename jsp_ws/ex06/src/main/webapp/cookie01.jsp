<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>1.쿠키 설정</h2>
<%
	Cookie cookie = new Cookie("mycookie", "쿠키");	// 쿠키생성
	//cookie.setPath(request.getContextPath());	// 경로를 컨텍스트 루트로 설정
	cookie.setMaxAge(60*2);	// 2분
	response.addCookie(cookie);	// 응답헤더에 쿠키 추가
	
%>
<h2>2. 쿠키 설정 직후 쿠키값 확인하기</h2>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(Cookie c : cookies){
			String cookieName = c.getName();
			String cookieValue = c.getValue();
			
			out.print(String.format("%s : %s<br>", cookieName, cookieValue));
		}
	}
	//JSESSIONID : A1C39AB12C120446E2F63B5D97F3673A 사용자에게 자동으로 부여되는 쿠키
%>

<h2>3. 페이지 이동후 쿠키값 확인하기</h2>
<a href="cookie_result.jsp">다음 페이지에서 쿠키값 확인하기</a>
</body>
</html>