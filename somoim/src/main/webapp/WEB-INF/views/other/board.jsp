<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.myimage {
	width: 100px;
	height: 100px;
}

.smallimage {
	width: 50px;
	height: 50px;
}

.otherpate-btns {
	padding-left: 181px;
    position: absolute;
    top: 84px;
}

#ohter-warning-modal>div {
	width: 450px;
}

#ohter-message-modal>div {
	width: 450px;
}

#ohter-warning-modal .input-group-text, #ohter-message-modal .input-group-text {
	display: flex;
	-ms-flex-align: center;
	align-items: center;
	padding: 0px 10px;
	margin-bottom: 0px;
	font-size: 18px;
	font-weight: 400;
	line-height: 1.5;
	color: #495057;
	text-align: center;
	white-space: nowrap;
	background-color: #FFF;
	border: none;
	border-radius: 0.25rem;
}

#ohter-warning-modal .form-control, #ohter-message-modal .form-control {
	width: 100%;
	padding: 3px;
	font-size: 16px;
	border: 1px solid rgba(0, 0, 0, .5);
	border-radius: 5px;
	outline: none;
	box-sizing: border-box;
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, .075); /* .75 아니고 .075 주의 */
	margin-bottom: 4px;
}

#other-content-counter {
	color: #aaa;
	font-size: 14px;
}
</style>
<div class="ml-5 mt-3" style="position: relative;">
	<img src="/resources/profileImage/${otherUser.profileImage }"
		class="rounded-circle myimage mr-3" alt="Cinque Terre"> <span
		style="font-size: large; font-weight: bold;">${otherUser.nickname }</span>
	<div class="text-left otherpate-btns">
		<button class="btn btn-outline-danger btn-sm" id="other-warning-btn">
			신고하기
			<svg width="2em" height="2em" viewBox="0 0 16 16"
				class="bi bi-brightness-alt-high" fill="currentColor"
				xmlns="http://www.w3.org/2000/svg">
	  			<path fill-rule="evenodd"
					d="M5.041 10.5h5.918a3 3 0 0 0-5.918 0zM4 11a4 4 0 1 1 8 0 .5.5 0 0 1-.5.5h-7A.5.5 0 0 1 4 11zm4-8a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 3zm8 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 11a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.414a.5.5 0 1 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zM4.464 7.464a.5.5 0 0 1-.707 0L2.343 6.05a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707z" />
			</svg>
		</button>
		<button class="btn btn-outline-primary btn-sm" id="other-message-btn">
			쪽지 보내기
			<svg width="2em" height="2em" viewBox="0 0 16 16"
				class="bi bi-mailbox2" fill="currentColor"
				xmlns="http://www.w3.org/2000/svg">
				<path fill-rule="evenodd"
					d="M12 3H4a4 4 0 0 0-4 4v6a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1V7a4 4 0 0 0-4-4zM8 7a3.99 3.99 0 0 0-1.354-3H12a3 3 0 0 1 3 3v6H8V7zm1 1.5h2.793l.853.854A.5.5 0 0 0 13 9.5h1a.5.5 0 0 0 .5-.5V8a.5.5 0 0 0-.5-.5H9v1zM4.585 7.157C4.836 7.264 5 7.334 5 7a1 1 0 0 0-2 0c0 .334.164.264.415.157C3.58 7.087 3.782 7 4 7c.218 0 .42.086.585.157z" />
			</svg>
		</button>
		<c:if test="${followerYN eq 0 }">
			<a class="btn btn-outline-info  text-dark btn-sm" href="/other/addfollow.do">
				팔로우
				<svg width="2em" height="2em" viewBox="0 0 16 16"
					class="bi bi-person-plus" fill="currentColor"
					xmlns="http://www.w3.org/2000/svg">
				  <path fill-rule="evenodd"
						d="M11 14s1 0 1-1-1-4-6-4-6 3-6 4 1 1 1 1h10zm-9.995-.944v-.002.002zM1.022 13h9.956a.274.274 0 0 0 .014-.002l.008-.002c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664a1.05 1.05 0 0 0 .022.004zm9.974.056v-.002.002zM6 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0zm4.5 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z" />
				  <path fill-rule="evenodd"
						d="M13 7.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0v-2z" />
				</svg>
			</a>
		</c:if>
		<c:if test="${followerYN eq 1 }">
			<a class="btn btn-outline-info text-dark btn-sm" href="/other/deletefollow.do">
				팔로우 취소
				<svg width="2em" height="2em" viewBox="0 0 16 16"
					class="bi bi-person-dash-fill" fill="currentColor"
					xmlns="http://www.w3.org/2000/svg">
	  				<path fill-rule="evenodd"
						d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm5-.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5z" />
				</svg>
			</a>
		</c:if>
	</div>
</div>
<div class="row mt-4" style="width: 95%">
	<div class="col-12">
		<nav class="navbar">
			<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link" href="/other/info.do?userId=${otherUser.id }">정보</a></li>
				<li class="nav-item"><a class="nav-link" href="/other/usermoim.do">가입모임</a></li>
				<li class="nav-item"><a class="nav-link" href="/other/photo.do">사진첩</a></li>
				<li class="nav-item"><a class="nav-link active" href="/other/board.do">작성후기</a></li>
			</ul>
		</nav>
	</div>
