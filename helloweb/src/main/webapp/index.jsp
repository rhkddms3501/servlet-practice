<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%for(int i = 0; i<5; i++){ %>
	<h1>Hello index.jsp</h1>
	<%} %>
	
	<a href="/helloweb/hello?id=shin">인사하기</a>	
</body>
</html>