<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  .outer{
  	
    border: 1px solid red;

  }
  .inner{
    border: 1px solid blue;
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
    <h2>이벤트 목록</h2>
    
    <br><br>
	<a href="views/board/notice/noticeListView.jsp">이벤트 테스트</a>
    
    <div class="inner">
      <table align="center" class="table table-hover">
        <thead>
            <tr>
              <th>No</th>
              <th>제목</th>
              <th>작성자</th>
              <th>작성일</th>
              <th>조회수</th>
            </tr>
        </thead>
        <tbody>
            <tr>
              <td>1</td>
              <td>이벤트 작성</td>
              <td>admin</td>
              <td>2022-04-30</td>
              <td>61</td>
            </tr>
        </tbody>
      </table>
    </div>


      <script>
        $(function(){
          $(".table>tbody>tr").click(function(){
            location.href = "<%=contextPath%>/detail.ev"
          })
        })

      </script>
	

      <br><br>

      <div align="center"> 
        <a href="<%=contextPath%>/enrollForm.ev" class="btn btn-info">글작성</a>
      </div>  
      </div>

      <!--페이징-->
	
	<!-- footer.jsp include -->
	<%@ include file="../common/footer.jsp" %>
	
	
<!-- Bootstrap.bundle.min.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>