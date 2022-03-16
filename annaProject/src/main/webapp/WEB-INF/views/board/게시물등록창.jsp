<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
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
<title>게시물 등록</title>
</head>
<body>
<%@ include file="../nav/header.jsp" %>
<%@ include file="../nav/contents.jsp" %>

<!-- form 시작 -->
<form action="/board" method="post">
	<div class="content">
	<p class="text-center"></p>
	<div class="input-group mb-3">
  		<span class="input-group-text" id="basic-addon1">제목</span>
  		<input type="text" class="form-control" name="title" id="title">
	</div>
		
	<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon1">내용</span>
		<textarea class="form-control" name="contents" id="exampleFormControlTextarea1" rows="10"></textarea>
	</div>
	<div class="center">
		<button type="submit" class="btn btn-outline-secondary">등록</button>
		<button type="button" class="btn btn-outline-secondary"
			id="button-addon2" onclick="location.href='/home'">취소</button>
	</div>
	</div>
</form>
<!-- form 끝 -->

<%@ include file="../nav/footer.jsp" %>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous">
		
	</script>

</body>
</html>