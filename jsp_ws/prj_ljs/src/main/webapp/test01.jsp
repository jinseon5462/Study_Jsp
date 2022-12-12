<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	p{
	
	}
	
	.demo1{
	
	}
	
	#demo{
	
	}
	
	
</style>
</head>
<body>
<input type="text" name="name">
<input type="button" value="실행" onclick="f()">


<p id="demo">버튼을 클릭하면 여기에 텍스트 박스의 값이 표시됩니다.</p>

<script>
	function f(){
		//1. 텍스트박스의 값을 가져온다.
		let name = document.querySelector("input[name='name']").value;
		//alert(name);
		
		//2. 아이디값이 demo인 요소에 가져온 값을 할당한다.
		let demo = document.getElementById("demo");
		demo.innerHTML = "<span style='color:red;'>" + name + "</span>";
	}
</script>

</body>
</html>