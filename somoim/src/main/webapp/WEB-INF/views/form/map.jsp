<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
#mapwrap {
	width: 100%;
	height: 100%;
	position:relative;
	overflow:hidden;
	margin-left: -15px;
	margin-right: -15px;
}

#category-select-div {
	width: 130px;
	height: 100%;
	background-color: rgba(0,0,0,0.7);
	top: 10;
	left: 10;
	z-index: 5;
	position: absolute;
	overflow: hidden;
}
#category-select-div ul li{
	padding: 10px;
}
#category-select-div ul li img{
	opacity: 120%;
	cursor: pointer;
}

#map {
	width: 100%;
	height: 100%;
}

.card {
	background-color: white;
}
.card h4 {
	font-size: 15px;
	font-weight: bold;
}
.card span {
	font-size: 15px;
	color: darkgray;
}
.card-title {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 100%;
}
</style>   
 <div id="mapwrap"> 
	<!-- 카테고리 선택 -->
	<div id="category-select-div">
		<ul class="nav flex-column text-center">
			<li class="nav-item">
				<img id="search-img" src="/resources/map_images/search.png" class="rounded-circle z-depth-0"
								alt="주소 검색" height="60" data-toggle="tooltip" data-placement="right" title="주소 검색">
			</li>
			<li class="nav-item">
				<a href="/mypage/favoliteMoim.do"><img src="/resources/map_images/like.png" class="rounded-circle z-depth-0"
								alt="즐겨찾는 모임 바로가기" height="60" data-toggle="tooltip" data-placement="right" title="즐겨찾는 모임 바로가기"></a>
			</li>
		</ul>
		<hr style="border: 1px solid white; width: 80%;">
		<ul id="category-ul" class="nav flex-column text-center">
			<li class="nav-item">
				<img src="/resources/map_images/game.png" class="rounded-circle z-depth-0"
								alt="게임/오락" height="60" data-toggle="tooltip" data-placement="right" title="게임/오락">
			</li>
			<li class="nav-item">
				<img src="/resources/map_images/social.png" class="rounded-circle z-depth-0"
								alt="사교/인맥" height="60" data-toggle="tooltip" data-placement="right" title="사교/인맥">
			</li>
			<li class="nav-item">
				<img src="/resources/map_images/sports.png" class="rounded-circle z-depth-0"
								alt="운동/스포츠" height="60" data-toggle="tooltip" data-placement="right" title="운동/스포츠">
			</li>
			<li class="nav-item">
				<img src="/resources/map_images/pet.png" class="rounded-circle z-depth-0"
								alt="반려동물" height="60" data-toggle="tooltip" data-placement="right" title="반려동물">
			</li>
			<li class="nav-item">
				<img src="/resources/map_images/festival.png" class="rounded-circle z-depth-0"
								alt="문화/공연/축제" height="60" data-toggle="tooltip" data-placement="right" title="문화/공연/축제">
			</li>
		</ul>
	</div>
	<!-- 카테고리 선택 끝 -->
	
	<!-- 주소 검색창 -->
	<div id="search-div">
		
	</div>
	<!-- 주소 검색창 끝 -->
	    
	<!-- 지도 화면에 뿌리기 -->    
	<div id="map"></div>
	<!-- 지도 끝 -->  
