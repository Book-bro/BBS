<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 부트스트랩은 컴퓨터, 핸드폰 등 해상도에 맞게 알아서 조절해 주는 템플릿임, 따라서 반응형 웹(크기가 자동적으로 재조정)에 사용되는 meta태그를 넣어줌 -->
<meta name="viewport" content="width=device-width", initial-scale="1">
<!-- stylesheet 참조, bootstrap과 링크 -->
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<!-- nav : 하나의 웹사이트에 전반적인 구성을 보여주는것 -->
	<nav class="navbar navbar-default">
		<!-- header는 홈페이지 로고를 담는 영역 -->
		<div class="navbar-header">
			<!-- data-toggle="collapse" : 버튼클릭시 접었다 펴기 기능
				 data-target : 원하는 태그 컨트롤 
		 		 aria-expanded="false" : 웹 페이지 사이즈가 줄었을때 보여줌 
	 		-->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<!-- class="icon-bar" : 버튼에 있는 줄 -->
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<!-- brand : 로고 -->
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<!-- ul : 리스트를 보여줄때 사용 -->
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<!-- 오른쪽에 리스트 넣어줌 -->
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a> <!-- class="caret" : 아이콘 -->
					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp">로그인</a></li> <!-- class="active" : 현재 선택됨(하나만 가능) -->
						<li><a href="join.jsp">회원가입</a></li> 
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="col-lg-4"></div>
		<!-- 로그인 양식 -->
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<!-- loginAction.jsp으로 정보 보내기 -->
				<form method="post" action="loginAction.jsp">
					<h3 style="text-align: center;">로그인 화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="로그인">
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>