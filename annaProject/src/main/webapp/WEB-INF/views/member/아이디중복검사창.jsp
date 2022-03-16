<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    Boolean 사용가능=(Boolean)request.getAttribute("usable");
    String id=(String)request.getAttribute("id");
%>    
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<meta charset="UTF-8">
<title>아이디 중복 검사</title>
<link href="../resources/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<Style>
body {
	margin-top: 100px;
	margin-right: 50px;
	margin-bottom: 50px;
	margin-left: 50px;
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
</style>	
<script>
function id사용하다(){
	var id=document.querySelector("#id").value;
	opener.id를받다(id);
	close();
}
</script>
</head>
<body>
<form action="/id" method="post"> 
	<div class="input-group mb-3">
  		<span class="input-group-text" id="basic-addon1">아이디</span>
  		<input type="text" class="form-control" name="id" id="id" value="<%=(id==null)?"":id%>"/>
  		<button class="btn btn-outline-secondary" type="submit" id="button-addon2">검사</button>
	</div>
</form>
<% if(사용가능!=null){
if(사용가능){ %>
<div class="input-group mb-3">
<span class="input-group-text" id="basic-addon1">사용 가능한 ID 입니다.</span>
<button class="btn btn-outline-secondary" type="button" onclick="id사용하다()">아이디사용</button>
</div>
<%}else{ %>
<div class="input-group mb-3">
<span class="input-group-text" id="basic-addon1">이미 사용중인 ID 입니다.</span>
</div>
<%} 
}%>

</body>
</html>