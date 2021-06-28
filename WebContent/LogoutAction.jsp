<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "User.User_infoDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="User" class="User.User_info" scope ="page"/>
<jsp:setProperty name="User" property="ID"/>
<jsp:setProperty name="User" property="PASSWARD"/>
 
<!DOCTYPE html>
<html>
<head>

		<meta chatset="UTF=8">
		<meta name="viewport" content="width=device-width", initial-scale="1">
		<title> 로그인</title>


				
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Poiret+One&display=swap" rel="stylesheet">
		
		<link rel = "stylesheet" href="resource/css/bootstrap.css">
		<link rel = "stylesheet" href="resource/css/main.css">
		<link rel = "stylesheet" href="resource/css/Login.css">
		<link rel = "stylesheet" href="resource/css/jquery-ui.css">
		


</head>
<body>
	<%
		session.setAttribute("ID", null);
		session.invalidate();
		response.sendRedirect("hot.jsp");

	%>

</body>
</html>