<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<style>
	.card{
		border: none;
	}
	.photo-card {
	 	width: 345px;
	 	height: 330px;
	 	margin: 8px;
	}	
	#photo-like:hover {
		cursor: pointer;
	}
	
	.fa-plus:hover {
		cursor: pointer;
	}
	.fa-plus {
		color: #007BFF;
	}
	
	.card-img-top {
		width: 343px;
		height: 250px;
	}	
	.card-body{
		padding: 8px;
	}
	.card-body p{
		display: inline-block;
		margin-bottom: 0px;
	}
	
</style>



<div>
	<div class="row mt-3" style="width: 95%">
		<div class="col-12">
			<img src="/resources/moim_images/longboard.jpg" width="100%" />
		</div>
	</div>
	<div class="row mt-4">
		<div class="col-12">
			<h3>${moim.title}</h3>
		</div>
	</div>
	<div class="row mt-3" style="width: 95%">
		<div class="col-12">
			<nav class="navbar">
				<ul class="nav nav-tabs">
					<li class="nav-item">
						<a class="nav-link" href="moim.do?moimNo=${param.moimNo}">정보</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="board.do?moimNo=${param.moimNo}&pageNo=1">게시판</a>
					</li>
					<li class="nav-item">
						<a class="nav-link active" href="photo.do?moimNo=${param.moimNo}">사진첩</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">채팅</a>
					</li>
					<li class="nav-item justify-content-right">
						<a class="nav-link" href="#">탈퇴</a>
					</li>
				</ul>
			</nav>
		</div>
	</div>

	<div class="row" id="photo-body">
	</div>

	<div class="modal" id="photo-add">
		<div class="modal-dialog">
	    	<div class="modal-content">
	
		        <!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">사진 업로드</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<form:form action="photoAdd.do" method="post" enctype="multipart/form-data" modelAttribute="photoForm">
					<!-- Modal body -->
					<div class="modal-body">
						<img id="temp-img" width="300px" />
						<form:input id="img-file" type="file" path="upfile" required="required" />
					</div>
					<form:input id="getMoimNo" type="text" hidden="hidden" value="${param.moimNo}" path="moimNo" />
					<form:input type="text" hidden="hidden" value="${LOGIN_USER.id}" path="userId" />
					<!-- Modal footer -->
					<div class="modal-footer">
						<div class="text-right">
							<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
							<button type="submit" class="btn btn-primary">업로드</button>
						</div>

					</div>
				</form:form>
			</div>
		</div>
	</div>
	
	<!-- 바로가기 키 -->
	<div style="position: fixed;bottom: 30px; right: 30px;">
		<i class="fas fa-2x fa-plus"></i>
		<a href="#"><i class="fas fa-2x fa-arrow-up"></i></a>
	</div>
	
</div>

<script>
    let isEnd = false;
    let photoRow = 8;
	let $photoBody = $("#photo-body");

	$(function () {
		$("#img-file").change(function (e) {
			readURL(this);
		});

		$(window).scroll(function(){
			let $window = $(this);
			let scrollTop = $window.scrollTop();
			let windowHeight = $window.height();
			let documentHeight = $(document).height();
			

			// scrollbar의 thumb가 바닥 전 30px까지 도달 하면 리스트를 가져온다.
			if( scrollTop + windowHeight == documentHeight ){
				getPhotos();
			}
		})
		getPhotos();
		$("#photo-body").on("click", "i", function() {
			var $that = $(this);
			var $likeCnt = $that.next('span');
			var likeCnt = Number($likeCnt.text().slice(0,-1));
			var userId = $("#userId").val();
			if ($that.hasClass('far')) {
				$.ajax({
					type:"GET",
					url:"/moim/addLike.do",
					data: {
						moimNo : $that.data('moimno'),
						photoNo : $that.data('photono'),
						userId : userId
					},
					dataType: "json",
					success:function (status) {
						$that.removeClass('far');
						$that.addClass('fas');
						$likeCnt.text(likeCnt + 1 + '개');
						$that.css("color", "coral");
					}
				})
			} else {
				$.ajax({
					type:"GET",
					url:"/moim/delLike.do",
					data: {
						moimNo : $that.data('moimno'),
						photoNo : $that.data('photono'),
						userId : userId
					},
					dataType: "json",
					success:function (status) {
						$that.removeClass('fas');
						$that.addClass('far');
						$likeCnt.text(likeCnt - 1 + '개');
						$that.css("color", "black");
					}
				})
			}
		})


	});
	
	function getPhotos() {
		if(isEnd == true){
            return;
        }
		
		var moimNo = $("#getMoimNo").val()
		$.ajax({
			type:"GET",
			url:"/moim/morePhoto.do",
			data: {
				moimNo : moimNo,
				photoRow : photoRow
			},
			dataType: "json",
			success:function (result) {
				let length = result.length;
				if( length < 4 ){
					isEnd = true;
				}
				if(length == 0) {
					return;
				}

				$.each(result, function (index, photo) {
					let row = '';
					row += '<div class="card mb-4 photo-card">';
					row += '<img class="card-img-top" src="/resources/moim_photo/'+photo.photo+'"alt="Card image cap">';
					row += '<div class="card-body"><div class="row"><p class="ml-2" id="photo-like">';
					if(photo.clickYN == 0) {
						row += '<i class="far fa-heart" data-moimno="'+photo.moimNo+'" data-photono="'+photo.photoNo+'"></i>';
					} else {
						row += '<i class="fas fa-heart" style="color:coral;" data-moimno="'+photo.moimNo+'" data-photono="'+photo.photoNo+'"></i>';
					}				
					row += '<span class="ml-3">'+photo.likes+'개</span></p></div>';
					row += '<div class="row text-right"><div class="col-12">';
					row += '<span>'+photo.userId+'</span><span class="ml-4">'+photo.createdDate+'</span>';
					row += '</div></div></div></div>';

					$photoBody.append(row);
				})
				photoRow += 4;
			}
		})
	}

	function readURL(input) {
		
		if(input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function (e) {
				$("#temp-img").attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}

	$(".fa-plus").click(function () {
		$("#photo-add").modal("show");

	})
	
	
</script>










