<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<style>

.swiper-container {
	  margin-top: 30px;
      width: 100%;
      height: 100%;
    }


	.card-title {
		font-size: 20px;
    	display : inline-block;
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: nowrap;
		width: 100%;
		height: 28px;
		margin-bottom: 0px;
    }
    
    .swiper-slide {
    
      font-size: 18px;
      background: #f5f5f5;

      /* Center slide text vertically */
      display: -webkit-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -webkit-align-items: center;
      align-items: center;
    }

.card{
	border: none;
}
.home-body {
	font-size: 18px;
	margin-left: 3px;
	padding: 35px;
}
.home-card {
 	width: 345px;
 	height: 330px;
 	margin: 8px;
}
.home-card:hover {
	cursor: pointer;
}
.card-img-top {
	width: 343px;
	height: 250px;
}
h5 {
	font-size: 15px;
}

.card-body{
	padding: 8px;
}
.card-body p{
	display: inline-block;
	margin-bottom: 0px;
}
</style>
	
<!-- Swiper -->
<div class="row">
	<div class="col-12">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<c:forEach items="${favoliteMoims }" var="favolite">
				<div class="swiper-slide">
					<div class="card mb-4 home-card" id="card-list" data-no="${favolite.moimNo }">
						<img class="card-img-top" src="/resources/home_images/${favolite.image }"
							alt="Card image cap">
						<div class="card-body">
							<div class="card-title">
								<p><c:out value="${favolite.title }" /></p>
							</div>
							<div class="text-left">
								<i class="fas fa-heart" style="color: #d09afc"></i>&ensp;<span class="text-left" >${favolite.likes }</span>&ensp;&ensp;
								<i class="fas fa-users" style="color: #fcba03"></i>&ensp;<span>${favolite.joinCount}/${favolite.headCount}</span>
								<c:if test="${favolite.premiumYn == 'Y'}">
									<i class="fas fa-crown ml-2" style="color:#6699FF;"></i>
								</c:if>
								<p style="float: right">
								<fmt:formatDate value="${favolite.joinDate}" /></p>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
			<!-- Add Pagination -->
			<div class="swiper-pagination"></div>
		</div>
	</div>
</div>
<!-- Swiper Finish -->
<!-- 목록 -->
<div class="" style="margin-top: 35px;">
<div class="row">
	<div class="col-12">
		<h1 id="locationTitle"></h1>
		<div id="locationMoim" class="row home-body"></div>
		<button id="locationViewMore" class="btn text-center mb-3" style="width: 100%;background-color: lightgray; border-bottom: 1px solid gray; display: none;">더보기</button>
		<hr/>
	</div>
</div>
<div class="row">
	<div class="col-12">
		<h1 id="mainCateTitle"></h1>
		<div id="mainCateMoim" class="row home-body"></div>
		<button id="mainCateViewMore" class="btn text-center mb-3" style="width: 100%;background-color: lightgray; border-bottom: 1px solid gray; display: none;">더보기</button>
		<hr/>
	</div>
</div>
<div class="row">
	<div class="col-12">
		<h1>전체모임</h1>
		<div id="allMoim" class="row home-body"></div>
	</div>
</div>
</div>

