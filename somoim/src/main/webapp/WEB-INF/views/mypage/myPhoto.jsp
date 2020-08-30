<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
	p{
		margin: 0;
	}
	.myimage {
		width: 100px;
		height: 100px;
	}

	.smallimage {
		width: 50px;
		height: 50px;
	}
	.card{
		border: none;
	}
	#mypage-photo-body {
		padding: 30px 60px;
	}
	
	#mypage-photo-body .photo-card {
	 	width: 337px;
	 	height: 330px;
	 	margin: 6px;
	}	
	#mypage-photo-like i:hover {
		cursor: pointer;
	}
	#mypage-photo-like i{
	 color:coral
	}
	
	#mypage-photo-body .fa-plus:hover {
		cursor: pointer;
	}
	#mypage-photo-body .fa-plus {
		color: #007BFF;
	}
	
	#mypage-photo-body .card-img-top {
		width: 337px;
		height: 250px;
	}	
	#mypage-photo-body .card-body{
		padding: 8px;
	}
	#mypage-photo-body .card-body p{
		display: inline-block;
		margin-bottom: 0px;
	}
	
	.mypage-follower {

	}

	.mypage-following {
		display: none;
	}
</style>
<div>
	<div class="ml-5 mt-3">
		<img src="/resources/profileImage/${LOGIN_USER.profileImage }" class="rounded-circle myimage mr-3"
			alt="Cinque Terre">
		<span style="font-size: large; font-weight: bold;">${LOGIN_USER.nickname }</span>
	</div>
	<div class="row mt-3" style="width: 95%">
		<div class="col-12">
			<nav class="navbar">
				<ul class="nav nav-tabs" id="mypage-nav">
					<li class="nav-item"><a class="nav-link"
						href="/mypage/mypage.do">정보</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/mypage/usermoim.do">가입모임</a></li>
					<li class="nav-item"><a class="nav-link"
					href="/mypage/favoliteMoim.do">즐겨찾는 모임</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="/mypage/photo.do">사진첩</a></li>
					<li class="nav-item"><a class="nav-link "
						href="/mypage/board.do">내후기</a></li>
				</ul>
			</nav>
		</div>
	</div>
	<div class="row">
		<div class="col-9">
			<div class="row" id="mypage-photo-body">
				<c:choose>
				<c:when test="${empty photos }">
					<div>내가 등록한 사진이 존재하지않습니다.</div>
				</c:when>
				<c:otherwise>
					<c:forEach var="photo" items="${photos }">
						<div class="card mb-4 photo-card">
							<img class="card-img-top" src="/resources/moim_photo/${photo.photo }"
								 alt="Card image cap">
							<div class="card-body">
								<div class="row">
									<p class="ml-2" id="mypage-photo-like">
										<c:if test="${photo.clickYN eq 0 }">
											<i class="far fa-heart" data-moimno="${photo.moimNo }" data-photono="${photo.photoNo }"></i>
										</c:if>
										<c:if test="${photo.clickYN eq 1 }">
											<i class="fas fa-heart" data-moimNo="${photo.moimNo }" data-photoNo="${photo.photoNo }"></i>
										</c:if>
										<span class="ml-3">${photo.likes }개</span>						
									</p> 
								</div>
								<div class="row text-right">
									<div class="col-12">
										<span>${photo.userId }</span><span class="ml-4"><fmt:formatDate value="${photo.createdDate }"/> </span>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div class="col-3" style="padding: 30px 35px;">
			<nav class="navbar mypage-follower-nav">
				<ul class="nav nav-tabs">
					<li class="nav-item"><a class="nav-link active" href="#" data-type="follower">팔로워</a></li>
					<li class="nav-item"><a class="nav-link" href="#" data-type="following">팔로잉</a></li>
				</ul>
			</nav>
			<div class="mypage-follower">
				<c:forEach items="${followerMap.followers }" var="follower">
					<div class="mb-3 pl-5">
						<a href="/other/info.do?userId=${follower.folUserId }"> <img
							src="/resources/profileImage/${follower.image }"
							class="rounded-circle smallimage mr-3" alt="Cinque Terre"> <span
							style="font-size: 15px; font-weight: bold;">${follower.nickname }</span>
						</a>
					</div>
				</c:forEach>
			</div>
			<div class="mypage-following" style="display: none;">
				<c:forEach items="${followerMap.followings }" var="following">
					<div class="mb-3 pl-5">
						<a href="/other/info.do?userId=${following.userId }"> <img
							src="/resources/profileImage/${following.image }"
							class="rounded-circle smallimage mr-3" alt="Cinque Terre"> <span
							style="font-size: 15px; font-weight: bold;">${following.nickname }</span>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>


<script>
	//가입모임 데이터 가져오는 AJAX
	$(function () {
		
		$("#mypage-photo-like i").click(function() {
			var $that = $(this);
			var $likeCnt = $that.next('span');
			var likeCnt = Number($likeCnt.text().slice(0,-1));
			
			if ($that.hasClass('far')) {
				$.ajax({
					type:"GET",
					url:"/mypage/addLike.do",
					data: {
						moimNo : $that.data('moimno'),
						photoNo : $that.data('photono')
					},
					dataType: "json",
					success:function (status) {
						$that.removeClass('far');
						$that.addClass('fas');
						$likeCnt.text(likeCnt + 1 + '개');
					}
				})
			} else {
		
				$.ajax({
					type:"GET",
					url:"/mypage/delLike.do",
					data: {
						moimNo : $that.data('moimno'),
						photoNo : $that.data('photono')
					},
					dataType: "json",
					success:function (status) {
						$that.removeClass('fas');
						$that.addClass('far');
						$likeCnt.text(likeCnt - 1 + '개');
					}
				})
			}
		})
		
		// 팔로워 탭
		$(".mypage-follower-nav li a").click(function() {
			$(".mypage-follower-nav li a").removeClass('active');
			var type = $(this).data('type');
			$(this).addClass('active')
			
			if('follower' == type) {
				$(".mypage-follower").css('display','block');
				$(".mypage-following").css('display','none');
			} else {
				$(".mypage-follower").css('display','none');
				$(".mypage-following").css('display','block');				
			}
		})
	})
</script>