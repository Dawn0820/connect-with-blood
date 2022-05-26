<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String contextPath = request.getContextPath();
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style>
	/*메뉴바 드롭다운*/

	/*메뉴바 밑줄*/
		.collapse li {
			display: inline-block;
		}
		.collapse a {
			text-decoration: none;
		}
		.collapse a:after {
			display: block;
			content: '';
			border-bottom: solid 2px #fff;
			transform: scaleX(0);
			transition: transform 250ms ease-in-out;
		}
		.collapse a:hover::after {
			transform: scaleX(1);
		}
	
	/*검색창*/
		.search-box {
			font-size: 15px;
			padding: 7px 17px;
			background-color: black;
			color: white;
			border: 1px solid rgb(207, 207, 207);
			border-radius: 10px;
			letter-spacing: 2px;
			margin-right: 5px;
		}

	/*검색 버튼*/
		.search-btn {
			font-size: 15px;
			padding: 7px 17px;
			background-color: black;
			color: rgb(207, 207, 207);
			border: 1px solid white;
			border-radius: 10px;
			letter-spacing: 2px;
			font-family: sans-serif;
			margin-right: 5px;
		}

		.search-btn:hover {
			background-color: white;
			color: black;
			transition: 0.4s;
		}
	
		input::placeholder {
			color: rgb(207, 207, 207);
			font-family: sans-serif;
		}

	/*로그인 버튼*/
		.login-btn {
			font-size: 15px;
			padding: 7px 17px;
			background-color: black;
			color: rgb(207, 207, 207);
			border: 1px solid white;
			border-radius: 10px;
			letter-spacing: 2px;
			font-family: sans-serif;
			margin-right: 5px;
		}

		.login-btn:hover {
			background-color: white;
			color: black;
			transition: 0.4s;
		}
</style>

</head>
<body class="pt-5">
	<!-- HEADER -->
	<header>
	  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-black">
	    <div class="container-fluid">
	      <a class="navbar-brand" href="#">ConnectWithBlood</a> <!--#에 홈페이지 주소-->
	      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="navbar-toggler-icon"></span>
	      </button>
	      <div class="collapse navbar-collapse" id="navbarCollapse">
	        <ul class="navbar-nav me-auto mb-2 mb-md-0">
	          <li class="nav-item">
	            <a class="nav-link active" href="#">커뮤니티</a> <!--#에 커뮤니티(게시판) 주소-->
	          </li>
	          <li class="nav-item">
	            <a class="nav-link active" href="#">이벤트</a> <!--#에 이벤트 주소-->
	          </li>
			  <li class="nav-item">
				<a class="nav-link active" href="#">공지사항</a> <!--#에 공지사항 주소-->
			  </li>
	          <li class="nav-item">
	            <a class="nav-link active" aria-current="page" href="<%=contextPath %>/list.co?cpage=1">게시판(나영)</a>
	          </li>
	        </ul>
	        <form class="d-flex">
	          <input class="search-box" type="search" placeholder="검색" aria-label="Search">
	          <button class="search-btn" type="submit">Search</button>
	        </form>
			<button type="button" class="login-btn" onclick="location.href='#'">Login</button> <!--#에 로그인 창 주소-->
			</div>

</head>
<body class="pt-5">
	<!-- HEADER -->
	<header>
	  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
	    <div class="container-fluid">
	      <a class="navbar-brand" href="/ConnectWithBlood/views/main.jsp">ConnectWithBlood</a>
	      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="navbar-toggler-icon"></span>
	      </button>
	      <div class="collapse navbar-collapse" id="navbarCollapse">
	        <ul class="navbar-nav me-auto mb-2 mb-md-0">
	          <li class="nav-item">
	            <a class="nav-link active" aria-current="page" href="/ConnectWithBlood/views/main.jsp">Home</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="#">Link</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link disabled">Disabled</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link active" aria-current="page" href="<%=contextPath %>/list.co?cpage=1">게시판(나영)</a>
	          </li>
	        </ul>
	        <form class="d-flex">
	          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
	          <button class="btn btn-outline-success" type="submit">Search</button>
	        </form>
	      </div>
	    </div>
	  </nav>
	</header>
</body>
</html>