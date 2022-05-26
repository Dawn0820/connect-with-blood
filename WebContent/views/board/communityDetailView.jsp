<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, board.model.vo.*"%>

<%
	Community comm =  (Community)request.getAttribute("comm");
	Attachment at = (Attachment)request.getAttribute("at");
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
	table{
		border: 1px solid red;
		width: 700px;
		
	}
	table p{
		border: 1px solid grey;
	}
</style>
</head>
<body>

	<!-- header.jsp include -->
    <%@ include file="../common/header.jsp" %>

	
	<h1>게시판 상세보기 테스트</h1>
	


	<table class="table table-bordered" style="width:700px;" align="center">
		<tr>
			<th colspan="4"><%=comm.getCommTitle() %></th>
		</tr>
		<tr>
			<td width="15%">작성자</td>
			<td width="35%"><%=comm.getCommWriter() %></td>
			<td width="15%">조회수</td>
			<td width="35%">???</td>
		</tr>
		<tr>
			<td colspan="2"><%=comm.getCategoryNo() %></td>
			<th colspan="2"><%=comm.getCommDate() %></th>
		</tr>
		<tr>
			<td colspan="4">
				<p style="height:200px;"><%=comm.getCommContent() %></p>
			</td>
		</tr>
		<tr>
			<td>첨부파일</td>
			<td colspan="3">
                	<%if(at==null) {%>
                		첨부파일이 없습니다.
                	<%}else{ %>
                		<a download="<%=at.getOriginName() %>" href="<%=contextPath%>/<%=at.getFilePath()+at.getChangeName()%>"><%=at.getOriginName() %></a>
                	<%} %>
            	</td>
		</tr>
	

	</table>

	<br><br>
	


	<div align="center">
		<a href="<%=contextPath%>/list.co?cpage=1" class="btn btn-success">목록가기</a>
		<br>

		<!--수정/삭제 : 로그인&작성자만 가능-->
		<a href="<%=contextPath%>/delete.co?cno=<%=comm.getCommNo()%>">삭제하기</a>
		<a href="<%=contextPath%>/updateForm.co?cno=<%=comm.getCommNo()%>">수정하기</a>
		<br>
		
	</div>
	
	 <!--댓글 기능-->
        <div id="reply-area">
            <table align="center" border="1">
                <thead>
                <!-- 로그인 되어 있는 경우에만 댓글작성 가능하도록 조건 -->
<%--                 	<%if(loginUser!=null){ %> <!-- 로그인 한 경우 --> --%>
                    <tr>
                        <th>댓글<br>작성</th>
                        <td>
                            <textarea id="replyContent" cols="50" rows="3" style="resize:none"></textarea>
                        </td>
                        <td><button onclick="insertReply();">댓글 등록</button></td>
                    </tr>
<%-- 					<%}else{ %> <!-- 로그인 안한 경우 --> --%>
					<tr>
                        <th>댓글작성</th>
                        <td>
                            <textarea cols="50" rows="3" style="resize:none" readonly>로그인 후 이용가능한 서비스 입니다.</textarea>
                        </td>
                        <td><button disalbed>댓글 등록</button></td>
                    </tr>
<%-- 					<%} %> --%>
                </thead>
                <tbody>

                </tbody>
            </table>
	</div>



	<!-- footer.jsp include -->
	<%@ include file="../common/footer.jsp" %>


	<!-- Bootstrap.bundle.min.js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>