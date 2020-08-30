<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
	.notice-fontsize {
		font-size: 40px;
	}

	#manager-notice-modify-modal .input-group-text {
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
	
	#manager-notice-modify-modal .form-control {
		width: 100%;
	    padding: 3px;
	    font-size: 16px;
	    border: 1px solid rgba(0,0,0,.5);
	    border-radius: 5px;
	    outline: none;
	    box-sizing: border-box;
	    box-shadow: inset 0 1px 2px rgba(0,0,0,.075);  /* .75 아니고 .075 주의 */
	    margin-bottom: 4px;
	}
</style>
<h1 class="mt-5 ml-4">관리자 페이지</h1>

<div class="ml-4">
	<div class="row mt-3" style="width: 95%">
		<div class="col-12">
			<nav class="navbar">
				<ul class="nav nav-tabs" id="mypage-nav">
					<li class="nav-item"><a class="nav-link"
						href="/manager/show.do">사용자 신고 관리</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="/manager/boards.do?pageNo=1">공지사항 등록</a></li>
				</ul>
			</nav>
		</div>
	</div>

	<div class="row mx-auto" style="width: 85%;">
		<strong class="notice-fontsize mx-auto">공지사항</strong>
		<table class="table">
			<colgroup>
				<col width="10%">
				<col width="40%">
				<col width="10%">
				<col width="40%">
			</colgroup>
			<tbody>
				<tr>
					<th class="">title</th>
					<td class="">${managerBoard.boardTitle }</td>
					<th class="">name</th>
					<td class="">somoim</td>
				</tr>
				<tr>
					<th class="">DATE</th>
					<td class=""><fmt:formatDate value="${managerBoard.createdDate }"/></td>
					<th class="">VIEW</th>
					<td class="">${managerBoard.views }</td>
				</tr>
				<tr>
					<td colspan="4"><c:out value="${managerBoard.boardContent }"/></td>
				</tr>
			</tbody>
		</table>
		<a href="boards.do?pageNo=${param.pageNo }" type="button" class="btn-sm btn btn-secondary mr-auto"><strong>목록</strong></a>
		<div>
			<a href="deleteboard2.do?boardNo=${managerBoard.boardNo }" type="button" class="btn-sm btn btn-outline-secondary"><strong>삭제</strong></a>
			<button type="button" class="btn-sm btn btn-secondary"
				id="manager-notice-modify-button">
				<strong>수정</strong>
			</button>
		</div>
	</div>
</div>

<!-- 수정 모달창 -->
<div class="modal fade" id="manager-notice-modify-modal">
  <div class="modal-dialog modal-lg modal-dialog-centered">
    <div class="modal-content">

      <div class="modal-header">
        <h4 class="modal-title">공지사항 수정</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

	  <form:form action="modify.do" method="post" modelAttribute="managerBoardForm">
	      <div class="modal-body">
				<div class="input-group">
					<input type="hidden" name="boardNo" value="${managerBoard.boardNo }">
					<div class="input-group-text">타이틀 수정</div>
					<input type="text" class="form-control" name="boardTitle" value="${managerBoard.boardTitle }">
				</div>
				<div class="input-group mt-2">
					<div class="input-group-text">내용 수정 </div>
				</div>
					<textarea class="form-control" id="manager-notice-modify-content" name="boardContent">${managerBoard.boardContent }</textarea>
	      </div>
	
	      <div class="modal-footer">
	        <button type="submit" class="btn btn-primary">수정 확인</button>
	        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
	      </div>

		</form:form>
    </div>
  </div>
</div>

<script>
CKEDITOR.replace( 'manager-notice-modify-content' );
$(function() {

	CKEDITOR.replace('magager-notice-content');

	// 수정 버튼
	$("#manager-notice-modify-button").click(function() {
		$("#manager-notice-modify-modal").modal('show');
		
	})
})
</script>