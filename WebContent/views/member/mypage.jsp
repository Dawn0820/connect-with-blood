<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">



<!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>





<style>
	.inner{
		border: 0.5px dashed lightgray; padding: 20px;
	}
	.leg{text-align: center;}
	input{
		border:  none;
	}
	td, input {
		font-size: 18px;
	}
	.changebBtn{
		width: 250px;
		height: 40px;
		border-radius: 50px;
		color: white;
		background-color: brown;
		border: none;
	}
	 
	.goMain{
		width: 250px;
		height: 40px;
		margin-left: 60%;
		border-radius: 50px;
		color: white;
		text-decoration: none;
	}
	.changebBtn:hover{background-color: rgb(222, 102, 102);}

	.top{
		text-align: center;
	}
#goMain{
	margin-left: 40%;
}
#outBtn{
	float: right;
}
#deleteBtn{
	font-size: smaller;
}

#non{color: gray;}

#inp_text{
 width:300px;
 text-align:center;
}

#button{
	margin: auto;
	text-align: center;
}

 option{color: crimson;}
 #fontc{color: gray;}
.btn_find:hover{background-color: rgb(222, 102, 102);}
#deleteBtn1{text-align:right;}
#bloodBtn1{text-align:center;}
#bloodBtn2{background-color:brown;}
#bloodBtn2:hover{background-color: rgb(222, 102, 102);}

table td{text-align:center;}
table td input{color:brown;}
</style>
</head>
<body>


	<!-- header.jsp include -->
    <%@ include file="../common/header.jsp" %>
    
    <%
String alertMsg = (String)session.getAttribute("alertMsg");

String userId = loginMember.getUserId();

String userPw = (loginMember.getUserPw()==null)? "":loginMember.getUserPw();
String userName = (loginMember.getUserName()==null)? "":loginMember.getUserName();
String userBirth = (loginMember.getUserBirth()==null)? "":loginMember.getUserBirth();
String userAddress = (loginMember.getUserAddress()==null)? "":loginMember.getUserAddress();
String userEmail = (loginMember.getUserEmail()==null)? "":loginMember.getUserEmail();
String userPhone = (loginMember.getUserPhone()==null)? "":loginMember.getUserPhone();
String userBloodtype = (loginMember.getUserBloodtype()==null)? "":loginMember.getUserBloodtype();

int userBloodCnt = loginMember.getUserBloddCnt();

 %>
    
 

		
			<br><br><br>
			<h1 class="top">My Page</h1>
			<br><br><br>
			
		<form method="post" action="<%=contextPath%>/mypage.mem">
			<fieldset class="inner">
			<!-- <div class="container"> -->
				<h4>개인정보 관리</h4>
				<p>정보 변경을 원하시면 변경할 정보를 입력한 후 하단의 개인정보 수정 버튼을 누르세요</p>
				
				<br>
	<div class="table-responsive">
		<table class="table table-bordered">

			<tr>
				<td>아이디</td>
				<td><input type="text" name="userId" value="<%=userId%>" readonly></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="userName" value="<%=userName%>" readonly></td>
			</tr>
			<tr>
				<td>주민등록번호</td>
				<td><input type="text" name="userBirth" value="<%=userBirth%>" readonly></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="email" name="userEmail" value="<%=userEmail%>" readonly></td>
			</tr>
			<tr>
				<td>연락처</td>
				<td><input type="text" name="userPhone" value="<%=userPhone%>" readonly></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="userAddress" value="<%=userAddress%>" readonly></td>
			</tr>
			<tr>
				<td>혈액형</td>
				<td><input type="text" name="userBloodtype" value="<%=userBloodtype%>" readonly></td>
			</tr>
		</table>
	</div>
	

		<br>
			<div id="bloodBtn1">
			<a href="<%=contextPath%>/views/member/mypage_mody.jsp" class="btn btn-danger" id="bloodBtn2">개인정보 수정</a>
			</div>
			
	</fieldset>

<br><br>







 <div >
		<fieldset class="inner">

			
			<h4>헌혈증 관리</h4>
			<p>홈페이지에서 등록한 헌혈증 조회</p>
			<a href="<%=contextPath%>/views/member/insertBloodInfo.jsp" class="btn btn-outline-danger" id="bloodBtn">헌혈증 등록</a>
			<br><br>
				<br>
				<div class="table-responsive">
				<table class="table table-bordered">
			<tr>
				<td>헌혈증 개수</td>
				<td><input type="text" value="<%=userBloodCnt%>"></td>
			</tr>
		</table>
	</div>


		<br>
		<div id="goMain1">
		<a type="button" href="<%=contextPath%>" class="goMain btn btn-secondary" id="goMain">메인으로 돌아가기</a>
		</div>
		
	<br>
		<div id="deleteBtn1">
		<a href="<%=contextPath%>/logout.mem" type="button" class="btn btn-light" id="outBtn">로그아웃</a><br><br>
	  <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#deleteForm" id="deleteBtn2">회원 탈퇴</button>
		</div>
	</div>
	</fieldset>



	      
  <!-- The Modal -->
  <div class="modal fade" id="deleteForm">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">회원 탈퇴</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
         <form action="<%=contextPath %>/delete.mem" method=“post”>
		<table>
			<tr>
				<td>비밀번호 입력>></td>
				<td><input type="password" name="userPw" required></td>
			</tr>
		</table>
        </div>
        <!-- Modal footer -->
        <div class="modal-footer">
            <button type="submit" class="btn btn-dark">탈퇴하기</button>
    		<a href="<%=contextPath%>/views/member/mypage.jsp" type="button" class="btn btn-light" id="outBtn">취소</a><br><br>
        </div>
        
	</form>
        
      </div>
    </div>
  </div>



	
	   
	   
	   
	   
	   

    
    
    
    
    <br><br><br><br><br>
    	<!-- footer.jsp include -->
	<%@ include file="../common/footer.jsp" %>
	
	
	
<!-- Bootstrap.bundle.min.js -->
<script src=“https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js” integrity=“sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p” crossorigin=“anonymous”></script>
</body>
</html>