<!-- 모달창 -->
<div class="modal fade" id="myModal" style="background-color: rgba(1, 1, 1, 0.7);">
	<div class="modal-dialog modal-lg">
		<div class="modal-content" style="background-color: rgba(255, 255, 255, 0.0)">
			<!-- Modal Header -->
			<div id="home-modal-header" class="modal-header row" style="background-color: rgba(255, 255, 255, 0.0) !important; color: #FFF; border-bottom: 0px;"></div>
			<!-- Modal Header end -->
			<!-- Modal body -->
			<div class="modal-body" style="padding:0px; margin-top: -1px; background-color: #FFF;border-radius:0 !important">
					<div id="home-modal-image" class="row"></div>
					<div class="row">
						<div class="col-12" style="padding: 30px;">
						<h3 id="home-detail-title"></h3>
							<p id="home-detail-count"></p>
							<p id="home-detail-content"></p>
							<p id="home-detail-location"></p>
							<p id="home-detail-cate"></p>
							<p><i class="fas fa-won-sign 2x"></i><span id="home-detail-fee"></span></p>
							좋아요수 : <span id="home-detail-likes"></span>개
							<p id="home-detail-joinDate">모이는날 : 2020.10.19</p>
							<p id="home-detail-createDate">만든날 : 2020.08.15</p>
						</div>
					</div>
			</div>
			<!-- Modal body end -->
			<!-- Modal footer -->
			<div class="modal-footer"  style="background-color: rgba(1, 1, 1, 0.3)">
				<i id="home-modal-like" class="" style="cursor: pointer; color: #d09afc"></i>
				<a id="home-moim-link-btn" class="btn btn-primary" href="">모임가기</a>
				<a id="home-moim-join-btn" class="btn btn-success" href="">모임가입</a>
				<a id="home-moim-withdrawal-btn" class="btn btn-warning" href="">모임탈퇴</a>
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
			<!-- Modal footer end -->
		</div>
	</div>
</div>

<!-- 바로가기 키 -->
<div style="position: fixed;bottom: 10px; right: 10px;">
	<a href="/moim/add.do"><i class="fas fa-plus"></i></a>
	<a href="#"><i class="fas fa-arrow-up"></i></a>
</div>

<!-- Initialize Swiper -->
<script>

