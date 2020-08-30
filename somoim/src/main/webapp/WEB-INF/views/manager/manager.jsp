<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1 class="mt-5 ml-4">관리자 페이지</h1>
<div class="ml-4">
  <div class="row mt-3" style="width: 95%">
    <div class="col-12">
      <nav class="navbar">
        <ul class="nav nav-tabs" id="mypage-nav">
          <li class="nav-item"><a class="nav-link active" href="/manager/show.do">사용자 신고 관리</a>
          </li>
          <li class="nav-item"><a class="nav-link" href="/manager/boards.do?pageNo=1">공지사항 등록</a>
          </li>
        </ul>
      </nav>
    </div>
  </div>
    
    <div class="row justify-content-center">
      <table id="warning-list-table" class="table table-striped" style="width:95%;">
        <thead>
          <tr>
            <th>사용자</th>
            <th>신고횟수</th>
            <th>자세히보기</th>
            <th>경고버튼</th>
            <th>계정상태</th>
            <th>정지버튼</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach items="${userList }" var="user">
          <tr>
            <td>${user.userId }</td>
            <td>${user.warningCount }</td>
            <td>
            	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#warning-detail-modal" data-user-id="${user.userId }">
 				상세</button>
 			</td>
            <td><button type="button" class="btn btn-warning" data-user-id="${user.userId }">경고</button></td>
            <c:choose>
	            <c:when test="${user.accountStatus eq 'Y'}">
	            	<td><strong class="text-danger">정지</strong></td>
	            	<td><button type="button" class="btn btn-secondary" data-user-id="${user.userId }" data-status="${user.accountStatus}">풀기</button></td>
	            </c:when>
            	<c:otherwise>
            		<td><strong class="text-secondary">일반</strong></td>
            		<td><button type="button" class="btn btn-danger" data-user-id="${user.userId }" data-status="${user.accountStatus}">정지</button></td>
            	</c:otherwise>
            </c:choose>
          </tr>
       </c:forEach>
        </tbody>
      </table>

<!-- The Modal -->
<div class="modal" id="warning-detail-modal">
  <div class="modal-dialog modal-dialog-centered  modal-xl">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">상세</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <table class="table">
        	<colgroup>
        		<col width="10%">
        		<col width="8%">
        		<col width="*">
        		<col width="10%">
        		<col width="7%">
        	</colgroup>
        	<thead>
        		<tr>
        			<th>신고자</th>
        			<th>유형</th>
        			<th>내용</th>
        			<th>신고날짜</th>
        			<th>삭제</th>
        		</tr>
        	</thead>
        	<tbody>
        		
        	</tbody>
        </table>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
  </div>
</div>


<script type="text/javascript">
$(function() {
	
	$("#warning-detail-modal").on("hide.bs.modal", function() {
		document.location.reload(true);
	});
	
	// 신고 상세보기 버튼 클릭
	$("#warning-list-table tbody tr td:nth-child(3) button").click(function() {
		showDetail($(this).data("user-id"));
	});
	
	// 신고 상세보기에서 삭제
	$("#warning-detail-modal tbody").on("click", "td button", function() {
		var warningNo = $(this).data("warning-no");
		var userId = $(this).data("user-id");
		
		$.ajax({
			type: "GET",
			url: "/manager/delete.do",
			data: {
				warningNo:warningNo
			}
		})
		console.log(userId);
		showDetail(userId);
	});
	
	// 유저한테 경고 보내기
	$("#warning-list-table tbody tr td:nth-child(4) button").click(function() {
		var userId = $(this).data("user-id");
		
		$.ajax({
			type: "GET",
			url: "/manager/warning.do",
			data: {
				userId: userId
			},
			success: function() {
				alert("경고보냄");
			}
		})
	});
	
	// 유저 계정 정지/해제
	$("#warning-list-table tbody tr td:nth-child(6) button").click(function() {
		var userId = $(this).data("user-id");
		var status = $(this).data("status");
		console.log(userId);
		console.log(status);
		$.ajax({
			type: "GET",
			url: "/manager/account.do",
			data: {
				userId: userId,
				status: status
			},
			success: function() {
				document.location.reload(true);
			}
		})
	});
	
	// 신고 상세보기
	function showDetail(userId) {
		$.ajax({
			type: "GET",
			url: "/manager/detail.do",
			data: {
				userId: userId
			},
			dataType: "json",
			success: function(detailList) {
				var $tbody = $("#warning-detail-modal tbody").empty();
				
				$.each(detailList, function(index, detail) {
					var text = "<tr>";
						text += "<td>"+detail.loginUserId+"</td>";
						text += "<td>"+detail.type+"</td>";
        				text += "<td>"+detail.content+"</td>";
        				text += "<td>"+detail.createdDate+"</td>";
        				text += "<td><button type='button' class='btn btn-danger' data-warning-no="+detail.warningNo+" data-user-id="+detail.userId+">x</button></td>";
        				text += "</tr>";
        				
        			$tbody.append(text);
				})
			}
		})
		
	}
})
</script>