<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    .outer{
        /*  border: 1px solid blue; */
        width:1000px;
        height: 800px;
        margin: auto;
    }

    .mb-3{
        width: 800px;
    }
    #form22{
        border: 1px solid red;
    }

</style>
</head>
<body>
   
  	 <!-- header.jsp include -->
	 <%@ include file="../common/header.jsp" %>
	
     
        <form action="<%=contextPath %>/update.qu" method="post" id="form22" enctype="multipart/form-data" >
        
        <div class="outer position-relative" >
        <br>
        <h2 align="center">QnA 글 수정하기</h2>
        <br>

            <div class="position-absolute top-50 start-50 translate-middle">

                <!--제목-->
                <div class="input-group mb-3">
                    <input type="text" class="form-control" id="title" aria-label="Text input with dropdown button" placeholder="제목">
                </div>

                <!--내용-->
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label" id="content" >내용</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="10" style="resize:none" placeholder="내용"></textarea>
                </div>

                <!--첨부파일-->
                <input type="file" id="file1" name="file1">
                <br><br>
                
                
                <div align="center">
                    <button type="submit"  class="btn btn-outline-secondary">등록하기</button>
                    <button type="reset"  class="btn btn-outline-secondary">취소</button>
                </div> 
            
        
            </div>
        </div>
</form>

        
	
	
   
   
   
   
   	<!-- footer.jsp include -->
	<%@ include file="../common/footer.jsp" %>


	<!-- Bootstrap.bundle.min.js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
   
</body>
</html>