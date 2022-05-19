<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Insert title here</title>
<style>
    .outer{
        background-color: cornsilk;
        width: 1000px;
	    margin: auto;
	    margin-top: 50px;
        height: 600px;


    }
</style>
</head>
<body>

    <div class="outer">
        <br>
        <h2 align="center">이벤트 작성하기</h2>
        <form id="eventEnrollForm" action="/" method="post">
            <table align="center">
                <tr>
                    <th>카테고리</th>
                    <td>
                        <select name="category">
                            <!-- 동적인 방법 : 카테고리 테이블 수정하면 별도의 수정 없이 자동 반영이 된다 -->
                            <%for(Category c : list){ %>
                            	<option value="<%=c.getCategoryNo()%>"><%=c.getCategoryName() %></option>
                            <%} %>
                            
                            
                           
                            
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>제목</th>
                    <td><input type="text" name="title" required></td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td><textarea name="content" cols="30" rows="10" required></textarea></td>
                </tr>
                <tr>
                    <th>첨부파일</th>
                    <td><input type="file" name="upfile"></td>
                </tr>

            </table>

            <br>
            <div align="center">
                <button type="submit">작성하기</button>
                <button type="reset">취소</button>
            </div>




        </form>


    </div>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>