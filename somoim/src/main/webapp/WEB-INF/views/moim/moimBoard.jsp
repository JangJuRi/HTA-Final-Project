<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
	<div class="row mt-5">
			<a href="notice.do?moimNo=${param.moimNo }&pageNo=1&category=notice" class="ml-3">공지</a>
	</div>
	<div class="row justify-content-center">
		<table class="table table-hover" style="width: 80%">
			<thead>
			<tr>
				<th>#</th>
				<th>제목</th>
				<th>작성자</th>
				<th>날짜</th>
				<th>조회수</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="board" items="${boards }">
				<c:choose>
                	<c:when test="${board.boardCateNo eq 1 }">
                		<tr class="table-danger">
                			<td class="text-center"><span class="badge badge-danger">공지</span></td>
                	</c:when>
                	<c:when test="${board.boardCateNo eq 2 }">
                		<tr>
							<td class="text-center">후기</td>
                	</c:when>
                	<c:otherwise>
                		<tr>
							<td class="text-center">일반</td>
                	</c:otherwise>
              	</c:choose>
	              			<td>
                                <a href="boardDetail.do?boardNo=${board.boardNo}">${board.title }</a>
                            </td>
							<td>${board.userId }</td>
							<td><fmt:formatDate value="${board.createdDate }"/> </td>
							<td>${board.views }</td>
						</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="row mt-4">		
		<div class="text-right" style="width: 90%">
			<a href="boardAdd.do?moimNo=${param.moimNo}" class="btn btn-primary">글 쓰기</a>
		</div>
	</div>
	<c:if test="${param.category eq notice }">
		<div class="row justify-content-center">
			<ul class="pagination">
				<c:if test="${page.pageNo gt 1 }">
					<li class="page-item"><a class="page-link" href="board.do?moimNo=${param.moimNo}&pageNo=${page.pageNo - 1}"><</a></li>
				</c:if>
				
				<c:forEach var="num" begin="${page.beginPage }" end="${page.endPage }">
					<li class='page-item ${param.pageNo eq num ? "active" : "" }'><a class="page-link" href="board.do?moimNo=${param.moimNo}&pageNo=${num}">${num }</a></li>
				</c:forEach>
				
				<c:if test="${page.pageNo lt page.totalPages}">
					<li class="page-item"><a class="page-link" href="board.do?moimNo=${param.moimNo}&pageNo=${page.pageNo + 1}">></a></li>
				</c:if>
				
			</ul>
		</div>
	</c:if>


</div>