<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="map" style="width:100%;height:100%;">

</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fd8bf3bdcf042904f91fab5e8d922409&libraries=services"></script>
<script>
$(function() {
	// 화면에 지도 띄우기
	var container = document.getElementById('map');
	var options = {
		center : new kakao.maps.LatLng(37.558, 126.976),
		level : 8
	};
	var map = new kakao.maps.Map(container, options);
	
	
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
	
	
	// 지도에 마커 띄우기
	function showMarker(moim) {
		var geocoder = new kakao.maps.services.Geocoder();
		geocoder.addressSearch(moim.locationDetail, function(result, status) {
			if (status === kakao.maps.services.Status.OK) {
				var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
				
		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		        	position: coords
		        });
		        marker.setMap(map);
		        
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+moim.title+'</div>'
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
		        		url:"/detail.do",
		        		data: {moimNo: moim.moimNo},
		        		dataType:"json",
		        		success:function(moims) {
		        			$.each(moims, function (index, moim) {
		        				showMarker(moim);
		        			});
		        		}
		        	})
		      });
			}
		});
	}
})
</script>