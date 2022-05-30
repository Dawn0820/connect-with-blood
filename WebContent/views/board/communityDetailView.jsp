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
/* 		border: 1px solid red; */
		width: 700px;
		
	}
    #reply-area tr{
            border: 0px solid black;
            border-width: 0px 0px 1px 0px;
    }
</style>
</head>
<body>

	<!-- header.jsp include -->
    <%@ include file="../common/header.jsp" %>

	<br><br>
	<h2 align="center">COMMUNITY</h2>
	<br><br>


	<table class="table table-bordered" style="width:700px;" align="center">
		<tr>
			<th colspan="4"><%=comm.getCommTitle() %></th>
		</tr>
		<tr>
			<td width="30%">작성자</td>
			<td colspan="3" width="70%"><%=comm.getCommWriter() %></td>

		</tr>
		<tr>
			<th>카테고리</th>
			<td><%=comm.getCategoryNo() %></td>
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
		<a href="<%=contextPath%>/list.co?cpage=1" class="btn btn-outline-secondary">목록가기</a>

		<!--수정/삭제 : 로그인&작성자만 가능-->
		<a href="<%=contextPath%>/delete.co?cno=<%=comm.getCommNo()%>" class="btn btn-outline-secondary">삭제하기</a>
		<a href="<%=contextPath%>/updateForm.co?cno=<%=comm.getCommNo()%>" class="btn btn-outline-secondary">수정하기</a>
		<br>
		
	</div>
	<br><br>
	
	 <!--댓글 기능-->
        <div id="reply-area">
            <table align="center" >
                <thead>
                <!-- 로그인 되어 있는 경우에만 댓글작성 가능하도록 조건 -->
<%--                 	<%if(loginUser!=null){ %> <!-- 로그인 한 경우 --> --%>
                    <tr>
                        <th>댓글작성</th>
                        <td>
                            <textarea id="replyContent" cols="60" rows="3" style="resize:none"></textarea>
                        </td>
                        <td><button onclick="insertReply();" class="btn btn-outline-secondary">등록</button></td>
                    </tr>
<%-- 					<%}else{ %> <!-- 로그인 안한 경우 --> --%>
					<tr>
                        <th>댓글작성</th>
                        <td>
                            <textarea cols="60" rows="3" style="resize:none" readonly>로그인 후 이용가능한 서비스 입니다.</textarea>
                        </td>
                        <td><button disalbed class="btn btn-outline-secondary">등록</button></td>
                    </tr>
<%-- 					<%} %> --%>
                </thead>
                <tbody>

                </tbody>
            </table>
            
            <script>
               $(function(){
                    //이 함수 안에 작성하면 페이지가 읽혀지는 순간 이 함수가 실행된다 
                    selectReply();

                })
            //댓글 작성 함수
                function insertReply(){
                    //여기부터 ajax이용해서 작성한다 
                    $.ajax({
                        url : "replyInsert.co",
                        data : {
                            content : $("#replyContent").val(),
                            //$("#replyContent").val() = textarea의 입력값 가져온다 
                            cno : <%=comm.getCommNo()%>
                            //오류나는 빨간줄 상관 없음

                            //댓글 작성자 정보 session에서 꺼내오기
                            //=> AjaxReplyInsertController에서 진행
                        },
                        type : "post",
                        //보통 insert는 post로 작업 많이 한다 
                        success : function(result){ //result는 매개변수명일 뿐 다른 이름이어도 상관없다
							//console.log(result);  //성공이면 1이 콘솔에 나온다 
							
							if(result>0){ //성공이면
								selectReply(); //함수 실행
								//작성한 댓글 창 빈문자열로 바꿔주기 (초기화)
								$("#replyContent").val("");
							}
                        },
                        error : function(){
                            console.log("ajax 통신 실패");
                        }
                    })
                }

                //댓글 조회 함수
                function selectReply(){
                    $.ajax({
                        url : "replyList.co",
                        data : {
                            cno : <%=comm.getCommNo()%>
                        },
                        success : function(list){ //[{},{},{}]
                            //console.log(list); //중간점검
                            
                            //table의 tbody부분에 작성된 댓글이 보이도록 넣을 것이다
                            var row = "";
                            for(var i in list){
                                //스크립트에서의 향상된 for문은 : 가 아니라 in이다 
                                row += "<tr>"
                                    +   "<td>"+list[i].replyWriter+"</td>"
                                    +   "<td>"+list[i].replyContent+"</td>"
                                    +   "<td>"+list[i].replyDate+"</td>"
                                    +"</tr>";

                            }

                            //row를 테이블의 tbody에 넣어주기
                            $("#reply-area tbody").html(row);

                        },
                        error : function(){
                            console.log("ajax 통신 실패");
                        }
                    })
                }
            
            </script>
            
	</div>



	<!-- footer.jsp include -->
	<%@ include file="../common/footer.jsp" %>


	<!-- Bootstrap.bundle.min.js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>