<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
   <%@ page import = "java.io.PrintWriter" %>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTPYE html>
<html>
	<head>

		<meta chatset="UTF=8">
		<meta name="viewport" content="width=device-width", initial-scale="1">
		<title> 인기 게시물</title>
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
		<link rel = "stylesheet" href="resource/css/bootstrap.css">
		<link rel = "stylesheet" href="resource/css/main.css">
		<link rel = "stylesheet" href="resource/css/jquery-ui.css">
		<link rel = "stylesheet" href="resource/js/bootstrap.js">
        <link rel = "stylesheet" href="resource/css/post.css">


   
	</head>
	<body>
	<!--세션 체크 -->
	<%
		String userID = null;
		if(session.getAttribute("ID") != null){
			userID = (String)session.getAttribute("ID");
		}
	%>
	
		<nav class="navbar navbar-default"style="height: 5%; width:100%;background-color: white" data-spy="affix">
            <div class="container-fluid" style="background-color: white">
				<div class="navbar-header" style="background-color: white">
					<button type="button" class="nav navbar-toggle collaps" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1"aria-expanded="false">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
					</button>
					<a class = "navbar-brand" href = "hot.jsp#">TID</a>
				</div>

				<div class = "collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class = "nav navbar-nav">
						<li><a href="profile.jsp#">Profile</a></li>
						<li class = "dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
								aria-hapopyp="true" aria-expanded="false">Hot<span class="caret"></span></a>
							<ul class = "dropdown-menu">
								<li><a href="hot.jsp#">인기글</a></li>
								<li><a href="post.jsp#">최신글</a></li>
							</ul>
						</li>
					</ul>
					<%
						if(userID == null){
					%>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="Login.jsp#">Login</a></li>
					</ul>
					<%
						}else{
					%>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="LogoutAction.jsp#">Logout</a></li>
					</ul>
					<%		
						}
					%>
					
					<ul class="nav navbar-nav navbar-right">
						<li><a href=href="#" onClick="history.back()">목룍</a></li>
					</ul>
				</div>
			</div>
		</nav>
        
        <br><br>
        <br><br>
        <p style="font-size: 100px; text-align: center; font-family:Dancing Script">write</p>
        
        <!--  보드 부분-->
	<article>

		<div class="container" role="main">

			<form name="form" id="form" role="form" method="post" action="postAction.jsp">
			<div class="form-group">

				<label for="title">TID</label>

					<input type="text" class="form-control" name="title" id="title" placeholder="Today I ... ">

				</div>

				

				<div class="form-group">

					<label for="content">내용</label>

					<textarea class="form-control" rows="10" name="contents" id="content" placeholder="내용을 입력해 주세요" ></textarea>

				</div>

				

				<div class="form-group">

					<label for="tag">해시태그</label>

					<input type="text" class="form-control" name="hashtag" placeholder="태그를 입력해 주세요 ex) #헬스#공부">

				</div>

			

			

			<div style="text-align: center;">

				<button type="submit" class="btn btn-primary form-control" id="btnSave">저장</button>


			</div>
			</form>
		</div>

	</article>



</body>
</html>