<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>혈액 보유 현황</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
  <h3>적혈구 체제</h3>
    <table border="1" style="color: black; width: 1000px;"  class="table" >
        <caption class="cap">2022.05.10 기준 / 단위 : unit</caption>
        <caption class="cap2">* 적정혈액보유량은 일평균 5일분이상입니다.</caption>
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


    <h3>농축 혈소판</h3>
    <table border="1" style="color: black; width: 1000px;" class="table">
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
</body>
</html>