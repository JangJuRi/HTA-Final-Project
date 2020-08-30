<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<style>

#mySidenav {
	 box-shadow: 0 0 1px rgba(0,0,0,.35);
	 background: #fff;
	 margin-bottom: -1px;
	height: 100%; /* 100% Full-height */
	width: 317px; /* 0 width - change this with JavaScript */
	position: fixed; /* Stay in place */
	z-index: 10; /* Stay on top */
	left: 0px;
	background-color: #FFF; /* Black*/
	/* overflow-x: hidden; /* Disable horizontal scroll */ */
	padding-top: 20px; /* Place content 60px from the top */
	transition: 0.2s;
	/* 0.5 second transition effect to slide in the sidenav */
}

.nav-link :hover {
	cursor: pointer;
}

/* The navigation menu links */
#mySidenav a {
	padding: 8px 8px 8px 8px;
	text-decoration: none;
	font-size: 20px;	
	color: gray;
	display: block;
	transition: 0.2s;
}

/* When you mouse over the navigation links, change their color */
#mySidenav .nav-item>a:hover {
	background-color: rgba(0,073,140, .5);
	color: #FFF;
}


/* Style page content - use this if you want to push the page content to the right when you open the side navigation */
#content {
	transition: margin-left .1s;
	padding: 20px;
}
/* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
@media screen and (max-height: 450px) {
	.sidenav {
		
	}
	.sidenav a {
		font-size: 18px;
	}

	.collapse{
	  background-color: #777;
	  color: white;
	  cursor: pointer;
	  width: 100%;
	  border: none;
	  text-align: left;
	  outline: none;
	  height: 200px;
	}
}


#left-main-dropdown {
	padding: 15px 20px;
	transform: translate3d(212px, 12px, 0px) !important; 
}

.dropdown-submenu {
  position: relative;
}

.dropdown-submenu a::after {
  position: absolute;
  right: 6px;
  top: .8em;
}

.dropdown-submenu .dropdown-menu {
  top: 10px;
  left: 100%;
  margin-left: .1rem;
  margin-right: .1rem;
}

#collapseExample {
	background-color: #cccccc;
}
</style>

<div id="mySidenav" class="sidenav">
	<ul class="navbar-nav" style="text-align: center">
		<li class="nav-item active">
			<a class="nav-link" href="/home.do"><i class="fas fa-home"></i> Home</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="/manager/test.do"><i class="fab fa-hotjar"></i> 인기 모임</a>
		</li>
        <li class="nav-item dropdown dropright">
	        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" href="/cate/subCate.do"
	        	aria-haspopup="true" aria-expanded="false">
	          	<i class="fas fa-tags"></i> 카테고리
	        </a>
	        <ul id="left-main-dropdown" class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	          <li class="dropdown-submenu">
	            <a class="dropdown-item dropdown-toggle" href="#">게임/오락</a>
	            <ul class="dropdown-menu">
	              <li><a class="dropdown-item" href="/cate/subCate.do?subCateNo=700011">리그오브레전드</a></li>
	              <li><a class="dropdown-item" href="/cate/subCate.do?subCateNo=700012">배틀그라운드</a></li>
	              <li><a class="dropdown-item" href="/cate/subCate.do?subCateNo=700013">피파온라인4</a></li>
	             </ul>
	          </li>
	          <li class="dropdown-submenu">
	            <a class="dropdown-item dropdown-toggle" href="#">사교/인맥</a>
	            <ul class="dropdown-menu">
	              <li><a class="dropdown-item" href="/cate/subCate.do?subCateNo=700014">싱글/연애</a></li>
	              <li><a class="dropdown-item" href="/cate/subCate.do?subCateNo=700015">술/커피/차</a></li>
	              <li><a class="dropdown-item" href="/cate/subCate.do?subCateNo=700016">맛집/미식회</a></li>
	             </ul>
	          </li>
	          <li class="dropdown-submenu">
	            <a class="dropdown-item dropdown-toggle" href="#">운동/스포츠</a>
	            <ul class="dropdown-menu">
	              <li><a class="dropdown-item" href="/cate/subCate.do?subCateNo=700017">축구/풋살</a></li>
	              <li><a class="dropdown-item" href="/cate/subCate.do?subCateNo=700018">농구</a></li>
	              <li><a class="dropdown-item" href="/cate/subCate.do?subCateNo=700019">스케이트/인라인</a></li>
	             </ul>
	          </li>
	          <li class="dropdown-submenu">
	            <a class="dropdown-item dropdown-toggle" href="#">반려동물</a>
	            <ul class="dropdown-menu">
	              <li><a class="dropdown-item" href="/cate/subCate.do?subCateNo=700020">강아지</a></li>
	              <li><a class="dropdown-item" href="/cate/subCate.do?subCateNo=700021">고양이</a></li>
	              <li><a class="dropdown-item" href="/cate/subCate.do?subCateNo=700022">파충류</a></li>
	             </ul>
	          </li>
	          <li class="dropdown-submenu">
	            <a class="dropdown-item dropdown-toggle" href="#">문화/공연/축제</a>
	            <ul class="dropdown-menu">
	      		  <li><a class="dropdown-item" href="/cate/subCate.do?subCateNo=700023">공연/연극</a></li>
	              <li><a class="dropdown-item" href="/cate/subCate.do?subCateNo=700024">영화</a></li>
	              <li><a class="dropdown-item" href="/cate/subCate.do?subCateNo=700025">파티/페스티벌</a></li>
	             </ul>
	          </li>
	        </ul>
      	</li>
      	<li class="nav-item">
			<a data-toggle="collapse" href="#left-joined-moim"
				role="button" aria-expanded="false" aria-controls="left-joined-moim">
				<i class="fas fa-sign-in-alt"></i> 가입 모임 
			</a>
			<div class="collapse" id="left-joined-moim" style="border-top: 1px solid lightgray">
				<div class="nav-item">
					<c:choose>
						<c:when test="${not empty joinedMoim }">
							<c:forEach items="${joinedMoim}" var="joinedMoim" end="2">
							
								<a class="nav-link" data-no="${joinedMoim.moimNo }"> <span class="nav-item avatar">
										${joinedMoim.title }
										<c:if test="${joinedMoim.premiumYn eq 'Y'}">
											<i class="fas fa-crown ml-2" style="color: #6699FF;"></i>
										</c:if>
								</span>
								</a>
							</c:forEach>
							<a class="text-center" href="/mypage/usermoim.do" style="color: black;">더보기</a>
						</c:when>
						<c:otherwise>
							<p class="text-center">가입한 모임이 없습니다.</p>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
      	  </li>
	      <li class="nav-item">
	      	<a data-toggle="collapse" href="#left-select-moim"
			role="button" aria-expanded="false" aria-controls="collapseExample">
			<i class="fas fa-heart"></i> 즐겨찾는 모임
			</a>
			<div class="collapse" id="left-select-moim" style="border-top: 1px solid lightgray">
				<div class="nav-item">
					<c:choose>
						<c:when test="${not empty selectMoim}">
							<c:forEach items="${selectMoim}" var="select">
								<a class="nav-link" data-no="${select.moimNo }">
									<span class="nav-item avatar">
										${select.title}
										<c:if test="${select.premiumYn eq 'Y'}">
											<i class="fas fa-crown ml-2" style="color:#6699FF;"></i>
										</c:if>
									</span>
								</a>
							</c:forEach>
							<a class="text-center" href="#" style="color: black;">더보기</a>
							</c:when>
						<c:otherwise>
							<p class="text-center">좋아요한 모임이 없습니다.</p>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
	      </li>
	      <li class="nav-item">
	      	<a data-toggle="collapse" href="#left-myfriends"
			role="button" aria-expanded="false" aria-controls="collapseExample">
			<i class="fas fa-users"></i> 팔로잉 
			</a>
			<div class="collapse" id="left-myfriends" style="border-top: 1px solid lightgray">
				<div id="leftFollowing" class="nav-item">
					<c:choose>
						<c:when test="${fn:length(followUsers) >= 2}">
							<c:forEach items="${followUsers}" var="follow" end="3">
								<a class="nav-link" href="/other/info.do?userId=${follow.folUserId }"> 
									<span class="nav-item avatar">
										<img src="/resources/profileImage/${follow.image }"
											class="rounded-circle z-depth-0" alt="avatar image" height="35px" width="35px">
											${follow.nickname }
									</span>
								</a>
							</c:forEach>
							<div class="dropdown">
							<a id="followingViewMore" class="text-center dropdown-toggle" data-toggle="collapse" 
								href="#left-myfriends" role="button" aria-expanded="false" 
								aria-controls="collapseExample" style="color: black;">더보기</a>
							</div>
						</c:when>
						<c:when test="${fn:length(followUsers) < 2}">
							<c:forEach items="${followUsers}" var="follow">
								<a class="nav-link" href="/other/info.do?userId=${follow.folUserId }"> 
									<span class="nav-item avatar">
										<img src="/resources/profileImage/${follow.image }"
											class="rounded-circle z-depth-0" alt="avatar image" height="35px" width="35px">
											${follow.nickname }
									</span>
								</a>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<p class="text-center">팔로잉한 사람이 없습니다.</p>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
	      </li>      
		</ul>
		  
		<!--  <a class="btn btn-primary" href="/moim/moim.do?moimNo=500000">
			정원 500000번 모임-->
		</a>
		<hr />
	<div id="footer" style="font-size: 10px; margin-left:50px;">
		<p>자주하는 질문</p>
		<p>help@friendscube.com</p>
		<p>홈서비스</p>
		<p>소개언론/미디어블로그</p>
		<p>고객센터</p>
		<p>웹사이트소통공간서비스</p>
		<p>이용약관개인정보</p>
		<p>취급방침</p>
		<p>ⓒ Friendscube</p>
		<br/>
		<br/>
	</div>
</div>

<!-- 모달창 -->
<div class="modal fade" id="leftModal">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">상세정보</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<!-- Modal Header end -->
			<!-- Modal body -->
			<div class="modal-body" style="padding:0px;">
					<div id="left-modal-image" class="row"></div>
					<div class="row">
						<div class="col-12" style="padding: 30px;">
						<h3 id="left-detail-title"></h3>
							<p id="left-detail-count"></p>
							<p id="left-detail-content"></p>
							<p id="left-detail-location"></p>
							<p id="left-detail-cate"></p>
							<p><i class="fas fa-won-sign 2x"></i><span id="left-detail-fee"></span></p>
							<p id="left-detail-likes"></p>
							<p id="left-detail-premium"></p>
							<p id="left-detail-joinDate">모이는날 : 2020.10.19</p>
							<p id="left-detail-createDate">만든날 : 2020.08.15</p>
						</div>
					</div>
			</div>
			<!-- Modal body end -->
			<!-- Modal footer -->
			<div class="modal-footer">
				<i id="left-modal-like" class="fas fa-heart" style="cursor: pointer;"></i>
				<a id="left-moim-link-btn" class="btn btn-primary" href="">모임가기</a>
				<a id="left-moim-join-btn" class="btn btn-success" href="">모임가입</a>
				<a id="left-moim-withdrawal-btn" class="btn btn-warning" href="">모임탈퇴</a>
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
			<!-- Modal footer end -->
		</div>
	</div>
</div>
<script type="text/javascript">
$(function() {
	
	$("#mySidenav .nav-item").removeClass('active');
	var path = window.location.pathname;
	$("#mySidenav .nav-item>a").each(function () {
		var $nowPage = $(this).attr('href');
		if ($nowPage == path) {
			$(this).closest('.nav-item').addClass('active');
			return;
		}
	});
	
	$('.dropdown-menu a.dropdown-toggle').on('click', function(e) {
		  if (!$(this).next().hasClass('show')) {
		    $(this).parents('.dropdown-menu').first().find('.show').removeClass('show');
		  }
		  var $subMenu = $(this).next('.dropdown-menu');
		  $subMenu.toggleClass('show');
		  $subMenu.css('position','absolute')


		  $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function(e) {
		    $('.dropdown-submenu .show').removeClass('show');
		  });


		  return false;
		});

	var coll = document.getElementsByClassName("collapsible");
	var i;
	
	for (i = 0; i < coll.length; i++) {
	  coll[i].addEventListener("click", function() {
	    this.classList.toggle("active");
	    var content = this.nextElementSibling;
	    if (content.style.maxHeight){
	      content.style.maxHeight = null;
	    } else {
	      content.style.maxHeight = content.scrollHeight + "px";
	    } 
	  });
	}


	function leftDetailModal(moimNo) {
		$("#leftModal").modal('show');
		
		$.ajax({
			type: "GET",
			url: "/detail.do",
			data: {moimNo: moimNo},
			dataType: "json",
			success: function (moim) {
				console.log(moim);
				$("#left-detail-title").text(moim.title)
				$("#left-detail-count").text(moim.joinCount + "/" + moim.headCount)
				$("#left-detail-content").text(moim.content)
				$("#left-detail-fee").text(moim.fee + "원")
				$("#left-detail-location").text("지역 : " + moim.locationName)
				$("#left-detail-cate").text("카테고리 : " + moim.subCateName)
				$("#left-detail-likes").text("좋아요수 : " + moim.likes + "개")
				$("#left-detail-joinDate").text("모이는날 : " + moim.joinDate)
				$("#left-detail-createDate").text("만든날 : " + moim.createdDate)
				
				var link = '/moim/moim.do?moimNo='+moim.moimNo+'';
				var join = '/moim/join.do?moimNo='+moim.moimNo+'&userId=${LOGIN_USER.id}';
				var withdrawal = '/moim/outMoim.do?moimNo='+moim.moimNo+'&userId=${LOGIN_USER.id}';

				$("#left-moim-join-btn").attr('href', join);
				$("#left-moim-withdrawal-btn").attr('href', withdrawal);
				modalMoimNo = moim.moimNo;
				
				var image = '<div class="col-12"><img class="card-img-top" src="/resources/home_images/'+moim.image+'" alt="Card image cap" style="width: 100%; height: 581.63px;"></div>'
				
				$("#left-modal-image").empty();
				$("#left-modal-image").append(image);
				
				
				$("#left-detail-premium").empty();
				if(moim.premiumYn == 'Y') {
					$("#left-moim-link-btn").attr("href", link);
					let premium = '<i class="fas fa-crown ml-2" style="color:#6699FF;"></i>';
					$("#left-detail-premium").append(premium);
					$("#left-moim-link-btn").css('display', 'block');
				} else {
					$("#left-moim-link-btn").css('display', 'none');
				}
				
				if(moim.likesYn == 'Y') {
					$("#left-modal-like").attr('class', 'fas fa-heart')
				} else {
					$("#left-modal-like").attr('class', 'far fa-heart')
				}
				
			}
		});
	};
	
	$("#left-joined-moim .nav-link").click(function() {
		var moimNo = $(this).data("no");
		console.log(moimNo);
		leftDetailModal(moimNo);
	});
	
	$("#left-select-moim .nav-link").click(function() {
		var moimNo = $(this).data("no");
		leftDetailModal(moimNo);
	});
	
	$("#left-modal-like").click(function() {
		$.ajax({
			type: "GET",
			url: "/like.do",
			data: {moimNo: modalMoimNo},
			success: function () {
				leftDetailModal(modalMoimNo);
			}
		})
	})
	
	
	$("#followingViewMore").click(function(){
		$("#leftFollowing").empty();
		var following = '<c:forEach items="${followUsers}" var="follow">'
			following += '<a class="nav-link" href="/other/info.do?userId=${follow.folUserId }">'
			following += '<span class="nav-item avatar">'
			following += '<img src="/resources/profileImage/${follow.image }" class="rounded-circle z-depth-0" alt="avatar image" height="35px" width="35px">'
			following += '${follow.nickname }</span></a></c:forEach>'
		$("#leftFollowing").append(following);
	})
	
	
	
});
</script>
