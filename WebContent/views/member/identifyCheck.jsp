<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>실명인증</title>
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

    .h{text-align: center;}
    #smallH{color: darkred;}

    fieldset{border: 0.5px dashed lightgray; padding: 20px; }
   
    .inner{
        position: absolute;
        padding: 150px;
    }

    .btnBox{
        text-align: center;
    }
    .btn{
        background-color: brown;
    }
    #onesPhone{ 
        background-color: lightgray;
        text-align: center;
    }

    #phoneImg{
        text-align: center;
    }

    </style>

<!-- 이미지 왜 왼쪽에 붙었냐 -->
<!-- 회색줄 어디까지 갈거냐 -->

</head>
<body>
    
    <div class="inner">
    <h1 class="h">Connect-with-blood 회원가입을 환영합니다!</h1>
    <h3 class="h" id="smallH">"Connect with LIFE, Connect with LOVE"</h3>
    
    <br><br>
    
    <div class="progress">
        <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" style="width:65%">2단계</div>
    </div>
    
    <br><br>
    

    <div class="in">
    <form action="" method="post">
        <fieldset>
            <legend align="center"><b>실명확인</b> <br></legend>
            <div class="law">
                <p>
                주민등록법 제37조 제9호에 의거 [Connect-with-blood]에서는 회원가입 시 실명 확인 절차를 거치고 있습니다. 타인의 정보 및 주민등록번호를 도용하여 가입하는 경우 3년 이하의 징역 또는 1천만원 이하의 벌금이 부과될 수 있습니다.
                <br><br>
                ※ 만14세 미만인 경우 법정대리인의 본인인증 과정이 추가됨. 
                </p>
            </div>

            <br><br><br>

            <div class="certification">
            <img src="img/pngwing.com.png" alt="phoneImg" id="phoneImg">

                <p id="onesPhone">본인 명의로 된 휴대폰으로 인증번호를 전송받아 가입하실 수 있습니다</p> 
                <div class="btnBox" ><input class="btn btn-danger" type="button" value="휴대폰 인증하기"></div>
            </div>

        </fieldset>
    </form>
    </div>
</div>

</body>
</html>