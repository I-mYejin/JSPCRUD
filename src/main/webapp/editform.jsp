<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.example.dao.Board3DAO, com.example.bean.Board3VO"%>
<!DOCTYPE html>
<html>
<head>
<meta char set="UTF-8">
<title>Edit Form</title>
</head>
<body>

<%
	Board3DAO board3DAO = new Board3DAO();
	String id=request.getParameter("id");	
	Board3VO u=board3DAO.getBoard3(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="editpost.jsp" method="post">
<input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
<table>
<tr><td>Category:</td><td><input type="text" name="category" value="<%= u.getCategory()%>"/></td></tr>
<tr><td>Title:</td><td><input type="text" name="title" value="<%= u.getTitle()%>"/></td></tr>
<tr><td>Writer:</td><td><input type="text" name="writer" value="<%= u.getWriter()%>" /></td></tr>
<tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"><%= u.getContent()%></textarea></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>