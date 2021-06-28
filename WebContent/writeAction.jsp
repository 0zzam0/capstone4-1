<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "User.User_infoDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

 
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
	String userID = (String)session.getAttribute("ID");
		if(userID == null){
		PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인이 필요한 서비스입니다.')");
			script.println("</script>");
			response.sendRedirect("Login.jsp");


		}else{
			response.sendRedirect("postWrite.jsp");
		}
		%>
</body>
</html>