<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="anna.project.pictureInfo.common.PictureInfo" %>
<% List<PictureInfo> pictureInfos = (List<PictureInfo>)request.getAttribute("pictureInfos"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

.carousel {
  margin-bottom: 4rem;
}

.carousel-caption {
  bottom: 3rem;
  z-index: 10;
}

.carousel-item {
  height: 32rem;
}
.carousel-item > img {
  position: absolute;
  top: 0;
  left: 0;
  min-width: 100%;
  height: 32rem;
}

.marketing .col-lg-4 {
  margin-bottom: 1.5rem;
  text-align: center;
}
.marketing h2 {
  font-weight: 400;
}

.marketing .col-lg-4 p {
  margin-right: .75rem;
  margin-left: .75rem;
}

.featurette-divider {
  margin: 5rem 0; 
}

.featurette-heading {
  font-weight: 300;
  line-height: 1;
  letter-spacing: -.05rem;
}

@media (min-width: 40em) {
  .carousel-caption p {
    margin-bottom: 1.25rem;
    font-size: 1.25rem;
    line-height: 1.4;
  }

  .featurette-heading {
    font-size: 50px;
  }
}

.btn-primary {
    color: #fff;
    background-color: #ffc107;
    border-color: #ffc107;
}

@media (min-width: 62em) {
  .featurette-heading {
    margin-top: 7rem;
  }
}
</style>
	
<title>Insert title here</title>
</head>
<body>
<%@ include file="../nav/header.jsp" %>

  <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#myCarousel"></button>
    
    </div>
    <div class="carousel-inner">
      <div class="carousel-item carousel-item-next carousel-item-start">
        <img src="/img/home_main1.png" class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"></rect></svg>

        <div class="container">
          <div class="carousel-caption text-start">
            <h1>메섭이네🐕🐶❤️</h1>
            <p>@mymeseob</p>
          
          </div>
        </div>
      </div> 
	</div>
</div>

<!-- 메인 홈 사진 동그라미3개 -->
  <div class="container marketing">

    <div class="row">
    <%-- 동일한 사진 넣을 때 필요한 반복문 --%>
   	<%for(PictureInfo pictureInfo:pictureInfos) {%>

      <div class="col-lg-4">
        <img src="/img/<%=pictureInfo.getNo()%>/<%=pictureInfo.getFileName()%>" class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"/>
          <h2><%=pictureInfo.getTitle()%></h2><br>
        <p><%=pictureInfo.getContents()%></p>
        <p><a class="btn btn-secondary" href="#">보러가기</a></p>
      </div><!-- /.col-lg-4 -->

    <%} %> 
    <%-- 동일한 사진 넣을 때 필요한 반복문--%>
    </div><!-- /.row -->
    
    <!-- START THE FEATURETTES -->
    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">welcome<span class="text-muted"> mymeseob</span></h2>
        <p class="lead">Write Once, Run Anywhere</p>
      </div>
      <div class="col-md-5">
        <img src="../img/home_main2.jpg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">
      </div>
    </div>
    <!-- /END THE FEATURETTES -->
  </div>

<%@ include file="../nav/footer.jsp" %>

	<script src="../resource/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>