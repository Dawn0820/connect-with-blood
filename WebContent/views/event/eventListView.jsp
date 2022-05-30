<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "event.model.vo.Event,java.util.ArrayList,common.PageInfo"%>

<%
	ArrayList<Event> list = (ArrayList<Event>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");

	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		margin-top: 20px;
	}

  .table{
    width: 1000px;

  }
  
  .list-area{
        width: 800px;
        margin: auto;

    }
</style>
</head>
<body>

	<!-- header.jsp include -->
    <%@ include file="../common/header.jsp" %>
    
    <div class="outer">
   		<br><br>
		<h2 align="center">EVENT</h2>
		<br><br>
    

		<div class="list-area">
        <%if(!list.isEmpty()) {%>
	        <%for(Event e : list) {%>
	            <div class="thumbnail" align="center">
                    <input type="hidden" value="<%=e.getEventNo()%>">
	                <img src="<%=contextPath %>/<%=e.getTitleImg() %>" alt="" width="200px" height="150px">
	                <p>
	                    No. <%=e.getEventNo() %> <%=e.getEventTitle() %><br>
	                    조회수 : <%=e.getEventCount() %><br>
	                    <%=e.getEventProgress() %>
	                    
	                </p>
	            </div>
			<%} %>
 		<%}else{ %>
 			 등록된 게시글이 없습니다
 		<%} %>
        </div>


	<script>
      $(function(){
            $(".thumbnail").click(function(){
                location.href = "<%=contextPath%>/detail.ev?eno="+$(this).children().eq(0).val();
            })
        })
    </script>
	

      <br><br>

      <div align="center"> 
<%--         <a href="<%=contextPath%>/enrollForm.ev" class="btn btn-outline-secondary">글작성</a> --%>
      </div>  
      </div>

      <!--페이징-->
	
	<!-- footer.jsp include -->
	<%@ include file="../common/footer.jsp" %>
	
	
<!-- Bootstrap.bundle.min.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>