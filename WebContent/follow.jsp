<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTPYE html>
<html>
	<head>
		<meta chatset="UTF=8">
		<meta name="viewport" content="width=device-width", initial-scale="1">
		<title> 팔로우</title>
		        <script src ="https:code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src ="resource/js/bootstrap.js"></script>
		
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
		<link rel = "stylesheet" href="resource/css/bootstrap.css">
		<link rel = "stylesheet" href="resource/css/main.css">
		<link rel = "stylesheet" href="resource/css/jquery-ui.css">
		<link rel = "stylesheet" href="resource/js/bootstrap.js">
        <link rel = "stylesheet" href="resource/css/post.css">   
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
					<a class = "navbar-brand" href = "//main.html#">TID</a>
				</div>

				<div class = "collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class = "nav navbar-nav">
						<li><a href="#">Profile</a></li>
						<li class = "dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
								aria-hapopyp="true" aria-expanded="false">Hot<span class="caret"></span></a>
							<ul class = "dropdown-menu">
								<li><a = href="//hot.html#">인기글</a></li>
								<li><a = href="//new.html#">최신글</a></li>
							</ul>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="//Login2.html#">Login</a></li>
					</ul>
					<form class="navbar-form navbar-right">
						<form action="" class="search-form">
                            <div class="form-group has-feedback">
                        		<label for="search" class="sr-only">Search</label>
                        		<input type="text" class="form-control" name="search" id="search" placeholder="search">
                          		<span class="glyphicon glyphicon-search form-control-feedback"style="color: #000000"></span>
                        	</div>
                		</form>
                    </form>
				</div>
			</div>
		</nav>
        
        <br><br>
        <br><br>
        <p style="font-size: 100px; text-align: center; font-family:Dancing Script"> Follw</p>

<!--개시글 시작-->
        <div class="col-12 col-sm-12 col-md-6 post2" style="width: 100% height: 100%; border-radius:15px">
            <br>
            <div class="panel panel-default panel-google-plus" style="border-radius: 10px; ">
                <div class="panel-body" style="text-indent : 3%;">
                    <div class="panel-heading">
                        <img class="img-circle pull-left" src="resource/images/2.jpg"style="width: 150px;height: 150px;">
                        <h4 >이름 <button style="height: 3%; font-size: 15px"> 구독 해제 </button></h4>
                    </div>
                    <div style="text-indent : 3%;">
                        <p><i class="glyphicon glyphicon-map-marker"> </i> 거주지, 부산</p>
                        <p><i class="glyphicon glyphicon-envelope"></i> email@naver.com</p>
                        <p><i class="glyphicon glyphicon-gift"></i> 07, 25, 1996</p>
                        <p><a><i class="glyphicon glyphicon-heart"></i> 팔로워 826 </a></p>
                    </div> 
                </div>
            </div>
        </div>
        <div class="col-12 col-sm-12 col-md-6 post2" style="width: 100% height: 100%; border-radius:15px">
            <div class="panel panel-default panel-google-plus" style="border-radius: 10px; ">
                <div class="panel-body" style="text-indent : 3%;">
                    <div class="panel-heading">
                        <br>
                        <img class="img-circle pull-left" src="resource/images/2.jpg"style="width: 150px;height: 150px;">
                        <h4 >이름 <button style="height: 3%; font-size: 15px"> 구독 해제 </button></h4>
                    </div>
                    <div style="text-indent : 3%;">
                        <p><i class="glyphicon glyphicon-map-marker"> </i> 거주지, 부산</p>
                        <p><i class="glyphicon glyphicon-envelope"></i> email@naver.com</p>
                        <p><i class="glyphicon glyphicon-gift"></i> 07, 25, 1996</p>
                        <p><a><i class="glyphicon glyphicon-heart"></i> 팔로워 826 </a></p>
                    </div> 
                </div>
            </div>
        </div>
        <div class="col-12 col-sm-12 col-md-6 post2" style="width: 100% height: 100%; border-radius:15px">
            <div class="panel panel-default panel-google-plus" style="border-radius: 10px; ">
                <div class="panel-body" style="text-indent : 3%;">
                    <div class="panel-heading">
                        <br>
                        <img class="img-circle pull-left" src="resource/images/2.jpg"style="width: 150px;height: 150px;">
                        <h4 >이름 <button style="height: 3%; font-size: 15px"> 구독 해제 </button></h4>
                    </div>
                    <div style="text-indent : 3%;">
                        <p><i class="glyphicon glyphicon-map-marker"> </i> 거주지, 부산</p>
                        <p><i class="glyphicon glyphicon-envelope"></i> email@naver.com</p>
                        <p><i class="glyphicon glyphicon-gift"></i> 07, 25, 1996</p>
                        <p><a><i class="glyphicon glyphicon-heart"></i> 팔로워 826 </a></p>
                    </div> 
                </div>
            </div>
        </div>

<!--게시글 종료-->

<!-- 메뉴 시작-->
        <div class="col-12 col-sm-12 col-md-12 post3"data-spy="affix">
            <div class="col-6 col-sm-4 col-md-4" >
                <a data-target="#modal1" data-toggle="modal">
                    <img src="images/post.PNG" style="width: 55px;height: 55px;  border-radius: 10px;">
                </a>
            </div>
            <div class="col-6 col-sm-4 col-md-4" style="">
                <a data-target="#modal4" data-toggle="modal">
                    <img src="resource/images/user.png" style=" width: 55px;height: 55px; left: : 5%; border-radius: 10px;">
                </a>
            </div>
        </div>
<!-- 메뉴 종료-->

<!--게시글 작성 모달 -->
        <div calss="row">
            <div class="modal" id="modal1" tabindex="-1">
                <div class="modal-dialog"style="background-color: #ffffff;  border-radius: 10px;">
                    <div calss="modal-content">
                        <div class="modal-header"style="text-align: center;">
                            게시글 작성
                            <button class = "close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class ="modal-body" style="text-align: center;">
                                https://freehoon.tistory.com/104<<
                        </div>
                        <div style="text-align: center;">
                            <button>
                                저장하기
                            </button>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
        </div>
<!-- 게시글 작성 모달 종료-->

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
<!--댓글 내용 시작-->
                             <div class="row">
                                <div class="col-sm-4 col-md-12">
<!--댓글 양식-->
                                    <div class="col-sm-1 col-md-3">
                                        <div class="thumbnail">
                                            <img class="img-responsive user-photo" src="resource/images/2.jpg">
                                        </div>
                                    </div>
                                    <div class="col-sm-3 col-md-9">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <strong>사용자 이름</strong> 
                                                <span class="text-muted">작성일(시간)</span>
                                            </div>
                                            <div class="panel-body">
                                                댓글 내용
                                            </div>
                                        </div>
                                    </div>
<!--댓글 양식 종료-->
<!--댓글 내용 종료-->
                            <div class="widget-area no-padding blank">
                                <div class="status-upload">
                                    <form>
                                        <textarea placeholder="댓글을 입력하세요." ></textarea>
                                        <button type="submit" class="btn btn-success green"><i class="fa fa-share"></i> Share</button>
                                    </form>
                                </div>
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
                <div class="modal-dialog"style="background-color: #ffffff;  border-radius: 10px;">
                    <div calss="modal-content">
                        <div class="modal-header"style="text-align: center;">
                            게시글 수정
                            <button class = "close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class ="modal-body" style="text-align: center;">
                            게시글 내용
                        </div>
                        <div style="text-align: center;">
                            <button> 수정 </button>
                            <button style="margin-left: 3%"> 삭제 </button>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
        </div>
<!-- 게시글 수정 모달 종료-->

	</body>
</html>