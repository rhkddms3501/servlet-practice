<%@page import="jstlel.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	UserVo vo0 = new UserVo();
	vo0.setNo(0L);
	vo0.setName("짱구_0");
	pageContext.setAttribute("vo", vo0);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>scope(객체의 존속 범위)</h4>
	
	
	======================= <br>
	${vo.no } <br>
	${vo.name } <br><br>
	
	[requestScope]======================= <br>
	${requestScope.vo.no } <br>
	${requestScope.vo.name } <br><br>
	
	[sessionScope]======================= <br>
	${sessionScope.vo.no } <br>
	${sessionScope.vo.name } <br><br>
	
	[applicationScope]======================= <br>
	${applicationScope.vo.no } <br>
	${applicationScope.vo.name } <br><br>
</body>
</html>