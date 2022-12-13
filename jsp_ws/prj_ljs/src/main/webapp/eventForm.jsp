<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	int result = (Integer)request.getAttribute("result");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 신청 페이지</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<h2>이벤트 신청 페이지</h2>
<hr>
아래 이벤트 신청 버튼을 클릭하면 이벤트 신청접수가 됩니다.<br><br>
	<c:if test="${sessionScope.id != null }">
		<form action="" name="frm">
		신청 아이디 : <input type="text" name="id" value="${sessionScope.id }" readonly>
		<p id="idok"></p>
		<input type="button" value="이벤트신청" onclick="checkEvent()">
		</form>
	</c:if>
<form action="popLogin.jsp" method="post">
	<c:if test="${sessionScope.id == null }">
		신청 아이디 : <input type="text" name="id" value="로그인 하세요." readonly>
		<input type="button" value="로그인" onclick="login()">
	</c:if>
</form>
<jsp:include page="footer.jsp"/>
<script>
	function login(){
		window.open("popLogin.jsp", "_blank",
			"width=500, height=300"		
		);
	}
	
	function checkEvent(){
		let param = document.frm.id.value;
		let url = "CheckEventServlet?id=" + param;
		window.open(url, "_blank", "width=400, height=200");
	}
	
	function idcheck(){
		if(document.frm.id.value == ""){
			alert("아이디를 입력하고 확인하세요.");
			return;
		}
		window.open("eventForm.jsp", "_blank", "width=400, height=300");
	}
</script>


</body>
</html>