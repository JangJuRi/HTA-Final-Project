<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
#warning-list-table a, #warning-list-table a:hover {
	color: black;
	text-decoration: none;
}
</style>    

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
  
  <div class="row justify-content-center" >
  	<table id="warning-list-table" class="table table-striped" style="width:94%;">
  		<colgroup>
        		<col width="8%">
        		<col width="*">
        		<col width="10%">
        		<col width="10%">
        		<col width="8%">
        </colgroup>
        <thead>
          <tr>
            <th>#</th>
            <th>제목</th>
            <th>날짜</th>
            <th>조회수</th>
            <th>삭제</th>
          </tr>
        </thead>
        <tbody>
        <c:choose>
        	<c:when test="${empty managerBoards}">
        		<tr class="text-center">
        			<td colspan="5">등록된 공지가 없습니다.</td>
        		</tr>
        	</c:when>
        	<c:otherwise>
		        <c:forEach items="${managerBoards }" var="board">
		       		<tr id="tr-${board.boardNo }">
		       			<td class="text-danger">공지</td>
		       			<td><a href="board.do?boardNo=${board.boardNo }&pageNo=${param.pageNo}">${board.boardTitle }</a></td>
		       			<td><fmt:formatDate value="${board.createdDate }"/></td>
		       			<td>${board.views }</td>
		       			<td><button type="button" class="btn btn-danger" data-board-no="${board.boardNo }">x</button></td>
		       		</tr>
		       	</c:forEach>	
        	</c:otherwise>
        </c:choose>
        </tbody>
      </table>
  </div>
	<ul class="pagination justify-content-center">
		<c:if test="${page.pageNo gt 1 }">
			<li class="page-item"><a class="page-link" href="boards.do?pageNo=${page.pageNo - 1}"><</a></li>
		</c:if>
		
		<c:forEach var="num" begin="${page.beginPage }" end="${page.endPage }">
			<li class='page-item ${param.pageNo eq num ? "active" : "" }'><a class="page-link" href="boards.do?pageNo=${num}">${num }</a></li>
		</c:forEach>
		
		<c:if test="${page.pageNo lt page.totalPages}">
			<li class="page-item"><a class="page-link" href="boards.do?pageNo=${page.pageNo + 1}">></a></li>
		</c:if>
	</ul>
  <div class="row mt-4">		
		<div class="text-right" style="width: 90%">
			<a href="/manager/create.do" class="btn btn-primary">글 쓰기</a>
		</div>
	</div>
 </div>
 
<script type="text/javascript">
$(function() {
	$("#warning-list-table button").click(function() {
		var boardNo = $(this).data("board-no");
		
		$.ajax({
			type: "GET",
			url: "/manager/deleteboard.do",
			data: {
				boardNo: boardNo
			},
			success: function() {
				var $tr = $("#tr-" + boardNo);
				$tr.hide();
			}
		})
	});
})
</script>