<%@page import="com.douzone.guestbook01.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook01.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	Long no = Long.parseLong(request.getParameter("no"));
	String password = request.getParameter("password");
	
	new GuestbookDao().deleteByNo(no, password);
	
	
	/* response.sendRedirect("/guestbook01/index.jsp"); */	
	response.sendRedirect(request.getContextPath() + "/index.jsp");
%>
