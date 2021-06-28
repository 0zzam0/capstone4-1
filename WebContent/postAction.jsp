<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Post.postDAO" %>
<%@ page import = "Tag.TagDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>


<jsp:useBean id="Post" class="Post.post" scope ="page"/>
<jsp:setProperty name="Post" property="title"/>
<jsp:setProperty name="Post" property="contents"/>

<jsp:useBean id="Tag" class="Tag.Tag" scope ="page"/>
<jsp:setProperty name="Tag" property="hashtag"/>



 
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
		response.setContentType("text/html; charset=utf-8");
		postDAO postDAO = new postDAO();
		TagDAO tagDAO = new TagDAO();
	
		String ID = (String)session.getAttribute("ID");
		int result1 = postDAO.postSave(Post,ID);
		int result2 = tagDAO.tagSave(Tag,result1);
		if(result1 == -1 || result2 == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('db 연결 오류')");
			script.println("history.back()");
			script.println("</script>");
		}
		else{
		
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('저장되었습니다.')");
			script.println("</script>");
			response.sendRedirect("post.jsp");	
		}

		
	%>
</body>
</html>