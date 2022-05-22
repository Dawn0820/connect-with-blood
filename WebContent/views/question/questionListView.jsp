<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, question.model.vo.Question"%>
    
<%
ArrayList<Question> list = (ArrayList<Question>)request.getAttribute("list");
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
</style>
</head>
<body>

	<!-- header.jsp include -->
    <%@ include file="../common/header.jsp" %>

	<!-- 현재 공지사항 목록 출력 -->
	<table class="table table-hover">
	  <thead>
	    <tr>
	      <th scope="col">질문번호</th>
	      <th scope="col">질문종류</th>
	      <th scope="col">질문제목</th>
	      <th scope="col">질문내용</th>
	      <th scope="col">질문일자</th>
	      <th scope="col">질문작성자</th>
	    </tr>
	  </thead>
	  <tbody>
	  <!-- 질문 리스트가 비어있는 경우 -->
	  <%if(list.isEmpty()) { %>
	  	<tr>
	  		<td colspan="6">질문이 없습니다.</td> 
	  	</tr>
	  <%} else { %>
	  	<!-- 질문 리스트가 존재 -->
	  	<%for(Question q : list) {%>
	    <tr>
	      <th scope="row"><%=q.getQuestionNo() %></th>
	      <td><%=q.getQuestionTag() %></td>
	      <td><%=q.getQuestionTitle() %></td>
	      <td><%=q.getQuestionContent() %></td>
	      <td><%=q.getQuestionDate() %></td>
	      <td><%=q.getQuestionWriter() %></td>
	    </tr>
	    <%} %>
	  <%} %>
	    
	  </tbody>
	</table>
	
	<br>
	

	<!-- footer.jsp include -->
	<%@ include file="../common/footer.jsp" %>

<!-- Bootstrap.bundle.min.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>