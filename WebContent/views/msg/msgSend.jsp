<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, msg.model.vo.*, member.model.vo.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


<style>
	#msg{
        width : 800px;
        height : 570px;
        border: 1px solid red;
        margin: auto;
        padding-inline: 30px;
        text-align: center;
    }
</style>
</head>
<body>



<br><br><br><br><br>

<div id="test"> 여기야! </div>

<!-- header.jsp include -->
<%@ include file="../common/header.jsp" %>
<br><br><br>


<h1 align="center"><strong style="color:red ;">메시지 전송</strong></h1>
<br><br>
<div id="msg">
<br><br>
	
	<form method="post" action="<%=contextPath %>/enroll.msg">
	
		<h3 strong>보내는사람</h3>
		<div class="input-group mb-3">
  			<span class="input-group-text" id="basic-addon1">@</span>
 			<input type="text" name="send" class="form-control" placeholder="보내는사람" value="<%=loginUser.getUserId()%>" aria-label="Username" aria-describedby="basic-addon1">
		</div>
		<br><br>
		<h3 strong>받는사람</h3>

		<div class="input-group mb-3">
  			<span class="input-group-text" id="basic-addon1">@</span>
 			<input type="text" id="searchId" name="searchId" class="form-control" placeholder="받는사람 아이디를 입력해주세요." aria-label="Username" aria-describedby="basic-addon1">
<%-- 			<a href="<%=contextPath %>/searchId.msg" class="btn btn-outline-dark">검색</a>  --%>
			<button type="button" class="btn btn-outline-dark" onclick="idCheck();">검색</button>
		</div>
		<br><br>
		<h3 strong>메시지내용</h3>
		<div class="input-group">
  			<span class="input-group-text">메시지내용</span>
 			<textarea name="content" id="content" class="form-control" aria-label="With textarea"></textarea>
		</div>
		<br><br>
		<button class="btn btn-primary" type="submit">전송</button>
		<a class="btn btn-danger" href="/ConnectWithBlood/index.jsp" role="button">취소</a>
		
		<input type="hidden" name="sendUserNo" value="<%=loginUser.getUserNo()%>">
	</form>
	

</div>

<script>
	$(function idCheck() {
		
		<%
		ArrayList <Member> list = (ArrayList<Member>)request.getAttribute("list");
		String sbid = list.get(0).getUserId();
		%>

		var id = $("#searchId").val();

		var sb = "";
		
		
		sb = "<%=sbid%>";
		
		test.innerHTML = sb;
// 		console.log(sb);
		
		if(id==sb){
			test.innerHTML = "성공";

		}
	
	});


</script>

<br><br>
<!-- footer.jsp include -->
<%@ include file="../common/footer.jsp" %>
	
</body>
</html>