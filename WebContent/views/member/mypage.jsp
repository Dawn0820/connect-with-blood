<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>



<%
String alertMsg = (String)session.getAttribute("alertMsg");
Member loginMember = (Member)session.getAttribute("loginMember");

String userId = loginMember.getUserId();

String userPw = (loginMember.getUserPw()==null)? "":loginMember.getUserPw();
String userName = (loginMember.getUserName()==null)? "":loginMember.getUserName();
String userBirth = (loginMember.getUserBirth()==null)? "":loginMember.getUserBirth();
String userAddress = (loginMember.getUserAddress()==null)? "":loginMember.getUserAddress();
String userEmail = (loginMember.getUserEmail()==null)? "":loginMember.getUserEmail();
String userPhone = (loginMember.getUserPhone()==null)? "":loginMember.getUserPhone();
String userBloodtype = (loginMember.getUserBloodtype()==null)? "":loginMember.getUserBloodtype();

int userBloddCnt = loginMember.getUserBloddCnt();

 %>
 
 





<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>



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
		margin-left: 30%;
		border-radius: 50px;
		color: white;
		background-color: brown;
		border: none;
	}
	.goMain{
		width: 250px;
		height: 40px;
		margin-left: 30%;
		border-radius: 50px;
		color: white;
		text-decoration: none;
	}
	.changebBtn:hover{background-color: rgb(222, 102, 102);}

.top{
	text-align: center;
}
#goMain{
	margin-left: 30%;
}
#outBtn{
	float: right;
}
#delMemBtn{
	margin-left: 50%;
	font-size: smaller;
}

</style>
</head>
<body>


	<!-- header.jsp include -->
    <%@ include file="../common/header.jsp" %>
    
    
    
 
 
	<br><br><br>
    <div >
		
			<br><br><br>
			<h1 class="top">마이페이지</h1>
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

		
		<div class="container">
			<button type="button" class="btn btn-primary changebBtn" data-toggle="modal" data-target="#myModal">개인정보 수정</button>
			
			<!-- The Modal -->
			<div class="modal fade" id="myModal">
		  <div class="modal-dialog modal-lg">
			<div class="modal-content">
			
				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">개인정보 수정</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				
				<!-- Modal body -->
			  <div class="modal-body">
				<div class="table-responsive">
					<table class="table table-bordered">
			
						<tr>
							<td>아이디</td>
							<td><input type="text" name="MuserId" value="<%=userId%>" readonly></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type="text" name="MuserPw" value="<%=userName%>" readonly></td>
						</tr>
						<tr>
							<td>이름</td>
							<td><input type="text" name="MuserName" value="<%=userName%>" readonly></td>
						</tr>
						<tr>
							<td>주민등록번호</td>
							<td><input type="text" name="MuserBirth" value="<%=userBirth%>" readonly></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td><input type="email" name="MuserEmail" value="<%=userEmail%>" readonly></td>
						</tr>
						<tr>
							<td>연락처</td>
							<td><input type="text" name="MuserPhone" value="<%=userPhone%>" readonly></td>
						</tr>
						<tr>
							<td>주소</td>
							<td><input type="text" name="MuserAddress" value="<%=userAddress%>" readonly></td>
						</tr>
						<tr>
							<td>혈액형</td>
							<td><input type="text" name="MuserBloodtype" value="<%=userBloodtype%>" readonly></td>
						</tr>
					</table>
				</div>
			</div>
				
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
				</div>
			  
			</div>
		</div>
		</div>
		
	</div>

	 

	
</fieldset>
</form>
</div>


<br><br>



 <div >
		<form method="post" action="<%=contextPath%>/insertB.mem">
		<fieldset class="inner">

			
			<h4>헌혈증 관리</h4>
			<p>홈페이지에서 등록한 헌혈증 조회</p>
			<a href="views/member/insertBloodInfo.jsp" class="btn btn-outline-danger" id="bloodBtn">헐혈증 등록</a>
			<br><br>
				<br>
				<div class="table-responsive">
				<table class="table table-bordered">
			<tr>
				<td>헌혈증 개수</td>
				<td><input type="text" value="<%=userBloddCnt %>"></td>
			</tr>
		</table>


	</div>













		<br>
		<a type="button" href="<%=contextPath%>" class="goMain btn btn-secondary" id="goMain">메인으로 돌아가기</a>

		<a href="<%=contextPath%>/logout.mem" type="button" class="btn btn-light" id="outBtn">로그아웃</a>
	
	</fieldset>


	<br><br>
	<a type="button" id="delMemBtn" class="btn btn-dark" href="<%=contextPath%>/delete.mem">회원탈퇴</a>


</form>
	</div>


	
   
 
    
    
    
    
    <br><br><br><br><br>
    	<!-- footer.jsp include -->
	<%@ include file="../common/footer.jsp" %>
	
	
	

</body>
</html>