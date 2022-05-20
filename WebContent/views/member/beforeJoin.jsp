<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>회원가입 약관</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
    



    <!--모달창 bootstrap-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>






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
        fieldset>textarea, input, label{text-align: center; width: auto;}
        #b{
            margin: auto; 
            float: left;
        }
        fieldset{border: dashed gray; padding: 20px; }
        #bTop{
            text-align: left;
            float: left;
            border: none;
        }
        #content{clear: both;}
        #box{
            width: auto;
            display: inline-block;
            text-align: center;
        }
        textarea{width: auto;}

        
        #userId{
            float: left;
            
        }


        
    </style>
</head>


<body>


	<h1>testtsettesttesttest</h1>

	<!-- header.jsp include -->
    <%@ include file="../common/header.jsp" %>


    <div class="position-relative ">
    <h1 class="h">Connect-with-blood 회원가입을 환영합니다!</h1>
    <h3 class="h" id="smallH">"Connect with LIFE, Connect with LOVE"</h3>

    <br><br>



    <br><br>

    <form action="test.do" class="position-absolute top-50 start-50 translate-middle">
        <fieldset>
            <legend align="center"><b>회원가입을 위한 개인정보 수집 및 이용 안내(필수)</b></legend>
            <div id="box" >
            <input type="text" value="이용약관 동의(필수)" id="bTop"> <br>
            
            <textarea id="content" name="content" cols="38" readonly rows="8" style="resize: none;">            
                [ 1. 개인정보 수집 및 이용 목적 ]

                1) 회원관리
                
                회원 서비스 이용 및 본인확인
                
                2) 헌혈서비스 신청 및 처리
                
                회원가입 후 헌혈자 인증을 하시면 이용자의 헌혈 정보와 회원정보가 연계되어 아래의 서비스를 이용하실 수 있습니다.
                
                · 홈페이지 : 증명서 신청, 고객의소리 상담신청, 이벤트 신청, 헌혈예약, 나눔히어로즈 가입 신청
                
                · 레드커넥트 : 이벤트 신청, 헌혈예약, 나눔히어로즈 가입 신청
                
                3) 헌혈서비스 조회
                
                회원가입 후 헌혈자 인증을 하시면 이용자의 헌혈 정보와 회원정보가 연계되어 아래의 서비스를 이용하실 수 있습니다.
                
                · 홈페이지 : 헌혈횟수 및 검사결과 조회, 헌혈예약내역, 증명서 신청내역, 이벤트 신청내역, 커뮤니티 이용내역, 상담내역, 기부권 사용내역, ABO Friends 정보, 명예의전당 내역
                
                · 레드커넥트 : 헌혈횟수 및 검사결과 조회, 다음 헌혈 가능일 조회, 혈액 전달 단계 조회, 헌혈예약내역, 이벤트 참여내역, ABO Friends 및 나눔히어로즈 가입 정보 조회, 헌혈배지 조회
                
                ※ 헌혈 기록, 검사결과 조회 등의 헌혈 관련 정보는 회원가입 외에 헌혈자 인증절차를 거쳐 확인하실 수 있으며 해당 정보는 혈액정보관리시스템 내 이용자의 헌혈정보와 연계되어 서비스 됩니다.
                
                4) 기타 민원 처리
                
                이용자의 질의/상담 내용이나 불편사항, 오류 개선 등의 처리를 위해 수집된 개인정보를 이용할 수 있습니다.
                
                [ 2. 개인정보 수집항목 ]
                
                이용자는 회원가입을 하지 않아도 전자문진, 헌혈의집 찾기, 혈액보유현황, 단체헌혈예약, 공지사항·홍보자료·이벤트현황 등의 확인, 헌혈버스 운영 현황 확인 등의 서비스를 이용하실 수 있습니다. 혈액관리본부는 홈페이지/레드커넥트 서비스 이용 및 회원가입을 위해 최소한의 개인정보만을 수집합니다.
                
                ※ 혈액관리본부 홈페이지와 레드커넥트 회원정보는 통합 관리되어 둘 중 하나의 서비스에서 회원가입을 하셔도 모두 이용 가능합니다.
                
                ※ 이용자가 헌혈기록확인, 헌혈예약, 검사결과 확인, 이벤트 응모 등의 서비스를 이용하기 위해서는 회원가입 후 “헌혈자 인증”을 해야 합니다. 헌혈자 인증에 따른 개인정보 이용에 관하여는 헌혈자 인증 시 별도 동의를 받고 있습니다.
                
                회원가입을 위해 혈액관리본부가 이용자로부터 수집하는 개인정보는 아래와 같습니다.
                
                - 필수항목 : 아이디, 비밀번호, 이름, 생년월일, 성별, 휴대폰번호, 이메일주소, (만 14세 미만의 경우) 법정대리인의 정보(이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대폰번호)
                
                ※ 서비스 이용 과정에서 IP Address, 로그인 일시, 불량 이용 기록, 서비스 이용 기록, 기기정보(기기고유번호, OS버전, 모델명, 제조사 정보), 위치정보 등의 정보가 자동으로 생성되어 수집될 수 있습니다.
                
                3. 개인정보의 보유 및 이용 기간
                
                대한적십자사 혈액관리본부 홈페이지 및 레드커넥트의 회원정보는 가입일로부터 2년간 보유하며, 보유기간이 경과한 회원정보는 파기합니다. 단, 개인정보 수집·이용 재동의 절차를 거쳐 개인정보의 보유 및 이용기간을 연장할 수 있습니다.
                
                홈페이지 및 레드커넥트를 통해 수집되고 처리되는 개인정보와는 별도로 혈액관리법 제12조(기록의 작성 등)에 따라 대한적십자사 혈액관리본부는 혈액관리업무에 관한 기록을 10년간 보존할 수 있습니다.
                
                4. 이용자는 위와 같이 안내한 개인정보 수집 및 이용에 동의를 거부할 권리가 있으며, 동의를 거부할 경우 회원가입이 불가합니다.
                
                본인은 개인정보보호법 제15조에 따라 개인정보 수집 및 이용에 대한 안내사항을 고지 받고 개인정보 처리에 동의합니다.
            </textarea> <br>


        </div>

            <br><br>
            
            <!--모달창 bootstrap-->
            <div class="container">
                <!-- Button to Open the Modal -->
                <button type="button" class="btn btn-outline-danger" id="b" data-toggle="modal" data-target="#myModal" style="width: 60%;">
                  동의합니다
                </button>
              
            <button type="reset" class="btn btn-outline-secondary" id="b" style="width: 40%;">취소</button>

        </fieldset>
    </form>
</div>









    <!-- The Modal -->
    <div class="modal" id="myModal">
      <div class="modal-dialog ">
        <div class="modal-content">
        
          <!-- Modal Header -->
          <div class="modal-header">
            <h1 class="modal-title">개인정보 기입사항</h1>
            <button type="button" class="close" data-dismiss="modal">×</button>
          </div>
          
          <!-- Modal body -->
          <div class="modal-body">
            <form action="<%=contextPath%>/join.mem">
                <fieldset>
            <form name="registerform" method="post" enctype="multipart/form-data" action="./register">
                <div class="fieldlabel"><label for="userId">* 아이디</label></div>
                <div class="formfield"><input type="text" id="userId" name="userId" maxlength="20" value=""></div>
                &nbsp; &nbsp;
                <button type="button" class="btn btn-outline-danger" id="idCheck">아이디 중복 체크</button>
        
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
                <div class="fieldlabel"><label for="address">* 주소</label></div>
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
            </div>
          

          <!-- Modal footer -->
          <div class="modal-footer">
            <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
          </div>
          
        </div>
      </div>
    </div>
    
  </div>







	<!-- footer.jsp include -->
	<%@ include file="../common/footer.jsp" %>
	
	


</body>
</html>