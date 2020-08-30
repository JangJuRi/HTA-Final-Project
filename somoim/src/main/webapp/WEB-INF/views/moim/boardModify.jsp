<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
						<a class="nav-link active" href="board.do?moimNo=${param.moimNo}&pageNo=1">게시판</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="photo.do?moimNo=${param.moimNo}">사진첩</a>
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
	<div class="row mt-3 mb-5 justify-content-center">
		<div class="card" style="width: 90%">
			<div class="card-header">글수정</div>
			<form:form action="boardModify.do" method="post" class="form" modelAttribute="boardForm">
				<div class="card-body">
						<div class="form-row">
							<div class="col-2 mt-2 mr-2 text-right">
								<span class="align-middle">분류</span>
							</div>
							<div class="col-2">
								<select name="boardCateNo" class="form-control">
									<option value="2" selected>후기</option>
									<option value="3">일반</option>
									<option value="1">공지</option>
								</select>
							</div>
						</div>
						<hr>
						<div class="form-row">
							<div class="col-2 mt-2 mr-2 text-right">
								<span class="align-middle">글제목</span>
							</div>
							<div class="col-8">
								<input type="text" class="form-control" value="${board.title}" name="title"/>
							</div>
						</div>
						<hr>
						<div class="form-row">
							<div class="col-2 mt-2 mr-2 text-right">
								<span class="align-middle">내용</span>
							</div>
							<div class="col-8">
								<textarea name="content" id="ckeditor" rows="10" cols="54">${board.content}</textarea>
							</div>
						</div>
						<input type="text" hidden="hidden" name="userId" value="${loginedUser}" />
						<input type="text" hidden="hidden" name="boardNo" value="${board.boardNo}" />
				</div>
				<div class="card-footer">
					<div class="row">
						<div class="text-right" style="width: 90%">
							<a href="board.do?moimNo=${param.moimNo}" class="btn btn-secondary">취소</a>
							<button type="submit" class="btn btn-primary">수정</button>
						</div>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</div>

<script>
	CKEDITOR.replace( 'ckeditor' );
</script>