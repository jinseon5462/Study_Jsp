<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>AJAX 연습</h1>
<hr>

<div id="txt"></div>
<div id="demo" onclick="loadDoc();">here...</div>
<script>

	//document.getElementById("demo").innerHTML = "<h3>서버로부터 온 응답데이터가 아래에 표시됩니다.</h3>";
	document.querySelector("#txt").innerHTML = "<h3>서버로부터 온 응답데이터가 아래에 표시됩니다.</h3>";
	
	function loadDoc() {
		alert("loadDoc()...");
		const xhttp = new XMLHttpRequest();
		xhttp.onload = function() {
			document.getElementById("demo").innerHTML = this.responseText;	//서버의 응답을 저장하고 있다.
		}
		xhttp.open("GET", "ajax_info.txt");	//action
		xhttp.send();	//submit
	}
</script>
</body>
</html>