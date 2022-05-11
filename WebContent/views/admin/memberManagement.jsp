<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Checkout example · Bootstrap v5.1</title>

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/checkout/">

    <!-- Bootstrap core CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	
	<!-- Custom styles for this template -->
    <link href="../../resources/css/memberManagement.css" rel="stylesheet">

	<!-- 부트스트랩 아이콘 사용 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
  
  </head>
 <body class="bg-light" >
    
<div class="container" align="center">
  <main>
    <div class="py-5 text-center">
    	
      <!-- fs-4 는 아이콘 크기 조절 -->
      <i class="bi bi-emoji-smile fs-4"></i> 
      <h2>회원관리</h2>
    </div>

			<div class="col-12">
              <label for="userid" class="form-label">아이디</label>
              <div class="input-group has-validation">
                
                <input type="text" class="form-control" id="username" placeholder="아이디" required>
              <div class="invalid-feedback">
                  Your username is required.
                </div>
              </div>
            </div>



            <div class="col-12">
              <label for="username" class="form-label">이름</label>
              <div class="input-group has-validation">
                
                <input type="text" class="form-control" id="username" placeholder="이름" required>
              <div class="invalid-feedback">
                  Your username is required.
                </div>
              </div>
            </div>
            
            <div class="col-12">
              <label for="birth" class="form-label">생년월일</label>
              <div class="input-group has-validation">
                
                <input type="text" class="form-control" id="username" placeholder="생년월일" required>
              <div class="invalid-feedback">
                  Your username is required.
                </div>
              </div>
            </div>
            
            

            <div class="col-12">
              <label for="email" class="form-label">이메일</label>
              <input type="email" class="form-control" id="email" placeholder="you@example.com">
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>
            
            
            
            

            <div class="col-12">
              <label for="address" class="form-label">주소</label>
              <input type="text" class="form-control" id="address" placeholder="1234 Main St" required>
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>
            
            
            <div class="col-12">
              <label for="phone" class="form-label">전화번호</label>
              <div class="input-group has-validation">
                
                <input type="text" class="form-control" id="phone" placeholder="전화번호" required>
              <div class="invalid-feedback">
                  Your username is required.
                </div>
              </div>
            </div>
            
            
            <div class="col-12">
              <label for="enroll" class="form-label">가입일</label>
              <div class="input-group has-validation">
                
                <input type="text" class="form-control" id="enroll" placeholder="가입일" required>
              <div class="invalid-feedback">
                  Your username is required.
                </div>
              </div>
            </div>
            
            <div class="col-12">
              <label for="status" class="form-label">회원상태</label>
              <div class="input-group has-validation">
                
                <input type="text" class="form-control" id="status" placeholder="회원상태" required>
              <div class="invalid-feedback">
                  Your username is required.
                </div>
              </div>
            </div>
           
                    <hr class="my-4">

          <button class="w-100 btn btn-primary btn-lg" type="submit">수정완료</button>
        </form>
      </div>
    </div>
  </main>

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; ConnectWithBlood</p>
    <ul class="list-inline">
      <li class="list-inline-item"><a href="#">Privacy</a></li>
      <li class="list-inline-item"><a href="#">Terms</a></li>
      <li class="list-inline-item"><a href="#">Support</a></li>
    </ul>
  </footer>
</div>

	<!-- Custom js for this template -->

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		
	
	
    <script src="../../resources/js/memberManagement.js"  ></script>
    
    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
    
    
  </body>
</html>

