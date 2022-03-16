<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="anna.project.board.common.Board"%>    
<% Board board = (Board)request.getAttribute("board");%>  
<% Boolean isWriter = (Boolean) request.getAttribute("isWriter");%>    

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
<title>게시물 변경</title>
</head>

<body>
<%@ include file="../nav/header.jsp" %>
<%@ include file="../nav/contents.jsp" %>

<form action="/update" method="post">
	<div class="content">
	<p class="text-center"></p>
	<div class="input-group mb-3">
		<input type="hidden" id="no" name="no" value="<%=board.getNo()%>">
		
  		<span class="input-group-text" id="basic-addon1">제목</span>
  		<input type="text" class="form-control" name="title" id="title" value="<%= board.getTitle()%>">
  		
  		<span class="input-group-text" id="basic-addon1">작성자</span>
  		<input type="text" class="form-control" value="<%= board.getWriter().getName()%>">
  		
  		<span class="input-group-text" id="basic-addon1">조회수</span>
  		<input type="text" class="form-control" name="views" id="views" value="<%= board.getViews()%>">
	</div>

	<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon1">내용</span>
		<textarea class="form-control" name="contents" id="exampleFormControlTextarea1" rows="10"><%=board.getContents() %></textarea>
	</div>
	<div class="center">
		<button type="button" class="btn btn-outline-secondary" onclick="location.href='/boards'">취소</button>
		<button type="submit" class="btn btn-outline-secondary">수정</button>
	</div>
	</div>
</form>

<%@ include file="../nav/footer.jsp" %>

	<script src="../resource/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>