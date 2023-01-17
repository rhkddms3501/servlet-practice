<%@page import="com.douzone.guestbook02.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook02.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	Long no = Long.parseLong(request.getParameter("no"));
	String password = request.getParameter("password");
	
	new GuestbookDao().deleteByNo(no, password);
	
	response.sendRedirect("/guestbook01/index.jsp");	
%>
