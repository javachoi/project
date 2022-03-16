<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>mymeseob main</title>

<script>
function bookmark_add() {
    bookmark_url  = "http://choongang.atosoft.net/";
    bookmark_name = "메섭이네🐕🐶";
   
    try {
     window.external.AddFavorite(bookmark_url,bookmark_name);
    } catch(e) {
     alert('이 브라우저는 즐겨찾기 추가 기능을 지원하지 않습니다.');
     return false;
    }
}

</script>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/cover/">

<!-- Bootstrap core CSS -->
<link href="../resource/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.btn-secondary, .btn-secondary:hover, .btn-secondary:focus {
	color: #333;
	text-shadow: none; /* Prevent inheritance from `body` */
}

body {
	text-shadow: 0 .05rem .1rem rgba(0, 0, 0, .5);
}

.cover-container {
	max-width: 42em;
}

/*
 * Header
 */
.nav-masthead .nav-link {
	padding: .25rem 0;
	font-weight: 700;
	color: rgba(255, 255, 255, .5);
	background-color: transparent;
	border-bottom: .25rem solid transparent;
}

.p-3 {
	padding: 1rem !important;
}

.nav-masthead .nav-link:hover, .nav-masthead .nav-link:focus {
	border-bottom-color: rgba(255, 255, 255, .25);
}

.nav-masthead .nav-link+.nav-link {
	margin-left: 1rem;
}

.nav-masthead .active {
	color: #fff;
	border-bottom-color: #fff;
}

body.d-flex.h-100.text-center.text-white.bg-dark {
    padding: 320px 20px 30px 40px;
}
</style>

<!-- Custom styles for this template -->
<link href="cover.css" rel="stylesheet">
</head>
<body class="d-flex h-100 text-center text-white bg-dark">

	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">

		<main class="px-3">
			<h1>🐕 my meseob 🐶</h1>
			<p class="lead">메섭이의 홈페이지에 오신것을 환영합니다.</p>
			<p class="lead">메섭이의 사진은 도용금지x,개인프사사용가능o</p>
			<a href="#" onclick="location.href='/home'" class="btn btn-lg btn-secondary fw-bold border-white bg-white">입장하기</a>
		</main>
	</div>
</body>
</html>