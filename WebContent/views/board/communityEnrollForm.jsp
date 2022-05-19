<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
        background-color: cornsilk;
	    color: rgb(12, 5, 100);
	    width: 1000px;
	    margin: auto;
	    margin-top: 50px;
        height: 600px;
    }
    #enroll-form>table{
        border:1px solid darkblue;
    }
    #enroll-form input,#enroll-form textarea{
        width: 100%;
        box-sizing: border-box;
    }
</style>
</head>
<body>
    <div class="outer">
        <br>
        <h2 align="center">일반 게시글 작성</h2>

        <form action="<%=contextPath%>/insert.co" method="post" id="enroll-form" enctype="multipart/form-data" >
            <!--enctype에서 multi~ 타입으로 지정해야 파일전송까지 할 수 있다!!(첨부파일..)-->

<%--             <input type="hidden" name="userNo" value="<%=loginUser.getUserNo()%>"> --%>

            <table align="center">
                <tr>
                    <th>카테고리</th>
                    <td>
                        <select name="category">
                            <!-- 동적인 방법 : 카테고리 테이블 수정하면 별도의 수정 없이 자동 반영이 된다 -->
<%--                             <%for(Category c : list){ %> --%>
<%--                             	<option value="<%=c.getCategoryNo()%>"><%=c.getCategoryName() %></option> --%>
<%--                             <%} %> --%>
                            
                            

                            
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
</body>
</html>