<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = (String)session.getAttribute("name");
%>
<style>
div {
	text-align: right;	
}
</style>
<h2>쇼핑몰 회원관리 ver1.0</h2>
<hr>

<%
	if(session.getAttribute("name") == null){
%>
		게스트로 이용중입니다.
<%		
	}else{
%>
		<%=session.getAttribute("name") %>님 어서오세요!
<%
	}
%>