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

<meta charset="UTF-8">
<title>회원등록</title>
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
function 우편번호조회하다(){
	  new daum.Postcode({
          oncomplete: function(data) {
         		document.querySelector("#post").value=data.zonecode;
         		document.querySelector("#address").value=data.roadAddress;
         		
         		document.querySelector("#detailAddress").focus();
          }
      }).open();
}
function id를중복검사하다(){
	document.querySelector("#id").value="";
	window.open("/id","","width=500,height=300");
}
function id를받다(id){
	document.querySelector("#id").value=id;
}
function 회원등록하다() {
	let 이름=document.querySelector("#name").value;
	if(이름.trim()==""){
		alert("이름을 입력해주세요.");
		return false;
	}
	
	let id=document.querySelector("#id").value;
	if(id.trim()==""){
		alert("아이디를 입력해주세요.");
		return false;
	}
	
	let password1=document.querySelector("#password1").value;
	if(password1.trim()==""){
		alert("비밀번호를 입력해주세요.");
		return false;
	}
	
	let password2=document.querySelector("#password2").value;
	if(password2.trim()==""){
		alert("동일한 비밀번호를 입력해주세요.");
		return false;
	}
	
	if(password1!=password2){
		alert("입력하신 비밀번호와 일치하지 않습니다");
		return false;
	}
	let email1 = document.querySelector("#email1").value;
	let email2 = document.querySelector("#email2").value;
	let email = document.querySelector("#email");
	email.value=email1+"@"+email2;
	
	return true;
}

</script>
</head>
<body>
<%@ include file="../nav/header.jsp" %>
<%@ include file="../nav/contents.jsp" %>

<!-- form 시작 -->
	<form onsubmit="return 회원등록하다()" action="/member" method="post"> 
			<div class="content">
		
				<div class="input-group mb-3">
  				<span class="input-group-text" id="basic-addon1">아이디</span>
  				<input type="text" class="form-control" name="id" id="id" placeholder="아이디중복검사 버튼을 눌러 사용하실 아이디를 입력하세요" aria-label="Username" aria-describedby="basic-addon1">
  				<button class="btn btn-outline-secondary" type="button" id="button-addon2" onclick="id를중복검사하다()">아이디중복검사</button>
				</div>
				
				<div class="input-group mb-3">
  				<span class="input-group-text">비밀번호</span>
  				<input type="password" id="password1" name="password" aria-label="First name" class="form-control">
  				<span class="input-group-text">비밀번호확인</span>
  				<input type="password" id="password2" aria-label="Last name" class="form-control">
				</div>
				
				<div class="input-group mb-3">
  				<span class="input-group-text" id="basic-addon1">이름</span>
  				<input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력해주세요" aria-label="Username" aria-describedby="basic-addon1">
				</div>
				
				<div class="input-group mb-3">
  				<span class="input-group-text" id="basic-addon1">전화번호</span>
  				<input type="text" class="form-control" name="tel" id="tel" placeholder="-없이 숫자만 입력해주세요" aria-label="Username" aria-describedby="basic-addon1">
				</div>
				
				<div class="input-group mb-3">
  				<span class="input-group-text" id="basic-addon1">이메일</span>
  				<input type="text" class="form-control" id="email1"/> @ 
  				<select class="form-select" id="email2">
  					<option value="naver.com">naver.com</option>
  					<option value="gmail.com">gmail.com</option>
  					<option value="daum.com">daum.net</option>
  					<option value="yahoo.co.kr">yahoo.co.kr</option>
  					<option value="직접입력">직접입력</option>
				</select>
				<input type="hidden" name="email" id="email"/>
				</div>
				
				<div class="input-group mb-3">
  				<span class="input-group-text" id="basic-addon1">우편번호</span>
  				<input type="text" class="form-control" name="post" id="post" placeholder="우편번호 검색 버튼을 눌러 검색을 먼저 해주세요"  aria-label="Username" aria-describedby="basic-addon1">
  				<button class="btn btn-outline-secondary" type="button" id="button-addon2" onclick="우편번호조회하다()">우편번호검색</button>
				</div>
				
				<div class="input-group mb-3">
  				<span class="input-group-text" id="basic-addon1">주소</span>
  				<input type="text" class="form-control" name="address" id="address" readonly="readonly" aria-label="Username" aria-describedby="basic-addon1">
				</div>
				
				<div class="input-group mb-3">
  				<span class="input-group-text" id="basic-addon1">상세주소</span>
  				<input type="text" class="form-control" name="detailAddress" id="detailAddress" placeholder="우편번호 검색후 상세주소 입력이 가능합니다" aria-label="Username" aria-describedby="basic-addon1">
				</div>
				
				<div class="center">
				<button type="submit" class="btn btn-outline-secondary" id="btn">회원가입</button>
				<button type="button" class="btn btn-outline-secondary" id="button-addon2" onclick="location.href='/home'">취소</button>
				</div>
				
			</div>
		</form>
<!-- form 끝 -->		

<%@ include file="../nav/footer.jsp" %>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>