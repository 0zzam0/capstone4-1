<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "Post.postDAO" %>
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
		String word= null;
		if(request.getParameter("search") != null){
			word = (String)request.getParameter("search");
		}
		System.out.println(word);
		postDAO post = new postDAO();
		post.getSearchList(word);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href= 'inquiry.jsp'");
		script.println("</script>");
		
	%>
</body>
</html>