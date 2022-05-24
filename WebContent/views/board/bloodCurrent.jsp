<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>혈액 보유 현황</title>
<!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style>
	.cap2{
        color: red;

    }
</style>

</head>
<body>

    <!-- header.jsp include -->
    <%@ include file="../common/header.jsp" %>
	<br><br>
  <h3 align="center">적혈구 체제</h3>
    <table border="1" style="color: black; width: 1000px;"  class="table" align="center">
        <caption class="cap2">* 적정혈액보유량은 일평균 5일분이상입니다.</caption>
        <caption class="cap">2022.05.10 기준 / 단위 : unit</caption>
        <thead>
            <tr>
                <th>구분</th>
                <th>합계</th>
                <th>O형</th>
                <th>A형</th>
                <th>B형</th>
                <th>AB형</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1일 소요량</td>
                <td>5,209</td>
                <td>1,424</td>
                <td>1,716</td>
                <td>1,326</td>
                <td>563</td>
            </tr>
            <tr>
                <td>현재 혈액 보유량</td>
                <td>33,586</td>
                <td>8,135</td>
                <td>12,389</td>
                <td>9,138</td>
                <td>3,924</td>
            </tr>
            <tr>
                <td>보유상태</td>
                <td>6.7일분</td>
                <td>5.7일분</td>
                <td>7.2일분</td>
                <td>6.9일분</td>
                <td>7.0일분</td>
            </tr>
        </tbody>
    </table>


    <h3 align="center">농축 혈소판</h3>
    <table border="1" style="color: black; width: 1000px;" class="table" align="center">
        <caption class="cap">2022.05.10 기준 / 단위 : unit</caption>
        <thead>
            <tr>
                <th>구분</th>
                <th>합계</th>
                <th>O형</th>
                <th>A형</th>
                <th>B형</th>
                <th>AB형</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1일 소요량</td>
                <td>4,365</td>
                <td>1,210</td>
                <td>1,501</td>
                <td>1,160</td>
                <td>494</td>
            </tr>
            <tr>
                <td>현재 혈액 보유량</td>
                <td>6,828</td>
                <td>1,850</td>
                <td>2,460</td>
                <td>1,706</td>
                <td>812</td>
            </tr>
            <tr>
                <td>보유상태</td>
                <td>1.6일분</td>
                <td>1.5일분</td>
                <td>1.6일분</td>
                <td>1.5일분</td>
                <td>1.6일분</td>
            </tr>
        </tbody>
    </table>
    	<!-- footer.jsp include -->
	<%@ include file="../common/footer.jsp" %>
	
	
    <!-- Bootstrap.bundle.min.js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>