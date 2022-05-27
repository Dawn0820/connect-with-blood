<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, question.model.vo.*"%>

<%
	Question que = (Question)request.getAttribute("que");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
	body{
		margin-top: 20px;
	}

	table p{
		border: 1px solid grey;
	}
</style>
</head>
<body>

	<!-- header.jsp include -->
    <%@ include file="../common/header.jsp" %>

	
	<h1>QnA 상세보기 테스트</h1>
	


	<table class="table table-bordered" style="width:700px ;" align="center">
		<tr>
			<th colspan="4"><%=que.getQuestionTitle() %></th>
		</tr>
		<tr>
			<td width="15%">작성자</td>
			<td width="35%"><%=que.getQuestionWriter() %></td>
			<td width="15%">카테고리</td>
			<td width="35%"><%=que.getCategoryNo() %></td>
		</tr>
		<tr>
			<th colspan="4"><%=que.getQuestionDate() %></th>
		</tr>
		<tr>
			<td colspan="4">
				<p style="height:200px;"><%=que.getQuestionContent() %></p>
			</td>
		</tr>


	</table>

	<br><br>
	


	<div align="center">
		<a href="<%=contextPath%>/list.que?qpage=1" class="btn btn-success">목록가기</a>


		<!--수정/삭제 : 로그인&작성자만 가능-->
		<a href="<%=contextPath%>/delete.que">삭제하기</a>
		<a href="<%=contextPath%>/updateForm.que">수정하기</a>
		
	</div>
	<!-- footer.jsp include -->
	<%@ include file="../common/footer.jsp" %>
	
	
<!-- Bootstrap.bundle.min.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>