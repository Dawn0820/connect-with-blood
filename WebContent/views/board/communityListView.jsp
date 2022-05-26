<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "board.model.vo.Community, java.util.ArrayList, common.PageInfo"%>

<%

	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Community> list = (ArrayList<Community>)request.getAttribute("list");

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
</style>
</head>
<body>

	
	<!-- header.jsp include -->
    <%@ include file="../common/header.jsp" %>
    
    <div class="outer">
    
   
    <div class="inner">
      <table align="center" class="table table-hover">
        <thead>
            <tr>
              <th>No</th>
              <th>카테고리</th>
              <th>제목</th>
              <th>작성자</th>
              <th>작성일</th>
              <th>조회수</th>
            </tr>
        </thead>
        <tbody>
        
        	<%if(list.isEmpty()){ %>
        	<tr>
        		<td colspan="6">작성된 게시글이 없습니다</td>
        	</tr>
        
       		<%}else{ %>
            		<%for(Community c : list) {%>
		            <tr>
		              <td><%=c.getCommNo() %></td>
		              <td><%=c.getCategoryNo() %></td>
		              <td><%=c.getCommTitle() %></td>
		              <td><%=c.getCommWriter() %></td>
		              <td><%=c.getCommDate() %></td>
		              <td><%=c.getCommCount() %></td>
		            </tr>
		            <%} %>
            	<%} %>
        </tbody>
      </table>
    </div>


      <script>
        $(function(){
          $(".table>tbody>tr").click(function(){
            location.href = "<%=contextPath%>/detail.co?cno="+$(this).children().eq(0).text();
          })
        })

      </script>
	

      <br><br>

      <div align="center"> 
        <a href="<%=contextPath%>/enrollForm.co" class="btn btn-info">글작성</a>
      </div>  
      </div>
		
		<br><br>
      <!--페이징-->
       <div class="paging-area" align="center">
        	<%if(currentPage!=1) {%>
            <button onclick="location.href='<%=contextPath %>/list.co?cpage=<%=currentPage-1 %>'">&lt;</button>
			<%} %>
			
			<%for(int i=startPage;i<endPage+1;i++) {%>
			<%if(i!=currentPage){ %>
			<button onclick="location.href='<%=contextPath %>/list.co?cpage=<%=i %>'"><%=i %></button>
			<%}else{ %> <!-- 현재 내가 있는 페이지는 클릭이 안되도록 -->
			<button disabled><%=i %></button> 
			<%} %>
			<%} %>
			
			<%if(currentPage!=maxPage){ %>          
        	<button onclick="location.href='<%=contextPath %>/list.co?cpage=<%=currentPage+1 %>'">&gt;</button>
        	<%} %>
        
        
        </div>
	
	<!-- footer.jsp include -->
	<%@ include file="../common/footer.jsp" %>
	
	
<!-- Bootstrap.bundle.min.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>