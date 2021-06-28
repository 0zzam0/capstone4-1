<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
						<li><a href="#">Profile</a></li>
						<li class = "dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
								aria-hapopyp="true" aria-expanded="false">Hot<span class="caret"></span></a>
							<ul class = "dropdown-menu">
								<li><a href="hot.jsp#">인기글</a></li>
								<li><a href="post.jsp#">최신글</a></li>
							</ul>
						</li>
					</ul>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="Login.jsp#">Login</a></li>
					</ul>



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

		<div class="content">
			<div style="color: #000000; height: 80%">
				<form action="LoginAction.jsp" method="post" class="loginForm">
				    <h2>Login</h2>
				    <div class="idForm">
				    	<input type="text" class="form-control" name = "ID" placeholder="ID">
				    </div>
				    <div class="passForm">
				        <input type="password" class="form-control" name = "PASSWARD" placeholder="PW">
				      </div>
				      <button type="submit" class="btn btn-primary form-control" >
				      LOG IN
				      </button>
				   		<script>
				      	let button => { alert('login Button !')}
				    	</script>
				    <div class="bottomText" style = "font-size: 15px; font-weight: bold";>
				    		<a data-toggle="modal" href="#modal" >회원가입</a>  |  
				    		<a data-toggle="modal" href="#modal2" >ID / PW 찾기</a>
				    </div>
				</form>	
			</div>
		</div>
		

		<div calss="row">

			<div class="modal" id="modal" tabindex="-1">
				<div class="modal-dialog"style="background-color: #ffffff;  border-radius: 10px;">
					<div calss="modal-content">
						<div class="modal-header" style="text-align: center; font-size: 30px">
							
							<button type ="button" class = "close" data-dismiss="modal" >
							&times;</button>

							
			                <form role = "form" method = "post" action = "joinAction.jsp" style="text-align: left;font-size: 20px">
                    <div class="modal-body">
                    <div class="form-group">
                        <label for="inputName">NAME</label>
                        <input type="text" class="form-control" name="name" placeholder="이름을 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="InputEmail">e-mail</label>
                        <input type="email" class="form-control" name="mail" placeholder="이메일 주소를 입력해주세요">
                    </div>
                    <div class="form-group">
                        <label for="inputName">ID</label>
                        <input type="text" class="form-control" name="ID" placeholder="아이디를 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="inputPassword">PASSWARD</label>
                        <input type="password" class="form-control" name="PASSWARD" placeholder="비밀번호를 입력해주세요">
                    </div>

                    <div class="form-group">
                        <label for="inputBirth">BIRTHDAY</label>
                        <input type="text" class="form-control" name="birth" placeholder="생년월일를 입력해 주세요">
                    </div>
					</div>
          
					<div class=:modal-footer">
                    <div style="text-align: center;">

                        <button type="submit" id="join-submit" class = "btn btn-primary form-control">
                            회원가입<i class="fa fa-check spaceLeft"></i>
                        </button>
                        <button type="submit">
                            가입취소<i class="fa fa-times spaceLeft"></i>
                        </button>
      
                    </div>
                    </div>
                </form>
               
            </div>
             
						</div>
					</div>
				</div>
			</div>
		</div>		
		<div calss="row">
			<div class="modal" id="modal2" tabindex="-1">
				<div class="modal-dialog"style="background-color: #ffffff;  border-radius: 10px;">
					<div calss="modal-content">
						<div class="modal-header"style="text-align: center; font-size: 30px">
							ID/ PW 찾기
							<button class = "close" data-dismiss="modal">&times;</button>
						</div>
						<div class ="modal-body" style="text-align: center;">
							<form role="form"style="text-align: left;font-size: 20px">
								<p style="	text-indent : 3%;">아이디 찾기</p>
								<hr style="margin: 0.5em">
                    		<div class="form-group">
                        		<label >성명</label>
                        		<input type="text" class="form-control" id="inputName" placeholder="이름을 입력해 주세요">
                    		</div>
                    		<div class="form-group">
                        		<label for="InputEmail">이메일 주소</label>
                        		<input type="email" class="form-control" id="InputEmail" placeholder="이메일 주소를 입력해주세요">
                   	 		</div>
                    		<div style="text-align: center;">
                        		<button type="submit" id="join-submit">
                            		아이디 찾기<i class="fa fa-check spaceLeft"></i>
                        		</button>
                        	</div>
                        	<hr style="margin: 0.5em">
                        		<p style="	text-indent : 3%;">비밀번호 찾기</p>
                        	<hr style="margin: 0.5em">
                        	<div class="form-group">
                        		<label >아이디</label>
                        		<input type="text" class="form-control" id="inputName" placeholder="아이디를 입력해 주세요">
                    		</div>
                    		<div class="form-group">
                        		<label for="InputEmail">핸드폰 번호</label>
                        		<input type="email" class="form-control" id="#" placeholder="핸드폰 번호를 입력해주세요">
                   	 		</div>
                    		<div style="text-align: center;">
                        		<button type="submit" id="join-submit">
                            		비밀번호 찾기<i class="fa fa-check spaceLeft"></i>
                        		</button>
                        	</div>

					</div>
				</div>
			</div>
		</div>
		<script src ="https:code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src ="resource/js/bootstrap.js"></script>
</body>
</html>