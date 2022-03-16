<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="anna.project.member.common.Member"%>  
<% Member member =(Member)request.getAttribute("member");%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap core CSS -->
<link href="../resource/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<meta charset="UTF-8">
<style>
body {
	font-family: var(- -bs-body-font-family);
	font-size: var(- -bs-body-font-size);
	font-weight: var(- -bs-body-font-weight);
	line-height: var(- -bs-body-line-height);
	color: var(- -bs-body-color);
	text-align: var(- -bs-body-text-align);
	background-color: var(- -bs-body-bg);
	-webkit-text-size-adjust: 100%;
	-webkit-tap-highlight-color: transparent;
}

.center {text-align: center}
.content{padding: 0 500px}

</style>
<title>마이페이지</title>
</head>
<body>
<%@ include file="../nav/header.jsp" %>
<%@ include file="../nav/contents.jsp" %>

<!-- form 시작 -->
<form action="/mypage" method="post">
	<div class="content">
	<p class="text-center"></p>
		
		<input type="hidden" id="no" name="no" aria-label="First name" class="form-control" value="<%= member.getNo()%>">
		
		<div class="input-group mb-3">
  		<span class="input-group-text" id="basic-addon1">아이디</span>
  		<input type="text" class="form-control" name="id" id="id" value="<%= member.getId()%>">
  		</div>

		<div class="input-group mb-3">
  		<span class="input-group-text" id="basic-addon1">비밀번호</span>
  		<input type="password" class="form-control" name="password" id="password" value="<%= member.getPassword()%>"> 
  		</div>
  		
  		<div class="input-group mb-3">
  		<span class="input-group-text" id="basic-addon1">이름</span>
  		<input type="text" class="form-control" name="name" id="name" value="<%= member.getName()%>">
		</div>
		
		<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon1">이메일</span>
		<input type="text" class="form-control" name="email" id="email" value="<%= member.getEmail()%>">
		</div>
		
		<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon1">우편번호</span>
		<input type="text" class="form-control" name="post" id="post" value="<%= member.getPost()%>">
		</div>
		
		<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon1">주소</span>
		<input type="text" class="form-control" name="address" id="address" value="<%= member.getAddress()%>">
		</div>
		
		<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon1">상세주소</span>
		<input type="text" class="form-control" name="detailAddress" id="detailAddress" value="<%= member.getDetailAddress()%>">
		</div>
	</div>

</form>
<!-- form 끝 -->

<%@ include file="../nav/footer.jsp" %>

	<script src="../resource/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>