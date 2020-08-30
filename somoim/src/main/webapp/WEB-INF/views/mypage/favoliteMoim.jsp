<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
p {
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
    
.card{
	border: none;
}
#mypage-join-moim {
	padding: 30px 44px;
}

#mypage-join-moim .home-body {
	font-size: 18px;
	margin-left: 3px;
	padding: 35px;
}
#mypage-join-moim .home-card {
 	width: 337px;
 	height: 330px;
 	margin: 6px;
}
.home-card:hover {
	cursor: pointer;
}
.card-img-top {
	width: 337px;
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

.mypage-follower {

}

.mypage-following {
	display: none;
}
</style>
<div>
	<div class="ml-5 mt-3">
		<img src="/resources/profileImage/${LOGIN_USER.profileImage }"
			class="rounded-circle myimage mr-3" alt="Cinque Terre"> <span
			style="font-size: large; font-weight: bold;">${LOGIN_USER.nickname }</span>
	</div>
	<div class="row mt-3" style="width: 95%">
		<div class="col-12">
			<nav class="navbar">
				<ul class="nav nav-tabs" id="mypage-nav">
					<li class="nav-item"><a class="nav-link"
						href="/mypage/mypage.do">정보</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/mypage/usermoim.do">가입모임</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="/mypage/favoliteMoim.do">즐겨찾는 모임</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/mypage/photo.do">사진첩</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/mypage/board.do">내후기</a></li>
				</ul>
			</nav>
		</div>
	</div>
	<div class="row" id="mypage-joinmoim">
		<div class="col-9">
			<div class='clearfix' id="mypage-join-moim">
				<c:choose>
					<c:when test="${empty favolitemoims }">
						<div><p>내가 가입한 모임이 존재하지않습니다.</p></div>
					</c:when>
					<c:otherwise>
						<c:forEach items="${favolitemoims }" var="moim">
								<div class="card mb-4 home-card float-left" data-no="${moim.moimNo }">
								<img class="card-img-top" src="/resources/home_images/7.jpg"
									alt="Card image cap">
								<div class="card-body">
									<div class="card-title">
										<span><c:out value="${moim.title }" /></span>
									</div>
									<div class="text-left">
										<i class="fas fa-heart" style="color: #d09afc"></i>&ensp;<span class="text-left" >${moim.likes }</span>&ensp;&ensp;
										<i class="fas fa-users" style="color: #fcba03"></i>&ensp;<span class="mr-3">${moim.joinCount }/${moim.headCount }</span>
										<p style="float: right">
										<fmt:formatDate value="${moim.joinDate}" /></p>
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