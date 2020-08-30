<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1 class="mt-5 ml-4">관리자 페이지</h1>
<div class="ml-4">
  <div class="row mt-3" style="width: 95%">
    <div class="col-12">
      <nav class="navbar">
        <ul class="nav nav-tabs" id="mypage-nav">
          <li class="nav-item"><a class="nav-link" href="/manager/show.do">사용자 신고 관리</a>
          </li>
          <li class="nav-item"><a class="nav-link active" href="/manager/boards.do?pageNo=1">공지사항 등록</a>
          </li>
        </ul>
      </nav>
    </div>
  </div>
  <div>
  	<div class="row mt-3 mb-5 justify-content-center">
		<div class="card" style="width: 90%">
			<div class="card-header">글쓰기</div>
				<form:form action="create.do" method="post" class="form" modelAttribute="managerBoardForm">
					<div class="card-body">
					<!--  
						<div class="form-row">
							<div class="col-2 mt-2 mr-2 text-right">
								<span class="align-middle">분류</span>
							</div>
							<div class="col-2">
								<select name="boardCateNo" class="form-control">
									<option value="0" selected="selected" disabled="disabled">공지</option>
								</select>
							</div>
						</div>
						<hr>
					-->
						<div class="form-row">
							<div class="col-2 mt-2 mr-2 text-right">
								<span class="align-middle">글제목</span>
							</div>
							<div class="col-8">
								<input type="text" class="form-control" name="boardTitle"/>
							</div>
						</div>
						<hr>
						<div class="form-row">
							<div class="col-2 mt-2 mr-2 text-right">
								<span class="align-middle">내용</span>
							</div>
							<div class="col-8">
								<textarea name="boardContent" id="ckeditor" rows="10" cols="98"></textarea>
							</div>
						</div>
					</div>
					<div class="card-footer">
						<div class="row">
							<div class="text-right" style="width: 90%">
								<a href="/manager/boards.do?pageNo=1" class="btn btn-secondary">취소</a>
								<button type="submit" class="btn btn-primary">작성</button>
							</div>
						</div>
					</div>
			</form:form>
		</div>
	</div>
  </div>
  </div>
  
<script>
	CKEDITOR.replace( 'ckeditor' );
</script>