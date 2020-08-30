<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
  .card {
    width: 200px;
  }

  .myp {
    margin: 0;
  }

  .smallimage {
    width: 50px;
    height: 50px;
  }
</style>
<div>
	<h1><c:out value="${title }"></c:out> </h1>
	<span class="badge badge-pill badge-secondary">${keyword.locationName }</span>
	<span class="badge badge-pill badge-secondary">${keyword.mainCateName }</span>
	<span class="badge badge-pill badge-secondary">${keyword.subCateName }</span>
</div>
<!-- 여기서 부터 반복문 돌리기 -->
<c:forEach items="${cateMoims }" var="moim">
	<div class="row">
	  <div class="col-9">
	    <div class="row mb-4 mt-4">
	      <div class="col-3">
	        <img src="/resources/index_images/${moim.image }" alt="" class="rounded mx-auto d-block" width="250px">
	      </div>
	      <div class="col-8 mt-3 float-left">
	        <p class="myp" style="font-size: 50px; font-weight: bold;"><c:out value="${moim.title }"/>
	            <c:if test="${moim.premiumYn == 'Y'}">
					<i class="fas fa-crown ml-2 text-right" style="color:#6699FF;"></i>
				</c:if>
			</p>
	        <div class="mb-1">
	          <span class="mr-3"><c:out value="${moim.userId }"></c:out> </span>
	          <span><i class="fas fa-heart" style="color: #d09afc"></i><fmt:formatNumber value="${moim.likes }"/> </span>
	          <p>지역 : ${moim.locationName } &ensp;카테고리 : ${moim.subCateName }</p>
	        </div>
	        <div class="mb-2">
	          <span class="mr-3"><i class="fas fa-won-sign"></i> <fmt:formatNumber value="${moim.fee }"/> 원</span>
	          <span><fmt:formatNumber value="${moim.joinCount }"/>/<fmt:formatNumber value="${moim.headCount }"/></span>
	        </div>
	        <p class="text-right"><fmt:formatDate value="${moim.joinDate }" pattern="yyyy-MM-dd"/></p>
	      </div>
	    </div>
	  </div>
	  <div class="col-3" style="padding:">
	    <div class="text-center">내 친구</div>
	    <c:forEach items="${moim.friends }" var="friend">
	    <div class="mb-3">
	      <a href="#"><img src="/resources/home_images/3.png" class="rounded-circle smallimage mr-3" alt="Cinque Terre">
	        <span style="font-size: 15px; font-weight: bold;"><c:out value="${friend.nickname }"/></span></a>
	    </div>
	    </c:forEach>
	  </div>
	</div>
</c:forEach>
<!-- 반복문 끝-->
