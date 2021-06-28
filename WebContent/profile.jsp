<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import = "java.io.PrintWriter" %>
   <%@ page import = "User.User_infoDAO" %>
    <%@ page import = "User.User_info" %>
   <%@ page import = "Post.postDAO" %>
   <%@ page import = "Post.post" %>
      <%@ page import = "Tag.TagDAO" %>
   <%@ page import = "Tag.Tag" %>
   
   <%@ page import = "java.util.ArrayList" %>
   <% request.setCharacterEncoding("UTF-8"); %>
   
<!DOCTPYE html>
<html>
	<head>
		<meta chatset="UTF=8">
		<meta name="viewport" content="width=device-width", initial-scale="1">
		<title>프로필</title>
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
		<link rel = "stylesheet" href="resource/css/bootstrap.css">
		<link rel = "stylesheet" href="resource/css/main.css">
		<link rel = "stylesheet" href="resource/css/jquery-ui.css">
		<link rel = "stylesheet" href="resource/js/bootstrap.js">
        <link rel = "stylesheet" href="resource/css/post.css">
        <link rel = "stylesheet" href="resource/css/profile.css">
           
	</head>
	<body>
	<%
		String userID = null;
		if(session.getAttribute("ID") != null){
			userID = (String)session.getAttribute("ID");
		}
	%>
	<%
		if(userID == null){
			response.sendRedirect("Login.jsp");
		}else{
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
								<li><a href="hot.jsp#">최신글</a></li>
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
					

					<form class="navbar-form navbar-right" action="inquiry.jsp" class="search-form">
                            <div class="form-group has-feedback">
                        		<label for="search" class="sr-only">Search</label>
                        		<input type="text" class="form-control" name="search" id="search" placeholder="search">
                          		<span class="glyphicon glyphicon-search form-control-feedback"style="color: #000000"></span>
                        	</div>

                    </form>
				</div>
			</div>
		</nav>

			<div class="col-12 col-sm-12 col-md-6 post2" style="width: 100% height: 100%; border-radius:15px">
	            <br><br>
                 <p style="font-family: 'Dancing Script'; font-size: 80px; text-align:center;"> Profile</p>
        

<!--프로필-->
<%
             System.out.println("프로필 아이디 세션:" +userID);

              User_infoDAO user = new User_infoDAO();
              User_info u = user.getProfile(userID);
        %>

<!--1번 글-->
	            <div class="panel panel-default panel-google-plus" style="border-radius: 10px; ">
	                <div class="panel-body" style="text-indent : 3%;">
	                    <div class="panel-heading">
	                    	<br>
	                        <img class="img-circle pull-left" src="resource/images/null.png"style="width: 150px;height: 150px;">
					 		<h4 >
					 			<%= u.getID() %> 
					 			<button style="height: 3%; font-size: 15px"> 수정하기 </button>
					 		 </h4>
	                   	</div>
	                   	<div style="text-indent : 3%;">
			                <p><i class="glyphicon glyphicon-envelope"></i> <%= u.getMail() %></p>
			                <p><i class="glyphicon glyphicon-gift"></i> <%= u.getBirth() %></p>
			                <p><a><i class="glyphicon glyphicon-heart"></i> 팔로잉 <%= u.getFollowing() %> </a></p>
			                <p><a><i class="glyphicon glyphicon-heart"></i> 팔로워 <%= u.getFollow() %> </a></p>
			            </div> 
	                </div>
	            </div>
	        </div>

<!--내가 쓴 글-->
			<%
              postDAO post = new postDAO();
              ArrayList<post> list2 = post.getMyList(userID);
              for(int i=0; i<list2.size(); i++){
            %>
			<div class="col-12 col-sm-12 col-md-6 post2" style="width: 100% height: 100%; border-radius:15px">
				<p style="font-size: 20px;">게시글</p>
<!--1번 글-->
			
	            <div class="panel panel-default panel-google-plus" style="border-radius: 10px; ">
	                <div class="panel-body">
	                	<br>
	                	<% 
                       
                       String userId = (String)session.getAttribute("ID");
						if(list2.get(i).getID().equals(userId)){
                    	   %>
                        <div class="btn-group show-on-hover " style="float: right; right:10%;" >
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" >
                                <i data-target="#modal3" data-toggle="modal" class="glyphicon glyphicon-pencil"></i>
                            </button>
                        </div>
                        <%} 
                        %>
                        <div class="btn-group show-on-hover " style="float: right; right:1%;">
                        <a href="likeAction3.jsp?postId=<%= list2.get(i).getPostId() %>">
                             <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"> 
                                <i class="glyphicon glyphicon-thumbs-up"></i>
                            </button>
                         </a>
                        </div>

	                    <p style="font-size: 25px;text-indent : 2%;">
                       		<%=list2.get(i).getTitle() %>
                    	</p> 
	                    <p class="col-12 col-sm-12" style="font-size: 10px;text-indent : 2%;">
                        	작성일 : <%=list2.get(i).getDate() %> | 좋아요
                        <i class="glyphicon glyphicon-thumbs-up"></i>
                        	<%=list2.get(i).getCount_like() %>
                    	</p>
                		<hr style="margin: 0.5em"class=" col-11 col-sm-11">
	                    <p class="col-12 col-sm-12">
	                    	<%=list2.get(i).getContents() %>
	                    </p>
                    	<p class="col-12 col-sm-12">
                        	<br><br>
                        	 <%
                        	TagDAO tagDAO = new TagDAO();
                        	ArrayList<Tag> tag = new ArrayList<Tag>();
                        	tag = tagDAO.getTagList(list2.get(i).getPostId());
                        	for(int j=0; j<tag.size(); j++){
							%>
                        <a href="inquiry.jsp?search=<%=tag.get(j).getHashtag()%>">#<%= tag.get(j).getHashtag() %></a>
                        <%
                        	}
                        %>
                   		</p>
                		<hr style="margin: 0.5em"class=" col-11 col-sm-11">
                    	<div class="panel-heading col-12 col-sm-12" style=" text-indent : 2%;">
                        	<img class="img-circle pull-left" src="resource/images/null.png"style="width: 55px;height: 55px"> 
                            <p class=" dropdown-toggle" data-toggle="dropdown" style="font-size: 15px; color: black;">
                                <%= list2.get(i).getID() %>
                            </p>                       
                        	<p class="postprofile"> 
                            	<i class="glyphicon glyphicon-user" style="color: "></i> 구독자 : <%=post.getFollow(list2.get(i).getID()) %>
                        	</p>
                    	</div>
                		<hr style="margin: 0.5em"class=" col-11 col-sm-11">
                    	<div class=" col-12 col-sm-12">
                            <a data-target="#modal2" data-toggle="modal" style="font-size: 15px;"> 댓글 0개</a>
                    	</div>
                    	
                	</div>
                </div>
               	
	        </div>
	        <%
              }
      		 %>
<!--프로필 변경-->
<!-- 메뉴 시작-->
        <div class="col-12 col-sm-12 col-md-12 post3"data-spy="affix">
        	<div class="col-6 col-sm-4 col-md-4" >
				<a href="writeAction.jsp#" >

                    <img src="resource/images/post.png" style="width: 55px;height: 55px;  border-radius: 10px;">
                </a>
            </div>
	        
        </div>
<!-- 메뉴 종료-->


<!--댓글 모달 -->
        <div calss="row">
            <div class="modal" id="modal2" tabindex="-1">
                <div class="modal-dialog"style="background-color: #ffffff;  border-radius: 10px;">
                    <div calss="modal-content">
                        <div class="modal-header"style="text-align: center;">
                            댓글
                            <button class = "close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class ="modal-body" style="text-align: center;">
    <!--댓글-->
                            <div class="media">
                                <div class="media-left">
                                    <img src="resource/images/null.png" class="media-object" style="width:40px">
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading title">닉네임</h4>
                                    <p class="comments">
                                        댓글 내용<br>
                                    </p>                               
                            </div>
                            <hr style="margin: 0.5em"class=" col-12 col-sm-12">
    <!--댓글 입력창-->
                            <div class="widget-area no-padding blank">
                                <div class="status-upload">
                                    <form>
                                        <textarea placeholder="댓글을 입력하세요." ></textarea>
                                        <button type="#" class="btn btn-success" style="text-align: center;">저장하기</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!-- 댓글 모달 종료-->
    <!--게시글 수정 모달 -->
        <div calss="row">
            <div class="modal" id="modal3" tabindex="-1">
                <div class="modal-dialog"style="background-color: #ffffff;  border-radius: 20px;">
                    <div calss="modal-content">
                        <div class="modal-header"style="text-align: center;">
                            글 수정
                            <button class = "close" data-dismiss="modal">&times;</button>
                                 <form role = "form" method = "post" action = "updateAction.jsp" style="text-align: left;font-size: 20px">
                    <div class="modal-body">
                    <div class="form-group">
                        <label for="inputName">NAME</label>
                        <input type="text" class="form-control" name="name" placeholder="이름을 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="InputEmail">e-mail</label>
                        <input type="email" class="form-control" name="mail" placeholder="이메일 주소를 입력해주세요">

					</div>
          
					<div class=:modal-footer">
      					<div style="text-align: center;">
                            <button type="submit" id="update" class = "btn btn-primary from-contral"> 수정 </button>
                            <button type="submit" id="update" class = "btn btn-primary from-contral"style="margin-left: 3%"> 삭제 </button>
                        </div>
                    </div>
                    </div>
                </form>
                        
                        <br>
                    </div>
                </div>
            </div>
        </div>
<!-- 게시글 수정 모달 종료-->

		<script src ="https:code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src ="js/bootstrap.js"></script>
		 <%
			}
		 %>
	</body>
</html>