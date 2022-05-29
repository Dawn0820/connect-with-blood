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
    <link href="resources/css/carousel.css" rel="stylesheet">
  </head>
  <body>
    
    <!-- header.jsp include -->
    <%@ include file="views/common/header.jsp" %>

	<main>
	
	  <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
	    <div class="carousel-indicators">
	      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
	      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
	    </div>
	    <div class="carousel-inner">
	      <div class="carousel-item active">
	        <img src="resources/images/dog1.png" alt="" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></img>
	
	        <div class="container">
	          <div class="carousel-caption text-start">
	            <h1>공지사항</h1>
	            <p>새로운 공지사항을 확인해보세요</p>
	            <p><a class="btn btn-lg btn-primary" href="#">더보기</a></p>
	          </div>
	        </div>
	      </div>
	      <div class="carousel-item">
	        <img src="resources/images/dog2.png" alt="" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></img>
	
	        <div class="container">
	          <div class="carousel-caption">
	            <h1>이벤트</h1>
	            <p>현재 진행중인 이벤트를 확인해보세요</p>
	            <p><a class="btn btn-lg btn-primary" href="#">더보기</a></p>
	          </div>
	        </div>
	      </div>
	      <div class="carousel-item">
	        <img src="resources/images/dog3.png" alt="" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></img>
	        <div class="container">
	          <div class="carousel-caption text-end">
	            <h1>FAQ</h1>
	            <p>자주하는 질문을 확인해보세요</p>
	            <p><a class="btn btn-lg btn-primary" href="#">더보기</a></p>
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
	        <img src="resources/images/bloodEnroll.png" alt=""  width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title></title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text></img>
	        <h2>헌혈증 등록</h2>
	        <p>헌혈에 감사드립니다</p>
	        <p><button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">등록하기 &raquo;</button></p>
	      </div><!-- /.col-lg-4 -->
	      
	      <!-- 모달 시작 -->
	      
      		<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div style="text-align: center" class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h3 strong style="color:red" class="modal-title" id="staticBackdropLabel">헌혈증 등록</h3>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
			<form action="<%=contextPath%>/" method="post">
				<!-- 시간되면 텍스트 가운데정렬 -->
				<!-- 세션에서 로그인 정보 받아서 넘기기? / 로그인 안하면 로그인 창 띄워주기 -->
				
				<h4>회원이름</h4> 여기에 이름 출력<br><br>
				
				<h4>헌혈종류</h4> <select id="blood" name="blood">
		                    	<option value="wh">전혈</option>
		                    	<option value="in">성분</option>
                    		</select> <br><br>
                    		
                <h4>헌혈일자</h4> 시간선택,,,    		
				
			</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <button type="submit" class="btn btn-primary">등록</button>
      </div>
    </div>
  </div>
</div>

		  <!-- 모달 끝  -->

	      <div class="col-lg-4">
	        <img src="resources/images/blood.png" alt="" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text></img>
	        <h2>헌혈예약</h2>
	        <p>헌혈을 예약해보세요</p>
	        <p><a class="btn btn-secondary" href="views/reservation/reservation.jsp">예약하기 &raquo;</a></p>

	      </div><!-- /.col-lg-4 -->
	      <div class="col-lg-4">
	        <img src="resources/images/question.png" alt="" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text></img>
	        <h2>문의하기</h2>
	        <p>무엇을 도와드릴까요?</p>
	        <p><a class="btn btn-secondary" href="#">문의하기 &raquo;</a></p>
	      </div><!-- /.col-lg-4 -->
	    </div><!-- /.row -->
	
	
	    <!-- START THE FEATURETTES -->
	
	    <hr class="featurette-divider">
	
	    <div class="row featurette">
	      <div class="col-md-7">
	        <h2 class="featurette-heading">오꼬노미야끼 <span class="text-muted">맛있음</span></h2>
	        <p class="lead">행당역에 있음</p>
	      </div>
	      <div class="col-md-5">
	        <img src="resources/images/cat1.png" alt="" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em"></text></img>
	
	      </div>
	    </div>
	
	    <hr class="featurette-divider">
	
	    <div class="row featurette">
	      <div class="col-md-7 order-md-2">
	        <h2 class="featurette-heading">천새벽<span class="text-muted">임규민</span></h2>
	        <p class="lead">기세영 심현진 이나영</p>
	      </div>
	      <div class="col-md-5 order-md-1">
	        <img src="resources/images/cat2.png" alt="" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em"></text></img>
	
	      </div>
	    </div>
	
	    <hr class="featurette-divider">
	
	    <div class="row featurette">
	      <div class="col-md-7">
	        <h2 class="featurette-heading">라프로익 <span class="text-muted">제임슨</span></h2>
	        <p class="lead">미도리샤워</p>
	      </div>
	      <div class="col-md-5">
	        <img src="resources/images/cat3.png" alt="" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em"></text></img>
	
	      </div>
	    </div>
	
	    <hr class="featurette-divider">
	
	    <!-- /END THE FEATURETTES -->
	
	  </div><!-- /.container -->
	
	
		<!-- footer.jsp include -->
	    <%@ include file="views/common/footer.jsp" %>
	  
	</main>

	<!-- bootstrap.bundle.min.js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  </body>
</html>

    