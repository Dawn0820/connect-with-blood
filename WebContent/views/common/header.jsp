<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String contextPath = request.getContextPath();
	String alertMsg = (String)session.getAttribute("alertMsg");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>



</head>
<body class="pt-5">
	<!-- HEADER -->
	<header>
	  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
	    <div class="container-fluid">
	      <a class="navbar-brand" href="/ConnectWithBlood/index.jsp">ConnectWithBlood</a>
	      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="navbar-toggler-icon"></span>
	      </button>
	      <div class="collapse navbar-collapse" id="navbarCollapse">
	        <ul class="navbar-nav me-auto mb-2 mb-md-0">
	          <li class="nav-item">
	            <a class="nav-link active" aria-current="page" href="">소개</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link active" aria-current="page" href="">헌혈의집</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link active" aria-current="page" href="">혈액보유량</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link active" aria-current="page" href="<%=contextPath %>/list.co?cpage=1">커뮤니티(나영)</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link active" aria-current="page" href="<%=contextPath %>/dashboard.ad">관리자(새벽)</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link active" aria-current="page">멤버페이지(현진)</a>
	          </li>
	        </ul>
	        
	        
	        <!-- 검색버튼 나중에 시간나면 구현 -->
	        <form class="d-flex">
	          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
	          <button class="btn btn-outline-success" type="submit">Search</button>
	        </form>
	        <!-- 로그인 -->
	        <button type="button" class="btn btn-outline-danger">로그인</button>
	        <!-- 회원가입 -->
	        <button type="button" class="btn btn-outline-warning">회원가입</button> 
	        
	      </div>
	    </div>
	  </nav>
	</header>
<!-- Bootstrap.bundle.min.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>