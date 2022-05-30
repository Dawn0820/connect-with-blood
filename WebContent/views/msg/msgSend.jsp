<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<!-- header.jsp include -->
<%@ include file="../common/header.jsp" %>
<br><br><br>


<h1 align="center"><strong style="color:red ;">메시지 전송</strong></h1>
<br><br>
<div id="msg">
<br><br>
	<form method="post" action="enroll.msg">
		<h3 strong>보내는사람</h3>
		<div class="input-group mb-3">
  			<span class="input-group-text" id="basic-addon1">@</span>
 			<input type="text" name="send" class="form-control" placeholder="보내는사람" aria-label="Username" aria-describedby="basic-addon1">
		</div>
		<br><br>
		<h3 strong>받는사람</h3>
		<div class="input-group mb-3">
  			<span class="input-group-text" id="basic-addon1">@</span>
 			<input type="text" name="receive" class="form-control" placeholder="받는사람" aria-label="Username" aria-describedby="basic-addon1">
		</div>
		<br><br>
		<h3 strong>메시지내용</h3>
		<div class="input-group">
  			<span class="input-group-text">메시지내용</span>
 			<textarea name="content" class="form-control" aria-label="With textarea"></textarea>
		</div>
		<br><br>
		<button class="btn btn-primary" type="submit">전송</button>
		<a class="btn btn-danger" href="/ConnectWithBlood/index.jsp" role="button">취소</a>
		
		
		
		
	</form>
</div>

<br><br>
<!-- footer.jsp include -->
<%@ include file="../common/footer.jsp" %>
	
</body>
</html>