$(function() {
	
	
    let isEnd = false;
    let allPageNo = 8;
	let $allMoim = $("#allMoim");

	$(function () {

		$(window).scroll(function(){
			let $window = $(this);
			let scrollTop = $window.scrollTop();
			let windowHeight = $window.height();
			let documentHeight = $(document).height();
			

			
			if( scrollTop + windowHeight == documentHeight ){
				getAllMoim();
			}
		})
		getAllMoim();

	});
	
	function getAllMoim() {
		if(isEnd == true){
            return;
        }
		
		$.ajax({
			type:"GET",
			url:"/all.do",
			data: {
				allPageNo : allPageNo
			},
			dataType: "json",
			success:function (result) {
				let length = result.length;
				console.log(result)
				console.log(allPageNo)
				if( length < 4 ){
					isEnd = true;
				}
				if(length == 0) {
					return;
				}

				$.each(result.moims, function(index, allMoim){
					
					var row4 = '<div class="card mb-4 home-card" data-no="'+ allMoim.moimNo +'">';
					row4 += '<img class="card-img-top" src="/resources/home_images/'+allMoim.image+'" alt="Card image cap">';
					row4 += '<div class="card-body"><div class="card-title">';
					row4 += '<span>'+allMoim.title+'</span>';
					row4 += '</div><div class="text-left">';
					row4 += '<i class="fas fa-heart" style="color: #d09afc"></i>&ensp;<span class="text-left" >'+allMoim.likes+'</span>';
				   	row4 += '&ensp;&ensp;<i class="fas fa-users" style="color: #fcba03"></i>&ensp;<span class="mr-3">'+allMoim.joinCount+'/'+allMoim.headCount+'</span>';
				   	if (allMoim.premiumYn == 'Y') {
					   	row4 += '<i class="fas fa-crown ml-2" style="color:#6699FF;"></i>';				   		
				   	}
				   	row4 += '<p style="float: right">'+allMoim.joinDate+'</p>';
				   	row4 += '</div></div></div>';
					
					$allMoim.append(row4);
				})
				allPageNo += 4;
			}
		})
	}
	
	
	
	
	
	
	// 더보기 시작--------------------------------------
	var mainCatePageNo = 1;
	var mainCateNo = 0;
	var $mainCatelist = $("#mainCateMoim");
	$("#mainCateViewMore").click(function() {
		moreMainCateData();
	});
	var $mainCateTitle = $("#mainCateTitle");
	function moreMainCateData() {
		
		$.ajax({
			type:"GET",
			url:"/mainCate.do",
			data:{
				mainCateNo: mainCateNo,
				mainCatePageNo :mainCatePageNo
			},
			success:function(result){
				if(result.moims.length == 0) {return;}
				mainCateNo = result.moims[0].mainCateNo
				
				if (result.total == 0) {
	               $("#mainCateViewMore").hide();
				} else {
	               $("#mainCateViewMore").show();
				}
				
	            $mainCateTitle.text(result.moims[0].mainCateName);
	            if(Math.ceil(mainCatePageNo/4) == Math.ceil(result.total/4)) {
	               $("#mainCateViewMore").hide();
	            } else {
	               $("#mainCateViewMore").show();
	            }
				
				$.each(result.moims, function(index, mainCateMoim){
					
					var row3 = '<div class="card mb-4 home-card" data-no="'+ mainCateMoim.moimNo +'">';
					row3 += '<img class="card-img-top" src="/resources/home_images/'+mainCateMoim.image+'" alt="Card image cap">';
					row3 += '<div class="card-body"><div class="card-title">';
					row3 += '<span>'+mainCateMoim.title+'</span>';
					row3 += '</div><div class="text-left">';
					row3 += '<i class="fas fa-heart" style="color: #d09afc"></i>&ensp;<span class="text-left" >'+mainCateMoim.likes+'</span>';
				   	row3 += '&ensp;&ensp;<i class="fas fa-users" style="color: #fcba03"></i>&ensp;<span class="mr-3">'+mainCateMoim.joinCount+'/'+mainCateMoim.headCount+'</span>';
				   	if (mainCateMoim.premiumYn == 'Y') {
					   	row3 += '<i class="fas fa-crown ml-2" style="color:#6699FF;"></i>';				   		
				   	}
				   	row3 += '<p style="float: right">'+mainCateMoim.joinDate+'</p>';
				   	row3 += '</div></div></div>';
					
					$mainCatelist.append(row3);
				}); 
				mainCatePageNo += 4;
			}
			
		})
	}

	moreMainCateData();
	
	var currentPageNo = 1;
	var locationNo = 0;
	var $list = $("#locationMoim");
	$("#locationViewMore").click(function() {
		moreData();
	});
	var $locationTitle = $("#locationTitle");
	function moreData() {
		
		$.ajax({
			type:"GET",
			url:"/location.do",
			data:{
				locationNo: locationNo,
				currentPageNo :currentPageNo
			},
			success:function(result){
				if(result.moims.length == 0) {return;}
				locationNo = result.moims[0].locationNo
				
				if (result.total == 0) {
	               $("#locationViewMore").hide();
				} else {
	               $("#locationViewMore").show();
				}
				
	            $locationTitle.text(result.moims[0].locationName);
	            if(Math.ceil(currentPageNo/4) == Math.ceil(result.total/4)) {
	               $("#locationViewMore").hide();
	            } else {
	               $("#locationViewMore").show();
	            }
				
				$.each(result.moims, function(index, locationMoim){
					
					var row2 = '<div class="card mb-4 home-card" data-no="'+ locationMoim.moimNo +'">';
					row2 += '<img class="card-img-top" src="/resources/home_images/'+locationMoim.image+'" alt="Card image cap">';
					row2 += '<div class="card-body"><div class="card-title">';
					row2 += '<span>'+locationMoim.title+'</span>';
					row2 += '</div><div class="text-left">';
					row2 += '<i class="fas fa-heart" style="color: #d09afc"></i>&ensp;<span class="text-left" >'+locationMoim.likes+'</span>';
				   	row2 += '&ensp;&ensp;<i class="fas fa-users" style="color: #fcba03"></i>&ensp;<span class="mr-3">'+locationMoim.joinCount+'/'+locationMoim.headCount+'</span>';
				   	if (locationMoim.premiumYn == 'Y') {
					   	row2 += '<i class="fas fa-crown ml-2" style="color:#6699FF;"></i>';				   		
				   	}
				   	row2 += '<p style="float: right">'+locationMoim.joinDate+'</p>';
				   	row2 += '</div></div></div>';
					
					$list.append(row2);
				}); 
				currentPageNo += 4;
			}
			
		})
	}

	moreData();
	
	
	
	
	// 지역 더보기 끝------------------------------------
	
	
	var modalMoimNo = "";
	
	 var swiper = new Swiper('.swiper-container', {
	      slidesPerView: 3,
	      spaceBetween: 30,
	      freeMode: true,
	      autoplay: {
	          delay: 2500,
	          disableOnInteraction: false,
	      },
	      pagination: {
	        el: '.swiper-pagination',
	        clickable: true,
	      }
	    });
	
	// 모임 디테일 모달 창 
	$("body").on('click', ".home-card",function() {
		console.log(1);
		var moimNo = $(this).data("no");
		$("#myModal").modal('show');
		modal(moimNo);
	})
	
	
	$("#home-modal-like").click(function() {
		$.ajax({
			type: "GET",
			url: "/like.do",
			data: {moimNo: modalMoimNo},
			success: function () {
				modal(modalMoimNo);
			}
		})
	})
  
	function modal(no) {
		$.ajax({
			type: "GET",
			url: "/detail.do",
			data: {moimNo: no},
			dataType: "json",
			success: function (moim) {
				console.log(moim);
				var link = '/moim/moim.do?moimNo='+moim.moimNo+'';
				var join = '/moim/join.do?moimNo='+moim.moimNo+'&userId=${LOGIN_USER.id}';
				var withdrawal = '/moim/out.do?moimNo='+moim.moimNo+'&userId=${LOGIN_USER.id}';
				modalMoimNo = moim.moimNo;
				var header = '<div class="col-1"><img src="/resources/profileImage/'+moim.profileImage+'" class="rounded-circle z-depth-0" alt="image" height="50px" width="50px"></div>'
					header += '<div class="col-9 text-left"><span class="mr-3">'+moim.nickName+'</span>'
					header += '<span class="mr-3">'+moim.userId+'</span>'
					header += '<span style="display: block">'+moim.userContent+'</span></div>'
				if(moim.premiumYn == 'Y') {
					$("#home-moim-link-btn").css('display', 'block');
					header += '<div class="col-2"><i class="fas fa-crown fa-2x ml-5" style="color:#6699FF;"></i></div>'
				} else {
					$("#home-moim-link-btn").css('display', 'none');
					header += '<div class="col-2"></div>'
				}
				if(moim.checkJoin == 1){
					$("#home-moim-withdrawal-btn").css('display', 'block');
					$("#home-moim-join-btn").css('display', 'none');
				} else {
					$("#home-moim-join-btn").css('display', 'block');
					$("#home-moim-withdrawal-btn").css('display', 'none');
				}
					
				$("#home-moim-join-btn").attr('href', join);
				$("#home-moim-withdrawal-btn").attr('href', withdrawal);
					
				$("#home-modal-header").empty();
				$("#home-modal-header").append(header);
				$("#home-moim-link-btn").attr("href", link);
					
				$("#home-detail-premium").empty();
				$("#home-detail-title").text(moim.title)
				$("#home-detail-count").text(moim.joinCount + "/" + moim.headCount)
				$("#home-detail-content").text(moim.content)
				$("#home-detail-fee").text(moim.fee + "원")
				$("#home-detail-location").text("지역 : " + moim.locationName)
				$("#home-detail-cate").text("카테고리 : " + moim.subCateName)
				$("#home-detail-likes").text(moim.likes)
				$("#home-detail-joinDate").text("모이는날 : " + moim.joinDate)
				$("#home-detail-createDate").text("만든날 : " + moim.createdDate)
				
				
				
				var image = '<div class="col-12"><img class="card-img-top" src="/resources/home_images/'+moim.image+'" alt="Card image cap" style="width: 100%; height: 581.63px; background-color: lightgray"></div>'
				
				$("#home-modal-image").empty();
				$("#home-modal-image").append(image);
				
				
				
				
				if(moim.likesYn == 'Y') {
					$("#home-modal-like").attr('class', 'fas fa-heart')
				} else {
					$("#home-modal-like").attr('class', 'far fa-heart')
				}			
			}
		})
	}
});

</script>