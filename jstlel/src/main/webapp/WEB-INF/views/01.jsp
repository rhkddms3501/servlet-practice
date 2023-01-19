<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>값 출력</h4>
	${iVal }<br>
	${lVal }<br>
	${fVal }<br>
	${bVal }<br>
	${sVal }<br>
	
	<h4>객체 출력</h4>
	--${obj }--<br>
	${userVo.no }<br>
	${userVo.name }<br>
	
	<h4>맵 출력</h4>
	${m.iVal }<br>
	${m.fVal }<br>
	${m.sVal }<br>
	
	<h4>산술연산</h4>
	${(1 + 2) * 100 / 10 }<br>
	${iVal + 10 }<br>
	
	<h4>관계연산</h4>
	${iVal == 10 }<br>
	${iVal > 100 }<br>
	${obj == null }<br> <!-- 1.이건 사용하지말자 -->
	${empty obj }<br> <!-- 1.이걸 사용하자 -->
	${not empty obj }<br> 
	
	<h4>논리연산</h4>
	${iVal == 10 && lVal > 1000 }<br>
	${iVal == 10 || lVal > 1000 }<br>
	
	<h4>요청 파라미터</h4>
	--${param.a }-- <br> <!-- http://localhost:8080/jstlel/01?a=10 -->
	--${param.a + 10 }--<br>
	--${param.email }--<br>
	
	<h4>Context Path</h4>
	${pageContext.request.contextPath }<br>
	
	
</body>
</html>