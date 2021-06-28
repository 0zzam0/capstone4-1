<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "User.User_infoDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="User" class="User.User_info" scope ="page"/>
<jsp:setProperty name="User" property="ID"/>
<jsp:setProperty name="User" property="PASSWARD"/>
<jsp:setProperty name="User" property="name"/>
<jsp:setProperty name="User" property="birth"/>
<jsp:setProperty name="User" property="mail"/>

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
		System.out.println("아이디" + User.getID() + "비밀번호" + User.getPASSWARD() + "이름 " + User.getName() + "메일 " + User.getMail() + "생일" + User.getBirth());
		if(User.getID() == null || User.getPASSWARD() == null || User.getName() == null || User.getMail() == null || User.getBirth() == null ){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력하지 않은 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			User_infoDAO userDAO = new User_infoDAO();
			int result = userDAO.join(User);
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디 입니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('회원가입이 완료되었습니다.')");
				script.println("location.href = 'Login.jsp'");
				script.println("</script>");
			}
		}

		
		
		
	%>
</body>
</html>