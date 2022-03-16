<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<% 
       boolean nowLogin = false;
       HttpSession session = request.getSession(false);
       if(session!=null && session.getAttribute("id")!=null){
    	   nowLogin = true;
       }
%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- header 시작 -->
	<header>
		<div class="collapse bg-dark" id="navbarHeader">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-md-7 py-4F">
						<h4 class="text-white">About</h4>
						<p class="text-muted">
							메섭이네🐕🐶❤️평범한 날들을 기록📝<br> 🐕섭이(남)2011.09.10 포메인줄 알았는데 폼피츠<br>
							🐶메이(여)2013.07.20 다리가 긴 웰시코기
						</p>
					</div>
					<div class="col-sm-4 offset-md-1 py-4">
						<h4 class="text-white">Contact</h4>
						<ul class="list-unstyled">
							<li><a href="https://twitter.com/?lang=ko" target="_blank"
								class="text-white">Twitter</a></li>
							<li><a href="https://www.instagram.com/mymeseob/"
								target="_blank" class="text-white">Instagram</a></li>
							<li><a href="mailto:mymeseob@gmail.com" target="_blank"
								class="text-white">Email me</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		
		<div class="navbar navbar-dark bg-dark shadow-sm">
			<div class="container">
				<a href="#" onclick="location.href='/home'"
					class="navbar-brand d-flex align-items-center"><strong>mymeseob</strong></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarHeader"
					aria-controls="navbarHeader" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
					<% if (nowLogin) { %>
					<li><a href="#" onclick="location.href='/home'" class="nav-link px-2 text-white">홈</a></li>
					<li><a href="#" onclick="location.href='/album'" class="nav-link px-2 text-white">앨범</a></li>
					<li><a href="#" onclick="location.href='/boards'" class="nav-link px-2 text-white">일상기록</a></li>
					<li><a href="#" onclick="location.href='/boards'" class="nav-link px-2 text-white">방명록</a></li>
					<li><a href="#" onclick="location.href='/board'"class="nav-link px-2 text-white">글쓰기</a></li>
					<li><a href="#" class="nav-link px-2 text-white">메섭이샵</a></li>
					<li><a href="#" class="nav-link px-2 text-white">유기동물 후원하기</a></li>
					<li><a href="#" onclick="location.href='/pictureInfo'" class="nav-link px-2 text-white">그림정보등록</a></li>
					<% } else { %>
					<li><a href="#" onclick="location.href='/home'" class="nav-link px-2 text-white">홈</a></li>
					<li><a href="#" onclick="location.href='/boards'" class="nav-link px-2 text-white">방명록</a></li>
					<li><a href="#" class="nav-link px-2 text-white">메섭이샵</a></li>
					<li><a href="#" class="nav-link px-2 text-white">유기동물 후원하기</a></li>
					<% } %>
				</ul>

				<form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
					<input type="search" class="form-control form-control-dark" placeholder="검색" aria-label="Search">
				</form>
				
				<div class="text-end">
					<% if (nowLogin) { %>
					<button type="button" onclick="window.open('mypage')" class="btn btn-outline-light me-2">내정보</button>
					<button type="button" onclick="location.href='/logout'" class="btn btn-outline-light me-2">로그아웃</button>
					<% } else { %>
					<button type="button" onclick="location.href='/login'" class="btn btn-outline-light me-2">로그인</button>
					<button type="button" onclick="location.href='/member'" class="btn btn-warning">회원가입</button>
					<% } %>
				</div>
			</div>
		</div>
	</header>
<!-- header 끝 -->

</body>
</html>