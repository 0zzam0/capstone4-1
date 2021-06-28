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
		String userID = null;
		if(session.getAttribute("ID") != null){
			userID = (String)session.getAttribute("ID");
		}
		if(userID != null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 로그인 상태입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		User_infoDAO userDAO = new User_infoDAO();
		int result = userDAO.login(User.getID(), User.getPASSWARD());
		if(result == 1){
			session.setAttribute("ID", User.getID());
			response.sendRedirect("hot.jsp");
		}else if(result ==0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다.')");
			script.println("history.back()");
			script.println("</script>");
		}else if(result ==-1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else if(result ==-2){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('db 연결 오류')");
			script.println("history.back()");
			script.println("</script>");
		}
		
		
		
	%>
</body>
</html>