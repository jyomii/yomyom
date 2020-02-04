<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 

<jsp:include page="../mainpage/header.jsp" />

<style>
.basics>li, .education>li {
	color: #999;
	font-size: 14px;
	margin-bottom: 20px;
	text-transform: none;
}
</style>

		<section>
			<div class="feature-photo">
				<figure> <!-- 기본 배경 -->
				<img src="resources/images/resources/backpic.jpg"/>
				</figure>

				<div class="container-fluid">
					<div class="row merged">
						<div class="col-lg-2 col-sm-3">
							<div class="user-avatar">
								<figure>
									<img src="<spring:url value='/image${mypage.userImageOrigin }'/>"/>
									<form class="edit-phto" id="userImageForm" enctype="multipart/form-data" 
									action="userImage" method="post">
									<input type="hidden" name="userKey" value="${mypage.userKey }">
										<i class="fa fa-camera-retro"></i> <label
											class="fileContainer"> 프로필 사진 변경 <input type="file" name="userImageUpdate"/>
										</label>
									</form>
								</figure>
							</div>
						</div>
						<div class="col-lg-10 col-sm-9">
							<div class="timeline-info">
								<ul>
									<li class="admin-name">
										<h5>${id}님의 마이페이지</h5> <!-- <span>일반 회원</span> -->
									</li>

								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- top area -->

		<section>
			<div class="gap gray-bg">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">
							<div class="row" id="page-contents">
								<div class="col-lg-3">
									<aside class="sidebar static">
										<div class="widget">
											<h4 class="widget-title">정보 수정</h4>
											<ul class="naves">
												<li><i class="ti-info-alt"></i> <a title=""
													class="jungbo">기본 정보</a></li>
												<li><i class="ti-heart"></i> <a title="" class="gss">관심사</a>
												</li>

											</ul>
										</div>
										<div class="widget">
											<h4 class="widget-title">최근 참가한 모임</h4>
											<ul class="activitiez">
												<li>
													<div class="activity-meta">
														<i>2019-12-27</i> <span><a href="#" title="">2019
																슬픔의 케이팝 파티</a></span>
														<h6>
															by 케즐모
														</h6>
													</div>
												</li>
												<li>
													<div class="activity-meta">
														<i>2019-11-19</i> <span><a href="#" title="">남양주
																북한강 라이딩 정모</a></span>
														<h6>
															by 자연이 좋다!!!
														</h6>
													</div>
												</li>
												<li>
													<div class="activity-meta">
														<i>2019-10-30</i> <span><a href="#" title="">알고리즘
																스터디</a></span>
														<h6>
															by 나는 나는 개발자
														</h6>
													</div>
												</li> 
											</ul>
										</div>
										<!-- recent activites -->
									</aside>
								</div>
								<!-- sidebar -->
								<div class="col-lg-6">
									<div class="central-meta">
										<div class="about">
											<div class="personal">
												<h5 class="f-title">
													<i class="ti-info-alt"></i>회원 정보
												</h5>
											</div>
											<div class="d-flex flex-row mt-2">
												<ul class="nav nav-tabs nav-tabs--vertical nav-tabs--left">
													<li class="nav-item"><a href="#basic"
														class="nav-link active" data-toggle="tab">기본 정보</a></li>
													<li class="nav-item"><a href="#interest"
														class="nav-link" data-toggle="tab">관심사</a></li>
												</ul>
												<div class="tab-content">
													<div class="tab-pane fade show active" id="basic">
														<ul class="basics">
															<li><i class="ti-user"></i>${id}</li>
															<li><i class="ti-pencil"></i>
															<c:if test="${mypage.userAge == 1}">10대</c:if>
															<c:if test="${mypage.userAge == 2}">20대</c:if>
															<c:if test="${mypage.userAge == 3}">30대</c:if>
															<c:if test="${mypage.userAge == 4}">40대</c:if>
															<c:if test="${mypage.userAge == 5}">50대</c:if>
															<c:if test="${mypage.userAge == 6}">60대</c:if>
															</li>
															<li><i class="ti-heart"></i>
															<c:if test="${mypage.gender == 'F'}">여성</c:if>
															<c:if test="${mypage.gender == 'M'}">남성</c:if></li>
															<li><i class="ti-map-alt"></i>${mypage.locationName}</li>
															<li><i class="ti-email"></i>${mypage.userEmail}</li>
															<li><i class="ti-calendar"></i>${mypage.userJoinDate}</li>
														</ul>
													</div>
													<div class="tab-pane fade" id="interest" role="tabpanel">
														<ul class="basics">
															<c:forEach var="userInterest" items="${userInterest}">
															<li>${userInterest.SCategoryName}</li>
															</c:forEach>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="central-meta">
										<div class="frnds">
											<ul class="nav nav-tabs">
												<li class="nav-item"><a class="active" href="#frends"
													data-toggle="tab">가입한 모임</a> <span>${joincount}</span></li>
												<li class="nav-item"><a class="" href="#frends-req"
													data-toggle="tab">만든 모임</a><span>${makecount}</span></li>
											</ul>

											<!-- Tab panes -->
											<div class="tab-content">
												<div class="tab-pane active fade show " id="frends">
													<ul class="nearby-contct">
													<c:forEach var="list" items="${list}">
														<li>
															<div class="nearly-pepls">
																<figure>
																	<img src="resources/images/resources/nearly1.jpg" alt=""></a>
																</figure>
																<div class="pepl-info">
																	<h4>
																		<a href="time-line.html" >${list.groupName }</a>
																	</h4>
																	<a href="#" title="" class="add-butn" data-ripple="">모임 탈퇴</a>
																</div>
															</div>
														</li>
														</c:forEach>
													</ul>
												</div>
												<!-- 내가 만든 모임 -->
												<div class="tab-pane fade" id="frends-req">
													<ul class="nearby-contct">
													  <c:forEach var="mylist" items="${mylist}">
														<li>
															<div class="nearly-pepls">
																<figure>
																	<img src="resources/images/resources/nearly1.jpg" alt=""></a>
																</figure>
																<div class="pepl-info">
																	<h4>
																		<a href="time-line.html" >${mylist.groupName }</a>
																	</h4>
																	<a href="#" title="" class="add-butn" data-ripple="">모임 설정</a>
																</div>
															</div>
														</li>
														</c:forEach>
													</ul>
													
												</div>
											</div>
										</div>
									</div>

								</div>

								<div class="col-lg-3">
									<aside class="sidebar static">
									
										<div class="widget">
											<h4 class="widget-title"><i class="ti-bell"></i>최근 알림</h4>
											<ul class="activitiez">
												<li>
													<div class="activity-meta">
														<i>1시간 전</i> <span><a href="#" title="">새로운
																공지사항이 올라왔습니다. </a></span>
														<h6>
															by <a href="time-line.html">케즐모</a>
														</h6>
													</div>
												</li>
												<li>
													<div class="activity-meta">
														<i>3시간 전</i> <span><a href="#" title="">새로운 일정이
																등록되었습니다.</a></span>
														<h6>
															by <a href="time-line.html">자연이 좋다!!!</a>
														</h6>
													</div>
												</li>
												<li>
													<div class="activity-meta">
														<i>2일 전</i> <span><a href="#" title="">가입이
																승인되었습니다.</a></span>
														<h6>
															by<a href="#">365일 춤만 출래 예예예 미러미러미러</a>
														</h6>
													</div>
												</li>
											</ul>
										</div>
										<!-- recent activites -->
									</aside>
								</div>
								<!-- sidebar -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		

    <jsp:include page="../mainpage/footer.jsp"></jsp:include>

	<script data-cfasync="false"
		src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="resources/js/map-init.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8c55_YHLvDHGACkQscgbGLtLRdxBDCfI"></script>
	<script>

	
		//회원 정보 수정 이동
		$(".jungbo").click(function() {
			location.href = "mypage2";
		});

		//회원 관심사 수정 이동
		$(".gss").click(function() {
			location.href = "mypage3";
		});
		
		
		function exitGroup() {       
			var pass = prompt('탈퇴하려면 비밀번호를 입력하세요.');
			
			if(pass == userPassword){
				alert('탈퇴 되었습니다.');
			}
			else{
				alert('비밀번호 불일치로 탈퇴 실패');
			}
			
		}
		
	</script>
