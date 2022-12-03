<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="RadioServlet" method="get">
	성별 : 
	<input type="radio" id="man" name="gender" value="남자"><label for="man">남자</label>
	<input type="radio" id="woman" name="gender" value="여자"><label for="woman">여자</label><br><br>
	메일 정보 수신여부 : 
	<input type="radio" name="chk_mail" value="yes">수신
	<input type="radio" name="chk_mail" value="no" checked>거부<br><br>
	간단한 가입인사를 적어주세요^o^
	<textarea rows="3" cols="40" name="comment"></textarea>
	<input type="submit" value="전송">
</form>
</body>
</html>