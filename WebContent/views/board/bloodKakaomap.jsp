<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
	</style>
</head>
<body>


    <!-- header.jsp include -->
    <%@ include file="../common/header.jsp" %>
    
	<div id="map" style="width:1000px;height:800px; margin-top: 200px;margin-left: 34%;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1f7c7ae6b81c3f02f9751b96805e5538&libraries=services"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(35.910701, 127.910667),
			level: 13
		};

		var map = new kakao.maps.Map(container, options);
		
		// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
		var positions = [
		    {
		        content: '<div>서울특별시 <br>인원 : </div>', 
		        latlng: new kakao.maps.LatLng(37.550705, 126.970677)
		    },
		    {
		        content: '<div>경기도</div>', 
		        latlng: new kakao.maps.LatLng(37.150936, 127.169477)
		    },
		    {
		        content: '<div>충북</div>', 
		        latlng: new kakao.maps.LatLng(36.950879, 127.769940)
		    },
		    {
		        content: '<div>대구,경북</div>',
		        latlng: new kakao.maps.LatLng(35.491393, 128.370738)
		    },
		    {
		        content: '<div>광주,전남</div>',
		        latlng: new kakao.maps.LatLng(35.155846, 126.834412)
		    },
		    {
		        content: '<div>울산</div>',
		        latlng: new kakao.maps.LatLng(35.491393, 129.250738)
		    },
		    {
		        content: '<div>제주</div>',
		        latlng: new kakao.maps.LatLng(33.451393, 126.570738)
		    },
		    {
		        content: '<div>인천</div>',
		        latlng: new kakao.maps.LatLng(37.455238, 126.705322)
		    },
		    {
		        content: '<div>강원</div>',
		        latlng: new kakao.maps.LatLng(37.3704740, 128.3899769)
		    },
		    {
		        content: '<div>대전,충남</div>',
		        latlng: new kakao.maps.LatLng(36.3504119, 127.3845475)
		    },
		    {
		        content: '<div>전북</div>',
		        latlng: new kakao.maps.LatLng(35.491393, 127.060738)
		    },
		    {
		        content: '<div>경남</div>',
		        latlng: new kakao.maps.LatLng(35.101393, 128.360738)
		    },
		    {
		        content: '<div>부산</div>',
		        latlng: new kakao.maps.LatLng(35.091393, 129.020738)
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
		    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
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