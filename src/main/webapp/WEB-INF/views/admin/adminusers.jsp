<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<jsp:include page="../mainpage/header.jsp" />
<style>
.modal-backdrop {
	z-index: -1;
}

.modal.fade.show {
	background: rgba(0, 0, 0, 0.5);
}

#exampleModal .modal-dialog {
	-webkit-transform: translate(0, -50%);
	-o-transform: translate(0, -50%);
	transform: translate(0, -50%);
	top: 50%;
	margin: 0 auto;
}

a.add-butn.more-action {
	right: 89px;
}
</style>




		<section>
			<div class="gap gray-bg">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">
							<div class="row" id="page-contents">
								<div class="col-lg-3">
									<aside class="sidebar static">
										<div class="widget">
									<h4 class="widget-title">관리자 메뉴</h4>
									<ul class="naves">
										<li><i class="fas fa-signal"></i> <a href="admin" title="">통계</a>
										</li>
										<li><i class="fas fa-user"></i> <a href="adminusers"
											title="">회원</a></li>
										<li><i class="fas fa-users"></i> <a href="admingroup"
											title="">모임</a></li>

										<li><i class="fas fa-hashtag"></i> <a
											href="admincategory" title="">카테고리</a></li>

										<li><i class="fas fa-bell"></i> <a
											href="adminnotice" title="">공지사항</a></li>

									</ul>
								</div>
								<!-- 관리자 메뉴 -->

									</aside>
								</div>
								<!-- sidebar -->
								<div class="col-lg-6">
									<div class="central-meta">
										<div class="frnds">


											<ul class="nav nav-tabs">
												<li class="nav-item"><c:choose>
														<c:when test="${type == 1 }">
															<a class="active" href="#frends" data-toggle="tab">일반
																회원</a>
															<span>${glistcount }</span>

														</c:when>
														<c:otherwise>
															<a href="#frends" data-toggle="tab">일반 회원</a>
															<span>${glistcount }</span>

														</c:otherwise>
													</c:choose></li>



												<li class="nav-item"><c:choose>
														<c:when test="${type == 2 }">
															<a class="active" href="#frends-req" data-toggle="tab">탈퇴
																예정 회원</a>
															<span>${jlistcount }</span>
														</c:when>
														<c:otherwise>
															<a href="#frends-req" data-toggle="tab">탈퇴 예정 회원</a>
															<span>${jlistcount }</span>
														</c:otherwise>
													</c:choose></li>



												<li class="nav-item"><c:choose>
														<c:when test="${type == 3 }">
															<a class="active" href="#taluser" data-toggle="tab">강제 탈퇴 회원</a>
															<span>${tlistcount }</span>
														</c:when>
														<c:otherwise>
															<a href="#taluser" data-toggle="tab">강제 탈퇴 회원</a>
															<span>${tlistcount }</span>
														</c:otherwise>
													</c:choose></li>
													
													<li class="nav-item"><c:choose>
														<c:when test="${type == 4 }">
															<a class="active" href="#stopuser" data-toggle="tab">정지 회원</a>
															<span>${stoplistcount }</span>
														</c:when>
														<c:otherwise>
															<a href="#stopuser" data-toggle="tab">정지 회원</a>
															<span>${stoplistcount }</span>
														</c:otherwise>
													</c:choose></li>
											</ul>
											<span id="searchDir"></span>
											<!-- Tab panes -->
											<div class="tab-content">



												<div class="tab-pane fade " id="searchResult">

													<ul class="nearby-contct">
													</ul>

												</div>


												<div class="tab-pane fade " id="frends">

													<ul class="nearby-contct">
														<c:forEach items="${gallList}" var="item">
															<li>
																<div class="nearly-pepls">
																	<figure>
																		<a id="check" data-toggle="modal"
																			data-target="#exampleModal" class="modalclick"
																			data-userkey='${item.userKey }'
																			data-userid='${item.userId }'
																			data-logintype='${item.logintype}'
																			data-location='${item.locationName}'
																			data-age='${item.userAge}'
																			data-gender='${item.gender}'
																			data-joindate='${item.userJoinDate}'><img
																			src="resources/images/default.png"
																			alt=""></a>
																	</figure>
																	<div class="pepl-info">
																		<h4>
																			<a id="check" data-toggle="modal"
																				data-target="#exampleModal" title=""
																				class="modalclick" data-userkey='${item.userKey }'
																				data-userid='${item.userId }'
																				data-logintype='${item.logintype}'
																				data-location='${item.locationName}'
																				data-age='${item.userAge}'
																				data-gender='${item.gender}'
																				data-joindate='${item.userJoinDate}'>${item.userId }</a>
																		</h4>
																		<c:choose>
																			<c:when test="${item.logintype == 1}">
																				<span>카카오톡 가입 유저</span>
																			</c:when>
																			<c:otherwise>
																				<span>일반 가입 유저</span>
																			</c:otherwise>
																		</c:choose>

																		<c:choose>
																			<c:when test="${item.userStatus == 0}">
																				<span>정상</span>
																			</c:when>
																			<c:when test="${item.userStatus == 1}">
																				<span>탈퇴 예정</span>
																			</c:when>
																			<c:when test="${item.userStatus == 2}">
																				<span>강제 탈퇴</span>
																			</c:when>
																			<c:otherwise>
																				<span>정지</span>
																			</c:otherwise>
																		</c:choose>

																		<a href="javascript:deleteuser('${item.userId }');"
																			title="" class="add-butn" data-ripple="">탈퇴</a>
																	
																	</div>
																</div>
															</li>

														</c:forEach>



													</ul>
														
														<button class="btn-view btn-load-more"
														<c:if test="${glistcount < 10}">
														 style="visibility:hidden;"
														</c:if>
														></button>
														
												</div>
												
												
												<div class="tab-pane fade" id="frends-req">
													<ul class="nearby-contct">
														<c:forEach items="${jallList}" var="item">
															<li>
																<div class="nearly-pepls">
																	<figure>
																		<a id="check" data-toggle="modal"
																			data-target="#exampleModal" class="modalclick"
																			data-userkey='${item.userKey }'
																			data-userid='${item.userId }'
																			data-logintype='${item.logintype}'
																			data-location='${item.locationName}'
																			data-age='${item.userAge}'
																			data-gender='${item.gender}'
																			data-joindate='${item.userJoinDate}'><img
																			src="resources/images/default.png"
																			alt=""></a>
																	</figure>
																	<div class="pepl-info">
																		<h4>
																			<a id="check" data-toggle="modal"
																				data-target="#exampleModal" title=""
																				class="modalclick" data-userkey='${item.userKey }'
																				data-userid='${item.userId }'
																				data-logintype='${item.logintype}'
																				data-location='${item.locationName}'
																				data-age='${item.userAge}'
																				data-gender='${item.gender}'
																				data-joindate='${item.userJoinDate}'>${item.userId }</a>
																		</h4>
																		<c:choose>
																			<c:when test="${item.logintype == 1}">
																				<span>카카오톡 가입 유저</span>
																			</c:when>
																			<c:otherwise>
																				<span>일반 가입 유저</span>
																			</c:otherwise>
																		</c:choose>

																		<c:choose>
																			<c:when test="${item.userStatus == 0}">
																				<span>정상</span>
																			</c:when>
																			<c:when test="${item.userStatus == 1}">
																				<span>탈퇴 예정</span>
																			</c:when>
																			<c:when test="${item.userStatus == 2}">
																				<span>강제 탈퇴</span>
																			</c:when>
																			<c:otherwise>
																				<span>정지</span>
																			</c:otherwise>
																		</c:choose>

																		<a href="javascript:recoveryUser('${item.userId}')" title="" class="add-butn" data-ripple="">복구</a>
																	</div>
																</div>
															</li>

														</c:forEach>

													</ul>
												
													<button class="btn-view btn-load-more"
														<c:if test="${jlistcount < 10}">
														 style="visibility:hidden;"
														</c:if>
													
													></button>
													
												</div>
												
												
												
												<div class="tab-pane fade" id="taluser">
													<ul class="nearby-contct">
														<c:forEach items="${tallList}" var="item">
															<li>
																<div class="nearly-pepls">
																	<figure>
																		<a id="check" data-toggle="modal"
																			data-target="#exampleModal" class="modalclick"
																			data-userkey='${item.userKey }'
																			data-userid='${item.userId }'
																			data-logintype='${item.logintype}'
																			data-location='${item.locationName}'
																			data-age='${item.userAge}'
																			data-gender='${item.gender}'
																			data-joindate='${item.userJoinDate}'><img
																			src="resources/images/default.png"
																			alt=""></a>
																	</figure>
																	<div class="pepl-info">
																		<h4>
																			<a id="check" data-toggle="modal"
																				data-target="#exampleModal" title=""
																				class="modalclick" data-userkey='${item.userKey }'
																				data-userid='${item.userId }'
																				data-logintype='${item.logintype}'
																				data-location='${item.locationName}'
																				data-age='${item.userAge}'
																				data-gender='${item.gender}'
																				data-joindate='${item.userJoinDate}'>${item.userId }</a>
																		</h4>
																		<c:choose>
																			<c:when test="${item.logintype == 1}">
																				<span>카카오톡 가입 유저</span>
																			</c:when>
																			<c:otherwise>
																				<span>일반 가입 유저</span>
																			</c:otherwise>
																		</c:choose>

																		<c:choose>
																			<c:when test="${item.userStatus == 0}">
																				<span>정상</span>
																			</c:when>
																			<c:when test="${item.userStatus == 1}">
																				<span>탈퇴 예정</span>
																			</c:when>
																			<c:when test="${item.userStatus == 2}">
																				<span>강제 탈퇴</span>
																			</c:when>
																			<c:otherwise>
																				<span>정지</span>
																			</c:otherwise>
																		</c:choose>

																		
																	</div>
																</div>
															</li>

														</c:forEach>

													</ul>
												
													<button class="btn-view btn-load-more"
														<c:if test="${tlistcount < 10}">
														 style="visibility:hidden;"
														</c:if>
													
													></button>
												
												</div>
												
												
												
												
												<div class="tab-pane fade" id="stopuser">
													<ul class="nearby-contct">
														<c:forEach items="${stopallList}" var="item">
															<li>
																<div class="nearly-pepls">
																	<figure>
																		<a id="check" data-toggle="modal"
																			data-target="#exampleModal" class="modalclick"
																			data-userkey='${item.userKey }'
																			data-userid='${item.userId }'
																			data-logintype='${item.logintype}'
																			data-location='${item.locationName}'
																			data-age='${item.userAge}'
																			data-gender='${item.gender}'
																			data-joindate='${item.userJoinDate}'><img
																			src="resources/images/default.png"
																			alt=""></a>
																	</figure>
																	<div class="pepl-info">
																		<h4>
																			<a id="check" data-toggle="modal"
																				data-target="#exampleModal" title=""
																				class="modalclick" data-userkey='${item.userKey }'
																				data-userid='${item.userId }'
																				data-logintype='${item.logintype}'
																				data-location='${item.locationName}'
																				data-age='${item.userAge}'
																				data-gender='${item.gender}'
																				data-joindate='${item.userJoinDate}'>${item.userId }</a>
																		</h4>
																		<c:choose>
																			<c:when test="${item.logintype == 1}">
																				<span>카카오톡 가입 유저</span>
																			</c:when>
																			<c:otherwise>
																				<span>일반 가입 유저</span>
																			</c:otherwise>
																		</c:choose>

																		<c:choose>
																			<c:when test="${item.userStatus == 0}">
																				<span>정상</span>
																			</c:when>
																			<c:when test="${item.userStatus == 1}">
																				<span>탈퇴 예정</span>
																			</c:when>
																			<c:when test="${item.userStatus == 2}">
																				<span>강제 탈퇴</span>
																			</c:when>
																			<c:otherwise>
																				<span>정지</span>
																			</c:otherwise>
																		</c:choose>

																		<a href="javascript:recoveryUser('${item.userId}')" title="" class="add-butn" data-ripple="">복구</a>
																	</div>
																</div>
															</li>

														</c:forEach>

													</ul>
													
													<button class="btn-view btn-load-more"
													<c:if test="${stoplistcount < 10}">
														  style="visibility:hidden;"
														</c:if>
													
													></button>
												
												</div>
											</div>
										</div>
									</div>

								</div>


								<div class="col-lg-3">
									<aside class="sidebar static">
										<div class="widget">
											<h4 class="widget-title">신고 목록</h4>
											<ul class="followers" style="max-height: 400px;">
												<c:forEach items="${policeResult }" var="item" varStatus="status">
													<li><span>${item.userid }</span>
														<p>총 ${item.count }번 신고</p>
														<p>
														<a onClick="policeDetail('${item.userkey}','${status.index}');"
