<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
  <head> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.88.1">
    <title>ConnectWithBlood</title>

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/carousel/">

    <!-- Bootstrap core CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Favicons -->
	<link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
	<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
	<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
	<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
	<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
	<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
	<meta name="theme-color" content="#7952b3">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

    </style>

    
    <!-- Custom styles for this template -->
    <link href="../resources/css/carousel.css" rel="stylesheet">
  </head>
  <body>
    
    <!-- header.jsp include -->
    <%@ include file="common/header.jsp" %>

	<main>
	
	  <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
	    <div class="carousel-indicators">
	      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
	      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
	    </div>
	    <div class="carousel-inner">
	      <div class="carousel-item active">
	        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false" style="background-color: red;"><rect width="100%" height="100%" fill="#972222"/></svg>
	
	        <div class="container">
	          <div class="carousel-caption text-start" id="main-banner1">
	            <h1 style="font-size: 70px">Connect With Blood</h1>
	            <p style="font-size: 25px"> Welcome 당신은 잘 오다</p>
	            <p><a class="btn btn-lg btn-primary" href="#">사이트소개</a></p>
	          </div>
	        </div>
	      </div>
	      <div class="carousel-item">
	        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>
	
	        <div class="container">
	          <div class="carousel-caption">
	            <h1>공지사항</h1>
	            <p>현금거래 적발시 형사처벌</p>
	            <p><a class="btn btn-lg btn-primary" href="#">자세히 보기</a></p>
	          </div>
	        </div>
	      </div>
	      <div class="carousel-item">
	        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>
	        <div class="container">
	          <div class="carousel-caption text-end">
	            <h1>이벤트</h1>
	            <p>헌혈하면 빵 줌</p>
	            <p><a class="btn btn-lg btn-primary" href="#">자세히 보기</a></p>
	          </div>
	        </div>
	      </div>
	    </div>
	    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
	      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	      <span class="visually-hidden">Previous</span>
	    </button>
	    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
	      <span class="carousel-control-next-icon" aria-hidden="true"></span>
	      <span class="visually-hidden">Next</span>
	    </button>
	  </div>
	
	
	  <!-- Marketing messaging and featurettes
	  ================================================== -->
	  <!-- Wrap the rest of the page in another container to center all the content. -->
	
	  <div class="container marketing">
	
	    <!-- Three columns of text below the carousel -->
	    <div class="row">
	      <div class="col-lg-4">
	        <!-- <svg class="bd-placeholder-img" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false">
            <image href="../resources/main_photo/middle1.jpg" width="140" height="140"></image>
            <title>Placeholder</title><text x="50%" y="50%" fill="#777" dy=".3em"></text>
          </svg> -->
          <img src="../resources/main_photo/blood.png" width="140" height="140">
	        <h2>헌혈증 등록</h2>
	        <p>헌혈증을 등록하시면 어쩌구 저쩌구</p>
	        <p><a class="btn btn-secondary" href="#">바로가기 &raquo;</a></p>
	      </div><!-- /.col-lg-4 -->

	      <div class="col-lg-4">
	        <!-- <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false">
            <title>Placeholder</title><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text>
          </svg> -->
          <img src="../resources/main_photo/category2.png" width="140" height="140">
	        <h2>현재 혈액 보유량</h2>
	        <p>오늘의 혈액 보유 현황입니다</p>
	        <p><a class="btn btn-secondary" href="#">바로가기 &raquo;</a></p>
	      </div><!-- /.col-lg-4 -->

	      <div class="col-lg-4">
	        <!-- <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false">
            <title>Placeholder</title><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text>
          </svg> -->
          <img src="../resources/main_photo/reservation2.png" width="140" height="140">
	        <h2>예약 서비스</h2>
	        <p>예약으로 헌혈의 집을 보다 편리하게 이용하세요</p>
	        <p><a class="btn btn-secondary" href="#">바로가기 &raquo;</a></p>
	      </div><!-- /.col-lg-4 -->
	    </div><!-- /.row -->
	
	
	    <!-- START THE FEATURETTES -->
	
	    <hr class="featurette-divider">
	
	    <div class="row featurette">
	      <div class="col-md-7">
	        <h2 class="featurette-heading">주요 소식<br><span class="text-muted">헌혈인구 꾸준히 감소</span></h2> <br>
	        <p class="lead">대한적십자사 산하 혈액관리본부에 따르면 어쩌구</p>
	      </div>
	      <div class="col-md-5">
	        <!-- <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg> -->
          <a href="#"> <!--#에 적당한 곳 링크-->
            <img src="../resources/main_photo/ex1.jpg" width="500" height="500">
          </a>
	      </div>
	    </div>
	
	    <hr class="featurette-divider">
	
	    <div class="row featurette">
	      <div class="col-md-7 order-md-2">
	        <h2 class="featurette-heading">핫한 이벤트<span class="text-muted"><br>헌혈을 하면 맥북 프로가?</span></h2> <br>
	        <p class="lead">아무튼 추첨해서 줌</p>
	      </div>
	      <div class="col-md-5 order-md-1">
	        <!-- <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg> -->
          <a href="#"> <!--#에 이벤트 링크-->
            <img src="../resources/main_photo/ex2.png" width="500" height="500">
          </a>
        </div>
	    </div>
	
	    <hr class="featurette-divider">
	
	    <div class="row featurette">
	      <div class="col-md-7">
	        <h2 class="featurette-heading">저녁밥 <span class="text-muted"><br>뭐먹지</span></h2>
	        <p class="lead">사진 눌러서 정해보세요</p>
	      </div>
	      <div class="col-md-5">
	        <!-- <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg> -->
          <a href="http://dogumaster.com/select/menu">
            <img src="../resources/main_photo/ex3.jpg" width="500" height="500">
          </a>
	      </div>
	    </div>
	
	    <hr class="featurette-divider">
	
	    <!-- /END THE FEATURETTES -->
	
	  </div><!-- /.container -->
	
	
		<!-- footer.jsp include -->
	    <%@ include file="common/footer.jsp" %>
	  
	</main>

	<!-- bootstrap.bundle.min.js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  </body>
</html>

    