</div>
<div class="row" style="padding: 30px 35px;">
	<div class="col-12">
			<c:choose>
				<c:when test="${followerYN eq 0 }">
					<div>팔로워 하지 않으면 볼 수 없습니다.</div>
				</c:when>
				<c:when test="${empty boards }">
					<div>내가쓴 글이 존재하지않습니다.</div>
				</c:when>
				<c:otherwise>
					<div class='row justify-content-center'>
						<table class='table table-hover'>
							<thead>
								<tr>
									<th></th>
									<th>제목</th>
									<th>작성자</th>
									<th>날짜</th>
									<th>조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${boards }" var="board">
									<c:if test="${board.boardCateNo eq 1 }">
										<tr class='table-danger'>
											<td class='text-center'><span class='badge badge-danger'>공지</span>
											</td>
									</c:if>
									<c:if test="${board.boardCateNo eq 2 }">
										<tr>
											<td class='text-center'>후기</td>
									</c:if>
									<c:if test="${board.boardCateNo eq 3 }">
										<tr>
											<td class='text-center'>일반</td>
									</c:if>
											<td>
												<a href="/moim/boardDetail.do?boardNo=${board.boardNo }"><c:out value="${board.title }" /></a>
											</td>
											<td>${board.userId }</td>
											<td><fmt:formatDate value="${board.createdDate }" /></td>
											<td>${board.views }</td>
										</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
</div>

<!-- 신고하기 모달창 -->
<div class="modal fade" id="ohter-warning-modal">
  <div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content">

      <div class="modal-header">
        <h4 class="modal-title">신고하기</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
	
      <div class="modal-body">
      	<div class="input-group">
			<div class="input-group-text" id="inputGroup-sizing-sm">신고내용
			</div>
			<textarea class="form-control" id="other-warning-content" cols="5"
				name="content" placeholder="신고내용을 입력해주세요"></textarea>
			<span id="other-content-counter">(0 / 최대 100자)</span>
		</div>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="other-warning-submit">신고하기</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>

<!-- 메세지보내기 모달창 -->
<div class="modal fade" id="ohter-message-modal">
  <div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content">

      <div class="modal-header">
        <h4 class="modal-title">메세지 보내기</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
	
      <div class="modal-body">
      	<div class="input-group">
			<div class="input-group-text">제목</div>
			<input type="text" class="form-control"
				id="other-message-title" placeholder="제목을 입력해주세요">
		</div>
      	<div class="input-group">
			<div class="input-group-text" id="inputGroup-sizing-sm">내용
			</div>
			<textarea class="form-control" id="other-message-content" cols="5"
				name="content" placeholder="신고내용을 입력해주세요"></textarea>
			<span id="other-message-content-counter">(0 / 최대 100자)</span>
		</div>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="other-message-submit">보내기</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
<script>
// 가입모임 데이터 가져오는 AJAX
$(function() {
	// 신고 모달
	$('#other-warning-btn').click(function() {
		$("#ohter-warning-modal").modal("show");
	})
	
	$("#other-warning-submit").click(function() {
		$.ajax({
			type: "post",
			url: "/other/warning.do",
			data:{ text: $('#other-warning-content').val()},
			dataType: "json",
			success: function (status) {
				if (status) {
					$("#ohter-warning-modal").modal("hide");					
				} else {
					alert("신고를 실패했습니다. 다시 시도해주세요")
				}
			}
		})
	})
	
	//경고창 글자수 실시간 카운팅
	$('#other-warning-content').keyup(function (e){
	    var content = $(this).val();
	    $('#other-content-counter').html("("+content.length+" / 최대 100자)");    
	    if (content.length > 100){
	        alert("최대 100자까지 입력 가능합니다.");
	        $(this).val(content.substring(0, 100));
	        $('#other-content-counter').html("(100 / 최대 100자)");
	    }
	});
	
	// 메세지 모달
	$('#other-message-btn').click(function() {
		$("#ohter-message-modal").modal("show");
	})
	
	//메세지 글자수 실시간 카운팅
	$('#other-message-content').keyup(function (e){
	    var content = $(this).val();
	    $('#other-message-content-counter').html("("+content.length+" / 최대 100자)");    
	    if (content.length > 100){
	        alert("최대 100자까지 입력 가능합니다.");
	        $(this).val(content.substring(0, 100));
	        $('#other-message-content-counter').html("(100 / 최대 100자)");
	    }
	});
	
	$("#other-message-submit").click(function() {
		$.ajax({
			type: "post",
			url: "/other/sendmessage.do",
			data:{ 
				content: $('#other-message-content').val(),
				title: $('#other-message-title').val()	
				},
			dataType: "json",
			success: function (status) {
				if (status) {
					$("#ohter-message-modal").modal("hide");					
				} else {
					alert("메세지 보내기를 실패했습니다. 다시 시도해주세요")
				}
			}
		})
	})
	
	$("#other-follower-btn button").click(function() {
	})
})
</script>