<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, board.model.jsoup.*"%>
<%
	BloodMapJsoup bloodMapJsoup = new BloodMapJsoup(); 
// 	String[] seoul = bloodMapJsoup.seoul();
	String seoul = bloodMapJsoup.seoul();


%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Kakao 지도 시작하기</title>
	<!-- Bootstrap core CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	
	<style>
		#id{
			margin-right: 200px;
		}
		a{
			text-decoration: none;
			color: brown;
		}
	</style>
</head>
<body>


    <!-- header.jsp include -->
    <%@ include file="../common/header.jsp" %>
    
	<div id="map" style="width:1000px;height:800px; margin-top: 200px;margin-left: 30%;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1f7c7ae6b81c3f02f9751b96805e5538&libraries=services"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(35.910701, 127.910667),
			level: 13
		};

		var map = new kakao.maps.Map(container, options);
		
		
		////병원 이름으로 마커 위치, 이름 바꾸고 병원 홈페이지로 연결하기
		
		
		// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
		var positions = [
		    {
		        content: '<div><a href="https://www.bloodinfo.net/blood_house.do?action=detail&sitecode=51100001">서울중앙혈액원</a></div>', 
		        latlng: new kakao.maps.LatLng(37.5484638, 126.8698072)
		    },
		    {
		        content: '<div><a href="https://www.bloodinfo.net/blood_house.do?action=detail&sitecode=51100002">서울남부혈액원</a></div>', 
		        latlng: new kakao.maps.LatLng(37.4824625, 127.0430492)
		    },
		    {
		        content: '<div><a href="https://www.bloodinfo.net/blood_house.do?action=detail&sitecode=51100003">서울동부혈액원</a></div>', 
		        latlng: new kakao.maps.LatLng(37.6530259, 127.0581539)
		    },
		    {
		        content: '<div><a href="https://www.bloodinfo.net/blood_house.do?action=detail&sitecode=51100004">부산혈액원</a></div>',
		        latlng: new kakao.maps.LatLng(35.1518684, 129.0670203)
		    },
		    {
		        content: '<div><a href="https://www.bloodinfo.net/blood_house.do?action=detail&sitecode=51100005">경기혈액원</a></div>',
		        latlng: new kakao.maps.LatLng(37.2287154, 127.0312056)
		    },
		    {
		        content: '<div><a href="https://www.bloodinfo.net/blood_house.do?action=detail&sitecode=51100006">인천혈액원</a></div>',
		        latlng: new kakao.maps.LatLng(37.4196076, 126.6899472)
		    },
		    {
		        content: '<div><a href="https://www.bloodinfo.net/blood_house.do?action=detail&sitecode=51100007">강원혈액원</a></div>',
		        latlng: new kakao.maps.LatLng(37.8552763, 127.7318914)
		    },
		    {
		        content: '<div><a href="https://www.bloodinfo.net/blood_house.do?action=detail&sitecode=51100008">충북혈액원</a></div>',
		        latlng: new kakao.maps.LatLng(36.6241564, 127.4510086)
		    },
		    {
		        content: '<div><a href="https://www.bloodinfo.net/blood_house.do?action=detail&sitecode=51100009">대전세종충남혈액원</a></div>',
		        latlng: new kakao.maps.LatLng(36.3656891, 127.4398468)
		    },
		    {
		        content: '<div><a href="https://www.bloodinfo.net/blood_house.do?action=detail&sitecode=51100010">전북혈액원</a></div>',
		        latlng: new kakao.maps.LatLng(35.8560289, 127.0561302)
		    },
		    {
		        content: '<div><a href="https://www.bloodinfo.net/blood_house.do?action=detail&sitecode=51100011">광주전남혈액원</a></div>',
		        latlng: new kakao.maps.LatLng(35.1119472, 126.8835505)
		    },
		    {
		        content: '<div><a href="https://www.bloodinfo.net/blood_house.do?action=detail&sitecode=51100012">대구경북혈액원</a></div>',
		        latlng: new kakao.maps.LatLng(35.8714354, 128.6014455)
		    },
		    {
		        content: '<div><a href="https://www.bloodinfo.net/blood_house.do?action=detail&sitecode=51100013">경남혈액원</a></div>',
		        latlng: new kakao.maps.LatLng(35.234773, 128.686453)
		    },
		    {
		        content: '<div><a href="https://www.bloodinfo.net/blood_house.do?action=detail&sitecode=5110014">제주특별자치도혈액원<br></a></div>',
		        latlng: new kakao.maps.LatLng(33.491844, 126.520514)
		    },
		    {
		        content: '<div><a href="https://www.bloodinfo.net/blood_house.do?action=detail&sitecode=51100007">울산혈액원</a></div>',
		        latlng: new kakao.maps.LatLng(35.5383773, 129.3113596)
		    }
		    
		];
		
		for (var i = 0; i < positions.length; i ++) {
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng // 마커의 위치
		    });

		    // 마커에 표시할 인포윈도우를 생성합니다 
		    var infowindow = new kakao.maps.InfoWindow({
		        content: positions[i].content // 인포윈도우에 표시할 내용
		    });

		    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
		    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
		    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
		    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		    kakao.maps.event.addListener(marker, 'click', makeOutListener(infowindow));
		}

		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
		function makeOverListener(map, marker, infowindow) {
		    return function() {
		        infowindow.open(map, marker);
		    };
		}

		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(infowindow) {
		    return function() {
		        infowindow.close();
		    };
		}
		
		
	</script>
	<br><br><br><br>


	<!-- footer.jsp include -->
	<%@ include file="../common/footer.jsp" %>
	
    <!-- Bootstrap.bundle.min.js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>