<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.Board3DAO, com.example.bean.Board3VO"%>
<%
	String sid = request.getParameter("id");
	if (sid != ""){  
		int id = Integer.parseInt(sid);
		Board3VO u = new Board3VO();
		u.setSeq(id);
		Board3DAO boardDAO = new Board3DAO();
		boardDAO.deleteBoard3(u);
	}
	response.sendRedirect("posts.jsp");
%>