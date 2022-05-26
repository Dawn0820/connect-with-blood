<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,member.model.vo.*"%>
<%
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> <!-- 규민파트ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 

<!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style>
	body{              
		margin-top: 100px;
	}
</style>
</head>
<body>

	<!-- header.jsp include -->
    <%@ include file="../common/header.jsp" %>
	

		<table id="example-table-1" width="100%" class="table table-dark">
	  <thead align="center">
	    <tr>

	      <th scope="col">회원 아이디</th> <!-- USER_ID -->
	      <th scope="col">이름</th>		<!-- USER_NAME -->
	      <th scope="col">등급</th>		<!-- USER_GRADE -->
	      <th scope="col">가입일</th> <!-- USER_ENROLLDATE -->
	      <th scope="col">최근 로그인 시간</th> <!-- USER_LOGIN -->
	      <th scope="col">회원 상태</th> <!-- USER_STATUS -->
	      

	    </tr>
	  </thead align="center">
	  <tbody align="center">
	  
	  <%for(Member ms : list) {%>
	  	<tr>
	  	<td><%=ms.getUserId() %></td>
	  	<td><%=ms.getUserName() %></td>
	  	<td><%=ms.getUserGrade() %></td>
	  	<td><%=ms.getUserEnrolldate() %></td>
	  	<td><%=ms.getUserLogindate() %></td>
	  	<td><%=ms.getUserStatus() %></td>
	  	</tr>
	  <%} %>
	  
	  </tbody align="center">
	</table>

	
    <script>
    
        $(function(){
            $("tbody>tr").click(function(){
                // console.log($(this).children().eq(1).text());
                //this는 클릭이벤트가 발생된 tr요소 우리가 원하는건 tr안에있는 td의 각각 요소 정보
                //this.children 하면 td를 접근 - 각 요소마다 접근해야하니 each로 반복
                //반복할땐 index로 element를 접근하기에 element에는 td가 담겨있음 
                $(this).children().each(function(index,element){
                    console.log("index는 "+index+" 담겨있는 요소는 "+$(element).text());
                    $("#s"+index).text($(element).text());
                });


            });

        });
    </script>




	
	<!-- footer.jsp include -->
	<%@ include file="../common/footer.jsp" %>

<!-- Bootstrap.bundle.min.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>