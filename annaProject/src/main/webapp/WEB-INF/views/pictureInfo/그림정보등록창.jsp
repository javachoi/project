<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link href="../resources/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	
<Style>
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
.content{padding: 0 400px}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

<script type="text/javascript">
function 그림등록하다(){
	return true;
}
</script>

<meta charset="UTF-8">
<title>사진등록창</title>
</head>
<body>
<%@ include file="../nav/header.jsp" %>
<%@ include file="../nav/contents.jsp" %>

<!-- form 시작 -->
	<form onsubmit="return 그림등록하다()" action="/pictureInfo" enctype="multipart/form-data" method="post"> 
	<div class="content">
		<div class="input-group mb-3">
  				<span class="input-group-text">제목</span>
  				<input type="text" id="title" name="title" class="form-control">
		</div>
		
		<div class="input-group mb-3">
  				<span class="input-group-text">사진</span><br>
  				<img class="form-control" id="picture" src="/img/no_image.jpg" width="500" height="300"/><br>				 
  		</div>
  		
  		<div class="input-group mb-3">
  				<input type="file" name="pictureFile" id="pictureFile"/><br> 
		</div>

		
		<div class="input-group mb-3">
			<span class="input-group-text">내용</span>
			<textarea class="form-control" cols="1000" rows="5" name="contents"></textarea><br>
		</div>
		
		<div class="center">
				<button type="submit" class="btn btn-outline-secondary" id="btn">등록</button>
				<button type="button" class="btn btn-outline-secondary" id="button-addon2" onclick="location.href='/home'">취소</button>
		</div>
	</div>
	</form>
</body>
</html>

<script>
function 그림파일읽어출력하기(이벤트) {
	var fileInput=이벤트.target;
	//change이벤트.target(대상)은 <input type="file" name="profileFile" id="profileFile"/>
    var 선택된그림파일관리객체 = fileInput.files[0]; 
    var 선택된그림size = 선택된그림파일관리객체.size;
     /*
    if(선택된그림size > 1024*10){
    	alert("10K 요량초과!");
    	fileInput.value="";
    	return ;
    }
     */
    if (!선택된그림파일관리객체.type.match('image.*')) {
       alert("욱! 그림이 아니예요!");
       fileInput.value="";
       return ;
    }
    var 파일리더 = new FileReader();
         파일리더.onload = function(선택된그림파일관리객체) {
  	  var imgProfile=document.getElementById("picture");    	  
  	  imgProfile.src=선택된그림파일관리객체.currentTarget.result;
    };      
    파일리더.readAsDataURL(선택된그림파일관리객체);
    return ;
}
document.querySelector("#pictureFile").addEventListener("change", 그림파일읽어출력하기, false);
</script>
