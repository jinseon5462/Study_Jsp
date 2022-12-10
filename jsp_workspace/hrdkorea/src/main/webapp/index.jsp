<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = (String)request.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인메뉴</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<jsp:include page="navigation.jsp"/>
<h3>메인 메뉴</h3>
<h4>쇼핑몰 회원정보와 회원매출정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다.</h4>
&nbsp;&nbsp;&nbsp;&nbsp;프로그램 작성 순서
<ol>
	<li>회원정보 테이블을 생성한다.</li>
	<li>매출정보 테이블을 생성한다.</li>
	<li>회원정보, 매출정보 테이블에 제시된 문제지의 참조데이터를 추가 생성한다.</li>
	<li>회원정보 입력 화면프로그램을 작성한다.</li>
	<li>회원정보 조회 프로그램을 작성한다.</li>
	<li>회원매출정보 조회 프로그램을 작성한다.</li>
</ol>
<jsp:include page="footer.jsp"/>
</body>
</html>