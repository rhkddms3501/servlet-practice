<%@page import="java.util.List"%>
<%@page import="com.douzone.guestbook01.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook01.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	List<GuestbookVo> list = new GuestbookDao().findAll();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>

	<!-- 입력 -->
	<!-- <form action="/guestbook01/add.jsp" method="post"> -->
	<form action="<%=request.getContextPath() %>/add.jsp" method="post">
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE=" 등록 "></td>
		</tr>
	</table>
	</form>
	<br>
	<!-- 리스트 -->
	<%
		int count = list.size()-1;
		for(int i=count; i>= 0; i--){
		/* int i = 0;
		for(GuestbookVo vo : list){
			i++; */
	%>
	<table width=510 border=1>
		<tr>
			<td>[ <%=i + 1 %>]</td>
			<td><%=list.get(i).getName() %></td>
			<td><%=list.get(i).getRegDate() %></td>
 			<%-- <td><a href="/guestbook01/deleteform.jsp?no=<%=list.get(i).getNo() %>">삭제</a></td> --%>
 			<td><a href="<%=request.getContextPath() %>/deleteform.jsp?no=<%=list.get(i).getNo() %>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4><%=list.get(i).getMessage() %></td>
		</tr>
	</table>
	<br>
	<%
		}
	%>
	
</body>
</html>