<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="member.model.vo.*"%>

<%
	String contextPath = request.getContextPath();

	Member loginMember = (Member)session.getAttribute("loginMember");
	
	boolean isAdmin = loginMember!=null && loginMember.getUserId().equals("admin");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


<style>
	/*검색 버튼*/
	.search-btn {
		font-size: 15px;
		font-style: bold;
		padding: 5px 10px;
		background-color: black;
		color: rgba(31, 168, 209);
		border: 2px solid rgba(31, 168, 209);
		border-radius: 5px;
		letter-spacing: 2px;
		font-family: sans-serif;
		transition: all 0.4s;
		margin-right: 20px;
		align-items: center;
		width: 100px;
		height: 40px;
	}
	.search-btn:focus {
		outline: none;
	}
	.search-btn:hover {
		background-color: rgba(31, 168, 209);
		color: black;
	}
	
	.buttons {
		display: flex;
		align-items: center;
	}
	/*로그인 버튼*/
	.login-btn {
		font-size: 15px;
		padding: 5px 10px;
		background-color: black;
		color: white;
		border: 1px solid white;
		border-radius: 5px;
		letter-spacing: 2px;
		font-family: sans-serif;
		transition: all 0.4s;
		margin-right: 5px;
		align-items: center;
		width: 80px;
		height: 38px;
		text-align: center;
		vertical-align: middle;
	}
	.login-btn:focus {
		outline: none;
	}
	.login-btn:hover {
		background-color: white;
		color: black;
	}
	/*회원가입 버튼*/
	.sign-btn {
		font-size: 15px;
		padding: 5px 10px;
		background-color: black;
		color: white;
		border: 1px solid white;
		border-radius: 5px;
		letter-spacing: 2px;
		font-family: sans-serif;
		transition: all 0.4s;
		margin-right: 5px;
		width: 90px;
		height: 38px;
		/* align-items: center; */
		align-items: center;
	}
	.sign-btn:focus {
		outline: none;
	}
	.sign-btn:hover {
		background-color: white;
		color: black;
	}
	/*메뉴 밑줄 - 주석 해제하시면 적용됩니다*/
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
	
	#name1{color:white;} /*로그인한 사람 이름*/

</style>
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
	            <a class="nav-link active" aria-current="page" href="<%=contextPath%>/views/board/bloodHome.jsp">헌혈의집</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link active" aria-current="page" href="<%=contextPath%>/views/board/bloodCurrent.jsp">혈액보유량</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link active" aria-current="page" href="<%=contextPath %>/list.co?cpage=1">커뮤니티(나영)</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link active" aria-current="page" href="<%=contextPath %>/dashboard.ad">관리자(새벽)</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link active"  href="<%=contextPath %>/views/member/login.jsp">멤버페이지(현진)</a>
	          </li>
	          <li class="nav-item">

	            <a class="btn btn-primary" href="<%=contextPath%>/memberList.msg"role="button">메시지버튼</a>

	            <a class="btn btn-primary" href="<%=contextPath%>/list.reserv" role="button">예약조회</a>

	          </li>
	        </ul>
	       
	       
	       
	       
		</div>
		<form class="d-flex">
		  <input class="form-control me-2" type="text" placeholder="Search" aria-label="Search">
		  <button class="btn btn-outline-secondary" type="submit">Search</button>
		  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</form>
	   
	   
		<div class="buttons">
		<%if(loginMember==null){ %>
		<a type="button" class="btn btn-outline-danger" href="<%=contextPath %>/views/member/login.jsp" style="text-decoration-line: none;">로그인</a>
		&nbsp;
		<a type="button" class="btn btn-outline-warning" href="<%=contextPath %>/views/member/beJoin.jsp" style="text-decoration-line: none;">회원가입</a>
	   
		<%}else{ %>
			<div id="name1">
			<b ><%=loginMember.getUserName() %></b>님 환영합니다!
			</div>
			&nbsp;&nbsp;
			<a href="<%=contextPath%>/mypage.mem" type="button" class="btn btn-outline-danger">마이페이지</a>
		<%} %>
		</div>
	    </div>
	  </nav>
	</header>
	
	
<!-- Bootstrap.bundle.min.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>