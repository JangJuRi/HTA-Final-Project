<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!--Navbar -->
<style>
	
.none{display:none}

#ticker{float:left;width:100px;}

.nav-Notice-navi{
	font-size: 16px;
	float:right;
	
}
.nav-Notice-navi .btn{
    font-size: 15px;
    line-height: 7px;
    border-radius: 0.25rem;
    width: 53px;
    border: 1px solid rgba(0,073,140, .5);
	
}

.nav-Notice ul,
.nav-Notice li {margin:0; padding:0; list-style:none;}
.nav-Notice li a {display:block; height:26px; width: 220px; line-height:26px; color:#555; text-decoration:none;	overflow: hidden; text-overflow: ellipsis; white-space: nowrap;}

.nav-Notice {
	text-overflow: ellipsis;
    border-radius: 0.25rem;
    /* border: 1px solid #ced4da; */
    padding: 0 5px;
    height: 31px;
    overflow: hidden;
    background: #fff;
    width: 350px;
    font-size: 16px;
    float: left;
}


	.my-nav {
	    box-shadow: 0 0 2px rgba(0,0,0,.35);
	    background: #fff;
	    margin-bottom: -1px;
	    padding: 10px 0px 5px 0px;
	}
	
	
	.navbar-toggler {
		display: inline;
	}
	.navbar-toggler:hover {
		cursor: pointer;
	}
	
	.my-nav .navbar-icon {
		font-size: 25px;
		color: black;
	}
	
	.message-active {
		color: lightgray;
	}
	
	.nav-right {
		margin-right: 10px;
		display: flex;
	}
	
	.nav-right .nav-right-alram .fa-bell {
		padding: 4px;
    	font-size: 29px;
    	color: #606060;
    	margin-right: 10px;
    	cursor: pointer;
	}

	.nav-right .nav-right-alram .dropdown-menu {
	}
</style>
<div class="my-nav fixed-top">
	<nav class="navbar">
		<!-- 왼쪽 구역 -->
		<div>
			<div class="navbar-toggler" id="sideMenu">
				<i class="fas fa-bars navbar-icon"></i>
			</div>
			<a class="navbar-brand" href="/home.do" style="color: black"> <img src="/resources/home_images/logo_1.png"
					height="30" class="d-inline-block align-top" alt="mdb logo">
				somoim
			</a>
		</div>
		
		<!-- 중앙구역 -->
		<div style="width: 40%;">
			<form class="form-inline my-1 ml-5" action="" method="POST" style="margin-left: 9rem!important">
				<div class="md-form form-sm my-0">
					<input class="form-control form-control-sm" style="width: 500px;" type="text" placeholder="Search" id="field-search-keyword"
						aria-label="Search" name="keyword" >
				</div>
				<button id="keywordSearch" class="btn btn-outline-primary btn-sm ml-1 my-0" type="submit" >Search</button>
				 
				<div class="dropdown" id="nav-search-loaction">
					<button type="button" class="btn btn-outline-primary btn-sm dropdown-toggle" data-toggle="dropdown"></button>
					<div id="search-bar-manu" class="dropdown-menu dropdown-menu-right" style="width: 590px;">
						<div class="form-group mb-3" style="width: 100%">
							<i class="mr-2 fas fa-map-marker ml-3" style="color: #0F4C81;"></i><label>지역구</label>
							<select id="select-location" style="width: 570px; margin-left: 9px;" name="locationNo" class="form-control mt-2 pl-2 pr-2">
								<option value="0" selected="selected" class="text-center">지역</option>
								<option value="1">강서구</option>
								<option value="2">양천구</option>
								<option value="3">구로구</option>
								<option value="4">금천구</option>
								<option value="5">영등포구</option>
								<option value="6">동작구</option>
								<option value="7">관악구</option>
								<option value="8">서초구</option>
								<option value="9">강남구</option>
								<option value="10">송파구</option>
								<option value="11">강동구</option>
								<option value="12">마포구</option>
								<option value="13">용산구</option>
								<option value="14">서대문구</option>
								<option value="15">은평구</option>
								<option value="16">중구</option>
								<option value="17">종로구</option>
								<option value="18">성동구</option>
								<option value="19">광진구</option>
								<option value="20">동대문구</option>
								<option value="21">성북구</option>
								<option value="22">강북구</option>
								<option value="23">도봉구</option>
								<option value="24">노원구</option>
								<option value="25">중랑구</option>
							</select>
						</div>
						<div class="form-group mb-3" style="width: 100%">
							<i class="mr-2 fas fa-tags ml-3" style="color: #0F4C81;"></i><label>카테고리</label>
							<select id="search-main-cate" style="width: 570px; margin-left: 9px;" name="mainCateNo" class="form-control mt-2 pl-2 pr-2">
								<option value="0" selected="selected" class="text-center">메인 카테고리</option>
								<option value="1">게임/오락</option>
								<option value="2">사교/인맥</option>
								<option value="3">운동/스포츠</option>
								<option value="4">반려동물</option>
								<option value="5">문화/공연/축제</option>
							</select>
						</div>
						<div class="form-group mb-3" style="width: 100%">
							<i class="mr-2 fas fa-tags ml-3" style="color: #0F4C81;"></i><label>세부 카테고리</label>
							<select id="search-sub-cate" style="width: 570px; margin-left: 9px;" name="subCateNo" class="form-control mt-2 pl-2 pr-2">
								<option value="0" selected="selected" class="text-center">세부 카테고리</option>
							</select>
						</div>

						<div class="text-right mr-3">
							<button id="detailSearch" class="btn btn-primary btn-sm" type="submit">상세검색</button>
							<button class="btn btn-outline-primary btn-sm" type="button" id="search-reset">리셋</button>
						</div>
					</div>
				</div>
			</form>
		</div>
		<!-- 공지 -->
		<div class="nav-Notice">
		    <ul id="ticker">
				<c:forEach items="${boardLists }" var="boardList" varStatus="listNo">
					<li class="ml-1"><a href="#"><span>${listNo.count } . </span>${boardList.boardTitle}</a></li>
				</c:forEach>
		    </ul>
		  <div class="nav-Notice-navi">
		    <button class="btn btn-line-primary prev" style="top:50%">이전</button>
		    <button class="btn btn-line-primary next">다음</button>
		  </div>
		</div> 
		 
		
		<!-- 오른쪽 구역 -->
		<div class="nav-right">
			<c:choose>
				<c:when test="${LOGIN_USER.id ne 'admin' }">
					<div class="nav-right-alram">
						<div >
						</div>
							<i class="fas fa-bell" data-toggle="dropdown"></i>
						<div id="alram-dropdown" class="dropdown-menu dropdown-menu-right">
							<c:choose>
								<c:when test="${empty alrams }">
									<p>새 알림이 없습니다.</p>
								</c:when>
								<c:otherwise>
									<c:forEach items="${alrams }" var="alram">
										<a data-alram-no="${alram.alramNo }" class="dropdown-item " href="#"><strong>
												<c:out value="[${alram.type }]"></c:out>
											</strong>
											<c:out value="${alram.message }"></c:out>
										</a>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
			
					<div class="nav-right-profile">
						<div data-toggle="dropdown">
							<img src="/resources/profileImage/${LOGIN_USER.profileImage }" class="rounded-circle z-depth-0"
								alt="avatar image" height="35" width="35">
							<input id="userId" type="hidden" value="${LOGIN_USER.id }">
						</div>
						<div class="dropdown-menu dropdown-menu-right">
							<a class="dropdown-item" href="/mypage/mypage.do">my page</a>
							<a class="dropdown-item" href="#">프로필 수정</a>
							<button class="dropdown-item" id="nav-message-button">쪽지함</button>
							<a class="dropdown-item" href="/login/signout.do">로그아웃</a>
						</div>
					</div>
					<c:if test="${LOGIN_USER.id eq 'moon' }">
						<a class="btn btn-primary" href="/manager/show.do">관리자 모드</a>
					</c:if>
				</c:when>
				<c:otherwise>
					<div>
						<a class="btn btn-primary" href="/manager/show.do">관리자 모드</a>
						<a class="btn btn-info" href="/login/signout.do">나가기</a>
					</div>				
				</c:otherwise>
			</c:choose>
		</div>
	</nav>
</div>

<!--쪽지함 모달창 -->
<div class="modal fade" id="nav-message-modal">
	<div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">쪽지함</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">
				<div class="mt-3 pb-3" style='border-bottom: 1px solid darkgray'>
					<p>받은 쪽지</p>
					<div style="width:100%; height:200px; overflow:auto">						
						<table id="receive-table" class="table" style="font-size: 14px">
							<colgroup>
								<col width="10%">
								<col width="75%">
								<col width="10%">
								<col width="5%">
							</colgroup>
							<thead>
								<tr>
									<td>발신자</td>
									<td>제목</td>
									<td>날짜</td>
									<td></td>
								</tr>
							</thead>
							<tbody>
								
							</tbody>
						</table>
					</div>
					<div class="text-right mt-3">
						<button data-type="receive" type="button" class="btn btn-secondary">비우기</button>
					</div>
				</div>
				<div class="mt-3 pb-3" style='border-bottom: 1px solid darkgray'>
					<p>보낸 쪽지</p>
					<div style="width:100%; height:200px; overflow:auto">
						<table id="send-table" class="table" style="font-size: 14px">
							<colgroup>
								<col width="10%">
								<col width="75%">
								<col width="10%">
								<col width="5%">
							</colgroup>
							<thead>
								<tr>
									<td>수신자</td>
									<td>제목</td>
									<td>날짜</td>
									<td></td>
								</tr>
							</thead>
							<tbody>
								
							</tbody>
						</table>
					</div>
					<div class="text-right mt-3">
						<button data-type="send" type="button" class="btn btn-secondary">비우기</button>
					</div>
				</div>
			</div>

			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
			</div>

		</div>
	</div>
</div>

<!--/.Navbar -->
<script type="text/javascript">
	$(function () {
		// 드롭다운 꺼지지 않게 하기
		$("#alram-dropdown").click(function(event) {
			event.stopPropagation();
		});
		
		// 알림 읽은거 지우고 새로운거 띄우기
		$("#alram-dropdown").on("click", "a", function () {
			var alramNo = $(this).data("alram-no");
			var userId = $("#userId").val();

			$.ajax({
				type: "GET",
				url: "/alram/read.do",
				data: {
					alramNo: alramNo,
					userId: userId
				},
				dataType: "json",
				success: function (alrams) {
					var $dropdown = $("#alram-dropdown").empty();

					if (alrams.length == 0) {
						var text = "<p style='margin: 0;'>새 알림이 없습니다.</p>"
						$dropdown.append(text);
						return;
					}

					$.each(alrams, function (index, alram) {
						var text = "<a data-alram-no='" + alram.alramNo +
							"' class='dropdown-item' href = '#' > <strong> [" + alram.type + "] </strong>" + alram
							.message + "</a> ";

						$dropdown.append(text);
					});
				}
			})
		});

		// 쪽지함 모달창 관련 JS
		$("#nav-message-button").click(function () {
			$("#nav-message-modal").modal('show');
			showMessage();
		});
		
		// 쪽지 지우기
		$("#nav-message-modal").on("click", "td button", function() {
			var messageNo = $(this).data("message-no");
			
			$.ajax({
				type: "GET",
				url: "/alram/delete.do",
				data: {
					messageNo: messageNo
				}
			});
			
			showMessage();
			
		});
		
		// 쪽지 전체 지우기
		$("#nav-message-modal button:contains('비우기')").click(function() {
			var type = $(this).data("type");
			
			$.ajax({
				type: "GET",
				url: "/alram/deleteall.do",
				data: {
					type: type
				}
			});
			
			showMessage();
		});
		
		
		// 쪽지 읽음표시
		$("#nav-message-modal tbody").on("click", "td:nth-child(2)", function() {
			var messageNo = $(this).data("message-no");
			console.log(messageNo);
			$.ajax({
				type: "GET",
				url: "/alram/msgread.do",
				data: {
					messageNo:messageNo
				},
				success: function () {
					
				}
			})
			var tr = ($(this).closest("tr"));
			tr.addClass("message-active");
		})
		
		// 쪽지 조회
		function showMessage() {
			$.ajax({
				type: "GET",
				url: "/alram/message.do",
				dataType: "json",
				success: function (messages) {
					var $Rtbody = $("#receive-table tbody").empty();
					var $Stbody = $("#send-table tbody").empty();
					
					// 받은 쪽지 조회
					if (messages.receiveMessages.length == 0) {
						var text = "<tr>";
						text += "<td colspan='4' class='text-center'>새로운 쪽지가 없습니다.</td>";
						text += "</tr>";
						
						$Rtbody.append(text);
						
					} else {
						$.each(messages.receiveMessages, function(index, message) {
							var text = "<tr class="+(message.readYn == "Y" ? "message-active" : "" )+">";
								text += "<td>"+message.sendUser+"</td>";
								text += "<td data-toggle='collapse' data-target='#message-get-content-"+index+"' data-message-no="+message.messageNo+">"+message.title+"</td>";
								text += "<td>"+message.createdDate+"</td>";
								text += "<td><button class='btn btn-danger btn-sm' style='line-height:0.8' data-message-no="+ message.messageNo +">x</button></td>";
								text += "</tr>";
								text += "<tr>";
								text += "<td colspan='4' id='message-get-content-"+index+"' class='collapse' style='background: lightgray'>"+message.content+"</td>";
								text += "</tr>";
							
							$Rtbody.append(text);
						})
					}
					
					
					// 보낸 쪽지 조회
					if (messages.sendMessages.length == 0) {
						var text = "<tr>";
						text += "<td colspan='4' class='text-center'>보낸 쪽지가 없습니다.</td>";
						text += "</tr>";
						
						$Stbody.append(text);
						
					} else {
						$.each(messages.sendMessages, function(index, message) {
							var text = "<tr class="+(message.readYn == "Y" ? "message-active" : "" )+">";
								text += "<td>"+message.receiveUser+"</td>";
								text += "<td data-toggle='collapse' data-target='#message-send-content-"+index+"' data-message-no="+message.messageNo+">"+message.title+"</td>";
								text += "<td>"+message.createdDate+"</td>";
								text += "<td><button class='btn btn-danger btn-sm' style='line-height:0.8' data-message-no="+message.messageNo+">x</button></td>";
								text += "</tr>";
								text += "<tr>";
								text += "<td colspan='4' id='message-send-content-"+index+"' class='collapse' style='background: lightgray'>"+message.content+"</td>";
								text += "</tr>";
							
							$Stbody.append(text);
						})
					}
				}
			});
		}
		
		$("#select-location").click(function(e) {
			e.stopPropagation();
		})
		$("#search-main-cate").click(function(e) {
			e.stopPropagation();
		})
		$("#search-sub-cate").click(function(e) {
			e.stopPropagation();
		})
		
		$("#search-main-cate").change(function() {
			let mainCateNo = $(this).val();
			 $.ajax({
		            type:"GET",
		            url:"/moim/subCate.do",
		            data: {
		                mainCateNo:mainCateNo
		            },
		            dataType:"json",
		            success:function (subCates) {
		            	console.log(subCates);
		                let $select = $("#search-sub-cate").empty();
		                let options = "";
		                for(let subCate of subCates) {
		                    options += '<option value='+subCate.subCateNo+'>';
		                    options += subCate.name;
		                    options += '</option>';
		                }
		                $select.append(options); 
		            }
		        }) 
		})
	    // 세부 카테고리 가져오기
	    
		// 서치바 안꺼지게 하기	    
	    $("#search-bar-manu").click(function() {
	    	event.stopPropagation();
		});
	    // 검색창 다 지우기
	    $("#search-reset").click(function() {
	    	var tr ="<option value='0' selected='selected' disabled='disabled' class='text-center'>세부 카테고리</option>";
	    	event.stopPropagation();
			$("#select-location").val(0);
			$("#search-main-cate").val(0);
		    $("#search-sub-cate").empty();
			$("#search-sub-cate").append(tr);
		});
	    
	    
	    // form 액션 바꿔주기
	    $("#keywordSearch").click(function () {
	        $("form").attr("action", "/test.do");
		 });
	  
		 $("#detailSearch").click(function () {
	        $("form").attr("action", "/test2.do");
	 	});

		 
		 // 공지
		 jQuery(function($)
				 {
				     var ticker = function()
				     {
				         timer = setTimeout(function(){
				             $('#ticker li:first').animate( {marginTop: '-20px'}, 400, function()
				             {
				                 $(this).detach().appendTo('ul#ticker').removeAttr('style');
				             });
				             ticker();
				         }, 2000);         
				       };
				       $(document).on('click','.prev',function(){
				         $('#ticker li:last').hide().prependTo($('#ticker')).slideDown();
				         clearTimeout(timer);
				         ticker();
				         if($('#pause').text() == 'Unpause'){
				           $('#pause').text('Pause');
				         };
				       });
				       $(document).on('click','.next',function(){
				             $('#ticker li:first').animate( {marginTop: '-20px'}, 400, function()
				                     {
				                         $(this).detach().appendTo('ul#ticker').removeAttr('style');
				                     });
				             clearTimeout(timer);
				             ticker();
				           }); 

				   var autoplay = true;
				   var tickerover = function()
				   {
				     $('#ticker').mouseover(function(){
				       clearTimeout(timer);
				     });
				     $('#ticker').mouseout(function(){
				       ticker();
				     });  
				   };
				   tickerover();
				     ticker();
				 });
		 
		
		
	});
</script>