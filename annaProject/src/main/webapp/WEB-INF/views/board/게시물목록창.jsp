<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="anna.project.board.common.Board"%>
<% List<Board> boards = (List<Board>) request.getAttribute("boards");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
      rel="stylesheet"
	  integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	  crossorigin="anonymous">

<title>게시물 목록</title>
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

.center {
	text-align: center;
    padding-left: 200px;
    padding-right: 200px;
}

</style>
</head>
<body>
<%@ include file="../nav/header.jsp" %>
<%@ include file="../nav/contents.jsp" %>
		
	<div class="center">
		<table class="table">
		
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
			</tr>
			<%
				for (int 게시물번호=0; 게시물번호<boards.size(); 게시물번호++) {
				Board 게시물 = boards.get(게시물번호);
			%>
			<tr>
				<td><%=게시물.getNo()%></td>
				<td><a href="/board/<%=게시물.getNo()%>" target="_blank"><%=게시물.getTitle()%></a></td>
				<td><%=게시물.getWriter().getName()%></td>
				<td><%=게시물.getViews()%></td>
			</tr>
			<%
				}
			%>
			
		</table>
	<div class="button">
		<% if (nowLogin) { %>
		<button type="submit" class="btn btn-outline-secondary" id="btn" onclick="location.href='/board'">안부남기기</button>
		<% } %>
	</div>
	
		</div>
		

<%@ include file="../nav/footer.jsp" %>
	<script src="../resource/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	

</body>
</html>