class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    내용 확인</a>
    <a class="btn btn-secondary" onClick="stopUser1('${item.userid}');" style="color:white;">정지</a></p>
  <div class="collapse" id="collapseExample">
  <div class="card card-body">
   
  </div>
</div>
														<div></div></li>
												</c:forEach>
											</ul>
										</div>
										<!-- who's following -->

									</aside>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
<!-- footer -->
<jsp:include page="../mainpage/footer.jsp" />
<!-- footer end -->

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">회원 정보</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="widget">

						아이디
						<p></p>

						로그인 타입
						<p></p>

						지역
						<p></p>

						연령대
						<p></p>

						성별
						<p></p>

						관심사
						<p></p>

						가입날짜
						<p></p>

					</div>
					<!-- profile intro widget -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>

				</div>
			</div>
		</div>
	</div>

	<script>
		var type = "${type}";
		
		var page0, page1, page2, page3;

		//타입에 따라 열려있는 page가 다름
		if (type == 1) {

			showContent(1);
			page0 = "${page}";
			page1 = 1;
			page2 = 1;
			page3 = 1;
		} else if(type == 2){
			showContent(2);
			page0 = 1;
			page1 = "${page}";
			page2 = 1;
			page3 = 1;
		}else if(type == 3){
			showContent(3);
			page0 = 1;
			page1 = 1;
			page2 = "${page}";
			page3 = 1;
		}else {
			showContent(4);
			page0 = 1;
			page1 = 1;
			page2 = 1;
			page3 = "${page}";
		}

	
		//신고 내용 자세히 보기
		function policeDetail(userkey ,index){
			
		
			
			$.ajax({
				url : "policeDetail",
				data : {"userkey" : userkey},
				success : function(result){
					
					console.log(result);
					printPoliceDetail(result,index);
				}
				
			});
		};
		
		
		function stopUser1(userId){
			
			
			var result = confirm('해당 회원을 정지시키겠습니까?');
			
			if(result){
				$.ajax({
					url : "stopUsers",
					data : {"userId" : userId},
					success : function(result){
						if(result > 0){
							
							location.href= "adminusers";
						}
					}
					
				});
			}
			
		}
		
		
		

		//더보기 버튼 클릭 시
		$('.btn-load-more').click(function() {
			 
			
			type = ($(".btn-load-more").index(this))+1;

			//search 결과에 더보기 버튼 없음
			// type 1 : 일반 유저 목록 불러오기
			// type 2 : 탈퇴 예정 목록 불러오기
			// type 3 : 강제탈퇴 목록 불러오기
			// type 4 : 정지 목록 불러오기
			
			var data = {
				"type" : type,
				"page" : type == 1 ? ++page0 : type == 2 ? 
						++page1 : type == 3 ? 
						++page2 : ++page3
			};
			
			console.log(data);

			//ajax로 목록 불러오기
			$.ajax({
				method : "post",
				url : "adminusers",
				data : data,
				success : function(result) {
					console.log(result);

					var html = print(result);
					var more = (result.length < 10);
					
					
					//일반회원 목록 더불러온거임
					if (type == 1) {

						$('#frends ul').append(html);
						if(more)
						$('#frends .btn-load-more').css('visibility','hidden');

						//탈퇴예정회원 목록 더불러온거임
					} else if(type == 2){

						$('#frends-req ul').append(html);
						
						if(more)
							$('#frends-req .btn-load-more').css('visibility','hidden');
					} else if(type == 3){

						$('#taluser ul').append(html);
						
						if(more)
							$('#taluser .btn-load-more').css('visibility','hidden');
					}else {

						$('#stopuser ul').append(html);
						if(more)
							$('#stopuser .btn-load-more').css('visibility','hidden');
					}

				}

			});

		});

		//모달에 회원 상세정보 넣기
		$(document).on("click", "#check", function(event) {

			var userkey = $(this).data('userkey');
			var userId = $(this).data('userid');
			var logintype = $(this).data('logintype');
			var location = $(this).data('location');
			var age = $(this).data('age');
			var gender = $(this).data('gender');
			var joindate = $(this).data('joindate');

			$('.modal-body p:eq(0)').text(userId);
			$('.modal-body p:eq(1)').text(logintype == '1' ? '카카오톡' : '일반 유저');
			$('.modal-body p:eq(2)').text(location);
			$('.modal-body p:eq(3)').text(age * 10);

			$('.modal-body p:eq(4)').text(gender == 'M' ? '남' : '여');
			$('.modal-body p:eq(6)').text(getFormatDate(new Date(joindate)));

			//관심사 정보
			$.ajax({
				url : "adminusercategory",
				data : {
					"id" : userkey
				},
				method : "post",
				success : function(result) {

					var text1 = "";

					for (var j = 0; j < result.length; j++)
						text1 += result[j] + " ";
					$('.modal-body p:eq(5)').text(text1);
				}

			});

		});
		

		//회원 복구
		function recoveryUser(id){
			
			$.ajax({
				url: "recoveryUser",
				method: "post",
				data : {"id" : id},
				success : function(result){
					if(result == 1){
						alert('일반회원으로 복구되었습니다.');
						location.href="adminusers";
					
					}
				}
				
			});
		}
		

		//유저 강제탈퇴시키기
		function deleteuser(id) {

			var delConfirm = confirm('해당 회원을 탈퇴시키겠습니까?');

			if (delConfirm) {

				//해당 유저 강제탈퇴시키기
				$.ajax({
					url : "AdmindeleteUser",
					data : {
						"id" : id
					},
					method : "post",
					success : function(result) {

						if (result == 1) {
							alert('강제탈퇴 되었습니다.');
							location.href = "adminusers";
						}
					}

				});

			}

		}
		//날짜 표시 형식
		function getFormatDate(date) {
			var year = date.getFullYear(); //yyyy
			var month = (1 + date.getMonth()); //M
			month = month >= 10 ? month : '0' + month; //month 두자리로 저장
			var day = date.getDate(); //d
			day = day >= 10 ? day : '0' + day; //day 두자리로 저장
			return year + '-' + month + '-' + day;
		}

		//검색
		var form = $("<form>").attr({
			"class" : "filterform",
			"action" : "#"
		});
		var input = $("<input>").attr({
			"class" : "filterinput",
			"type" : "text",
			"placeholder" : "아이디를 입력하세요..."
		});

		$(form).append(input).appendTo($("#searchDir"));
		$(form).submit(function() {
			return false;
		});

		$(input).keyup(function() {
			var text = $(this).val();

			if (text) {
				//검색어가 있을 경우 detail 버튼 숨기기
				$('.btn-load-more').css('visibility','hidden');

				//해당 검색어로 ajax 검색하기
				$.ajax({

					url : "AdminSearchUser",
					data : {
						"keyword" : text
					},
					method : "post",
					success : function(list) {
						console.log(list);

						if (list.length > 0) {
							var html1 = print(list);
							$('#searchResult .nearby-contct').html(html1);

						}
					}

				});

				showContent(0);

			} else {

			
				showContent(type);

				//검색어가 없을 경우 detail 버튼 보이기
				$('.btn-load-more').css('visibility','hidden');
			}

		});

		//어떤 탭 눌렀는지 확인
		$('.nav-item a').click(function() {
			if ($(this).text() == '일반 회원')
				type = 1;
			else if($(this).text() == '탈퇴 예정 회원')
				type = 2;
			else if($(this).text() == '강제 탈퇴 회원')
				type = 3;
			else 
				type = 4;

		});
		
		

		function showContent(position) {

			$('.tab-pane:eq(' + position + ')').addClass('active');
			$('.tab-pane:eq(' + position + ')').addClass('show');
			$('.tab-pane:eq(' + position + ')').siblings()
					.removeClass('active');
			$('.tab-pane:eq(' + position + ')').siblings().removeClass('show');

		}
		function print(result) {

			var html = "";
			for (var i = 0; i < result.length; i++) {

				html += '<li>';
				html += '<div class="nearly-pepls">';
				html += '<figure>';
				html += '	<a id="check" data-toggle="modal" data-target="#exampleModal"';
				html += 'class="modalclick"';
				
				html += ' data-userkey="'+result[i].userKey+'"';
				html += ' data-userid="'+result[i].userId+'"';
				html += ' data-logintype="'+result[i].logintype+'"';
				html += ' data-location="'+result[i].locationName+'"';
				html += ' data-age="'+result[i].userAge+'"';
				html += ' data-gender="'+result[i].gender+'"';
				html += ' data-joindate="'+result[i].userJoinDate+'"';
				html += '><img';
				html += ' src="resources/images/default.png"';
				html += 'alt=""></a>';
				html += '</figure>';
				html += '<div class="pepl-info">';
				html += '<h4>';
				html += '<a id="check" data-toggle="modal" data-target="#exampleModal"';
				html += 'title=""';
				html += 'class="modalclick"';
				html += ' data-userkey="'+result[i].userKey+'"';
				html += ' data-userid="'+result[i].userId+'"';
				html += ' data-logintype="'+result[i].logintype+'"';
				html += ' data-location="'+result[i].locationName+'"';
				html += ' data-age="'+result[i].userAge+'"';
				html += ' data-gender="'+result[i].gender+'"';
				html += ' data-joindate="'+result[i].userJoinDate+'"';
				html += '>'
						+ result[i].userId + '</a>';
				html += '</h4>';
				if (result[i].logintype == 1)
					html += '<span>카카오톡 가입 유저</span>';
				else
					html += '<span>일반 가입 유저</span>';

				if (result[i].userStatus == 0) {
					html += '<span>정상</span>';
					html += '<a href="javascript:deleteuser('
							+ result[i].userId
							+ ');" title="" class="add-butn"';
					html += 'data-ripple="">탈퇴</a> ';

				
				} else if (result[i].userStatus == 1) {
					html += '<span>탈퇴 예정</span>';
					html += '<a href="javascript:recoveryUser('+ result[i].userId+')" title="" class="add-butn" data-ripple="">복구</a>';
				} else if (result[i].userStatus == 2) {
					html += '<span>강제 탈퇴</span>';
				} else {
					html += '<span>정지</span>';
					html += '<a href="javascript:recoveryUser('+ result[i].userId+')" title="" class="add-butn" data-ripple="">복구</a>';
				}

				html += '</div>';
				html += '</div>';
				html += '</li>';

			}

			return html;

		}
		
		
		function printPoliceDetail(result, index ){
			
			var text = "";
			
			
			text += '<div class="card card-body">';
			
			for(var i = 0; i < result.B.length; i++){
				
				
				text +=  result.B[i].postcontent;
				text += '<br><hr><br>';
			
			}
			
			
			
			for(var j = 0; j < result.M.length; j++){
				text +=  result.M[j].postcontent;
				text += '<br><hr><br>';
				
			}
			
			text += '  </div>';
			
			
			$('.card-body:eq('+index+')').html(text);
			
			
		}
	</script>
</body>

</html>