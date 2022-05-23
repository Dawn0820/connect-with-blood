<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>회원가입</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>


    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>


<style>

    .inner{
        position: absolute;
        padding: 150px;
    }

    .h{text-align: center;}
    #smallH{color: darkred;}

    .btn1{float: center;}
    #address{ width: 400px;}
    #userId{float: left;}
    #userPw{clear: both;}
    .btn-outline-danger{
        height: 30px;
        text-align: center;
    }
    #joinBtn{
        font-size: 25px;
        padding: 10px;
        background-color: brown;
    }
    #joinBtn:hover{
        background-color: darkred;
    }
    fieldset{border: dashed gray; padding: 20px; }

    #star{
        text-align: right;
    }
</style>


    
</head>
<body>



	<!-- header.jsp include -->
    <%@ include file="../common/header.jsp" %>
    
    
    
    <div class="inner">
    <h1 class="h">Connect-with-blood 회원가입을 환영합니다!</h1>
    <h3 class="h" id="smallH">"Connect with LIFE, Connect with LOVE"</h3>

    <br><br>

    <div class="progress">
        <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" style="width:100%">2단계</div>
    </div>

    <br><br>
    
    <p id="star">* 필수 입력 사항</p>

    <form action="test.do">
        <fieldset>
    <form name="registerform" method="post" enctype="multipart/form-data" action="./register">
        <div class="fieldlabel"><label for="userId">* 아이디</label></div>
        <div class="formfield"><input type="text" id="userId" name="userId" maxlength="20" value=""></div>
        &nbsp; &nbsp;
        <button type="button" class="btn btn-outline-danger">아이디 중복 체크</button>

        <br><br>
        <div class="fieldlabel"><label for="userPw" id="userPw">* 패스워드</label></div>
        <div class="formfield">
<input type="password" id="userPw" name="userpPw" maxlength="20" autocomplete="off">
</div><br>
        <div class="fieldlabel"><label for="userPwCheck" style="color: gray;">* 패스워드확인</label></div>
        <div class="formfield">
<input type="password" id="userPwCheck" name="userPwCheck" maxlength="20" autocomplete="off">
</div> <br>
        <div class="fieldlabel"><label for="userName">* 이름</label></div>
        <div class="formfield"><input type="text" id="userName" name="userName" maxlength="20" value=""></div>
        <br>
        <div class="fieldlabel"><label for="nickName">* 닉네임</label></div>
        <div class="formfield"><input type="text" id="nickName" name="nickName" maxlength="20" value=""></div>

        <br>
        <div class="fieldlabel"><label for="address">- 주소</label></div>
        <div class="formfield"><input type="text" id="address" name="address" maxlength="40" value=""></div>

        <br>
        <div class="fieldlabel"><label for="email01">- 이메일</label></div>
        <div class="formfield"><input type="text" id="email01" name="email01" size="20" maxlength="20" 
             value="" autocomplete="off"><span>@</span>
            <input id="email02" name="email02" list="domains" placeholder="도메인 입력/선택">
            <datalist id="domains">
                <option value="naver.com">
                <option value="daum.net">
                <option value="gmail.com">
                <option value="yahoo.co.kr">
            </datalist>
        </div><br>
        
        <div class="fieldlabel"><label for="mPhone1">- 연락처</label></div>
        <div class="formfield">
            <select id="mPhone1" name="mPhone1">
                <option value="011">010</option>
                <option value="011">011</option>
                <option value="016">017</option>
                <option value="018">018</option>
                <option value="019">019</option>
            </select>-
            <input id="mPhone2" name="mPhone2" type="number" value="" size="4" maxlength="4" autocomplete="off" style="width: 100px">-
            <input id="mPhone3" name="mPhone3" type="number" value="" size="4" maxlength="4" autocomplete="off" style="width: 100px">
        </div> <br>
        <div class="fieldlabel"><label>- 이메일수신</label></div>
        <div class="formfield">
            <input type="radio" name="emailYn" value="Y" checked>수신
            <input type="radio" name="emailYn" value="N">미수신
        </div><br>
        <div class="fieldlabel"><label>- SMS수신</label></div>
        <div class="formfield">
            <input type="radio" name="smsYn" value="Y"checked>수신
            <input type="radio" name="smsYn" value="N">미수신
        </div><br>
        
        <div class="blood_abo"><label>* 혈액형 타입</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <select name="blood" id="blood">
                <option value="A형">A형</option>
                <option value="B형">B형</option>
                <option value="AB형">AB형</option>
                <option value="O형">O형</option>
            </select>

        <br>
        </div>
        <div class="blood_rh"> <label>* RH형 타입</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="rh" value="RH+" alt="blood" checked>RH+
            <input type="radio" name="rh" value="RH-" alt="blood">RH-
        </div>

        <br>
        <div class="blood_special"> <label>* 특수 혈액형 유무</label> &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="spc" value="spc" alt="blood" >해당 &nbsp;
            <input type="radio" name="spc" value="spc" alt="blood" checked>해당사항 없음
        </div>

        <br>
        <div class="fieldlabel"><label>- 성별</label></div>
        <div class="formfield">
            <input type="radio" name="sex" value="no" alt="no" checked >선택안함 &nbsp;
            <input type="radio" name="sex" value="남" alt="남자" checked >남자 &nbsp;
            <input type="radio" name="sex" value="여" alt="여자" >여자
        </div> <br>
        <div class="fieldlabel"><label for="profile">- 프로필사진</label></div>
        <div class="formfield" >
            <input type="file" id="profile" name="profile" required class="btn btn-outline-secondary"> 
        </div> 
        
    </fieldset>
        
        <br><br>


        <div class="btn1">
            <!-- <input type="reset" value="초기화" class="btn btn-secondary"> -->
            <input type="submit" value="회원가입" class="btn btn-danger btn-block" id="joinBtn" onclick="joinAlert();">
        </div>

        <script>
            function joinAlert(){
                alert("회원가입을 축하합니다!");
            }
        </script>
    </form>



</form>
</div>



	<!-- footer.jsp include -->
	<%@ include file="../common/footer.jsp" %>
	
	
	

</body>
</html>