</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fd8bf3bdcf042904f91fab5e8d922409&libraries=services"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
$(function() {
	$('[data-toggle="tooltip"]').tooltip();
	
	
	// 화면에 지도 띄우기
	var container = document.getElementById('map');
	var options = {
		center : new kakao.maps.LatLng(37.558, 126.976),
		level : 8,
	};
	var map = new kakao.maps.Map(container, options);
	var markers = [];
	// 검색용 마커
	var searchMarker = createMarker(map.getCenter());
	
	// 전체 모임 조회하기
	$.ajax({
		type:"GET",
		url:"/map/all.do",
		dataType:"json",
		success:function(moims) {
			$.each(moims, function (index, moim) {
				showMarker(moim);
			});
		}
	})
	
	// 카테고리별 모임 조회하기
	function cateMoims(cateNo) {
		$.ajax({
			type:"GET",
			url:"/map/category.do",
			data: {mainCateNo: cateNo},
			dataType:"json",
			success:function(moims) {
				$.each(moims, function (index, moim) {
					showMarker(moim);
				});
			}
		})
	}
	$("#category-ul li:eq(0) img").click(function() {
		setMarkers(null);
		cateMoims(1);
	})
	$("#category-ul li:eq(1) img").click(function() {
		setMarkers(null);
		cateMoims(2);
	})
	$("#category-ul li:eq(2) img").click(function() {
		setMarkers(null);
		cateMoims(3);
	})
	$("#category-ul li:eq(3) img").click(function() {
		setMarkers(null);
		cateMoims(4);
	})
	$("#category-ul li:eq(4) img").click(function() {
		setMarkers(null);
		cateMoims(5);
	})
	
	// 마커 셋팅하기(마커 지우기용)
	function setMarkers(map) {
		for (var i = 0; i < markers.length; i++) {
	        markers[i].setMap(map);
	    }
	}
	
	// 마커 생성하기
	function createMarker(position) {
	    var marker = new kakao.maps.Marker({
	        position: position,
	        clickable: true
	    });
	    
	    return marker;  
	}
	
	// 주소 검색하기
	function showAddress() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }
				
                var geocoder = new kakao.maps.services.Geocoder();
                geocoder.addressSearch(addr, function(result, status) {
        			if (status === kakao.maps.services.Status.OK) {
        				var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
        				// 해당 좌표로 지도 위치 이동
        				map.setLevel(3);
        				map.panTo(coords);
        				
        				// 해당 위치에 마커 생성
        				searchMarker.setPosition(coords);
        				
        				var markerImage = new kakao.maps.MarkerImage(
        		        	    'https://i1.daumcdn.net/dmaps/apis/n_local_blit_04.png',
        		        	    new kakao.maps.Size(31, 35));
        				searchMarker.setImage(markerImage);
        				
        				searchMarker.setMap(map);
        			}
                });
            }
        }).open();
    };
    $("#search-img").click(function() {
    	showAddress();
    })
	
	
	// 마커 설정하기
	function showMarker(moim) {
		var geocoder = new kakao.maps.services.Geocoder();
		geocoder.addressSearch(moim.locationDetail, function(result, status) {
			if (status === kakao.maps.services.Status.OK) {
				var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
				var marker = createMarker(coords); 
				
		        // 마커 이미지
		        var markerImage = new kakao.maps.MarkerImage(
		        	    'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png',
		        	    new kakao.maps.Size(24, 35));
		        $.ajax({
	        		type:"GET",
	        		url:"/map/isLike.do",
	        		data: {moimNo: moim.moimNo},
	        		success:function(isLike) {
	        			if(isLike) {
	        				marker.setImage(markerImage);
	        			} else {
	        				marker.setImage(null);
	        			}
	        		}
	        	})
		        
		        marker.setMap(map);
		        
		        markers.push(marker);
		        
		        
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var content = '<div class="card" style="width:250px">';
		        	content += '	<img class="card-img-top" src="/resources/home_images/'+moim.image+'" alt="Card image">';
		        	content += '	<div class="card-body">';
		        	content += '		<h4 class="card-title">'+moim.title+'</h4>';
		        	content += '		<hr>';
		        	content += '		<div style="display:flex; justify-content: space-between;">';
		        	content += '			<span class="card-text"><i class="fas fa-users"></i>&nbsp'+moim.joinCount+'/'+moim.headCount+'</span>';
		        	content += '			<span class="card-text"><i class="fas fa-calendar-check"></i>&nbsp'+moim.joinDate+'</span>';
		        	content += '		</div>';
		        	content += '	</div>';
		        	content += '</div>';
		        
		        var infowindow = new kakao.maps.InfoWindow({
		            content: content
		        });
		        
        	    // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
		        kakao.maps.event.addListener(marker, 'mouseover', function() {
	        	    infowindow.open(map, marker);
		        });
				
		     	// 마커에 마우스아웃 이벤트를 등록합니다
		        kakao.maps.event.addListener(marker, 'mouseout', function() {
		            // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
		            infowindow.close();
		        });
		     	
	            // 마커에 클릭 이벤트를 등록합니다
		        kakao.maps.event.addListener(marker, 'click', function() {
		        	$.ajax({
		        		type:"GET",
		        		url:"/map/like.do",
		        		data: {moimNo: moim.moimNo},
		        		success:function(isLike) {
		        			if(isLike) {
		        				marker.setImage(markerImage);
		        			} else {
		        				marker.setImage(null);
		        			}
		        		}
		        	})
		      });
			}
		});
	}
})
</script>