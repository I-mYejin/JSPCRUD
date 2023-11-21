<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.Board3DAO"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.example.bean.Board3VO" />
<jsp:setProperty property="*" name="u"/>

<%
	Board3DAO board3DAO = new Board3DAO();
	int i=board3DAO.updateBoard3(u);
	response.sendRedirect("posts.jsp");
%>