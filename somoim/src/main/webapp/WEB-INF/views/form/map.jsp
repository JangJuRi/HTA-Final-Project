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
</style>   
 <div id="mapwrap"> 
	<!-- 카테고리 선택 -->
	<div id="category-select-div">
		<ul class="nav flex-column text-center">
			<li class="nav-item">
				<img src="/resources/map/game.png" class="rounded-circle z-depth-0"
								alt="게임/오락" height="60" data-toggle="tooltip" data-placement="right" title="게임/오락">
			</li>
			<li class="nav-item">
				<img src="/resources/map/social.png" class="rounded-circle z-depth-0"
								alt="사교/인맥" height="60" data-toggle="tooltip" data-placement="right" title="사교/인맥">
			</li>
			<li class="nav-item">
				<img src="/resources/map/sports.png" class="rounded-circle z-depth-0"
								alt="운동/스포츠" height="60" data-toggle="tooltip" data-placement="right" title="운동/스포츠">
			</li>
			<li class="nav-item">
				<img src="/resources/map/pet.png" class="rounded-circle z-depth-0"
								alt="반려동물" height="60" data-toggle="tooltip" data-placement="right" title="반려동물">
			</li>
			<li class="nav-item">
				<img src="/resources/map/festival.png" class="rounded-circle z-depth-0"
								alt="문화/공연/축제" height="60" data-toggle="tooltip" data-placement="right" title="문화/공연/축제">
			</li>
		</ul>
	</div>
	<!-- 카테고리 선택 끝 -->
	    
	<!-- 지도 화면에 뿌리기 -->    
	<div id="map"></div>
	<!-- 지도 끝 -->  
</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fd8bf3bdcf042904f91fab5e8d922409&libraries=services"></script>
<script>
$(function() {
	$('[data-toggle="tooltip"]').tooltip();
	
	
	// 화면에 지도 띄우기
	var container = document.getElementById('map');
	var options = {
		center : new kakao.maps.LatLng(37.558, 126.976),
		level : 8
	};
	var map = new kakao.maps.Map(container, options);
	var markers = [];
	
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
	$("#category-select-div ul li:eq(0) img").click(function() {
		setMarkers(null);
		cateMoims(1);
	})
	$("#category-select-div ul li:eq(1) img").click(function() {
		setMarkers(null);
		cateMoims(2);
	})
	$("#category-select-div ul li:eq(2) img").click(function() {
		setMarkers(null);
		cateMoims(3);
	})
	$("#category-select-div ul li:eq(3) img").click(function() {
		setMarkers(null);
		cateMoims(4);
	})
	$("#category-select-div ul li:eq(4) img").click(function() {
		setMarkers(null);
		cateMoims(5);
	})
	
	// 마커 셋팅하기(마커 지우기용)
	function setMarkers(map) {
		for (var i = 0; i < markers.length; i++) {
	        markers[i].setMap(map);
	    }
	}
	
	// 마커 설정하기
	function showMarker(moim) {
		var geocoder = new kakao.maps.services.Geocoder();
		geocoder.addressSearch(moim.locationDetail, function(result, status) {
			if (status === kakao.maps.services.Status.OK) {
				var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
				
		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		        	position: coords,
		        	clickable: true
		        });
		        marker.setMap(map);
		        
		        markers.push(marker);
		        
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
		        
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var content = '<div class="card" style="width:400px">';
		        	content += '<img class="card-img-top" src="/resources/home_images/'+moim.image+'" alt="Card image">';
		        	content += '<div class="card-body">';
		        	content += '<h4 class="card-title">'+moim.title+'</p>';
		        	content += '<p class="card-text">Some example text.</p>';
		        	content += '</div>';
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