<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
				<figure>
					<img src="resources/images/resources/timeline-1.jpg" alt="">
				</figure>

				<form class="edit-phto">
					<i class="fa fa-camera-retro"></i> <label class="fileContainer">
						배경 사진 변경 <input type="file" />
					</label>
				</form>
				<div class="container-fluid">
					<div class="row merged">
						<div class="col-lg-2 col-sm-3">
							<div class="user-avatar">
								<figure>
									<img src="resources/images/resources/user-avatar.jpg" alt="">
									<form class="edit-phto">
										<i class="fa fa-camera-retro"></i> <label
											class="fileContainer"> 프로필 사진 변경 <input type="file" />
										</label>
									</form>
								</figure>
							</div>
						</div>
						<div class="col-lg-10 col-sm-9">
							<div class="timeline-info">
								<ul>
									<li class="admin-name">
										<h5>이지연</h5> <!-- <span>일반 회원</span> -->
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
															by <a href="time-line.html">케즐모</a>
														</h6>
													</div>
												</li>
												<li>
													<div class="activity-meta">
														<i>2019-11-19</i> <span><a href="#" title="">남양주
																북한강 라이딩 정모</a></span>
														<h6>
															by <a href="time-line.html">자연이 좋다!!!</a>
														</h6>
													</div>
												</li>
												<li>
													<div class="activity-meta">
														<i>2019-10-30</i> <span><a href="#" title="">알고리즘
																스터디</a></span>
														<h6>
															by<a href="#">나는 나는 개발자</a>
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
															<input type="hidden" name="userid" value="${id }"
																id="user">
															<li><i class="ti-user"></i>${id}</li>
															<li><i class="ti-map-alt"></i>${mypage.userLocation}</li>
															<li><i class="ti-email"></i>${mypage.userEmail}</li>
															<li><i class="ti-calendar"></i>${mypage.userJoinDate}</li>
														</ul>
													</div>
													<div class="tab-pane fade" id="interest" role="tabpanel">
														<ul class="basics">
															<input type="hidden" name="USER_ID" value="${id }"
																id="USER_ID">
															<li>인터넷</li>
															<li>등산</li>
															<li>음악</li>
															<li>춤</li>
															<li>게임</li>
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
													data-toggle="tab">가입한 모임</a> <span>5</span></li>
												<li class="nav-item"><a class="" href="#frends-req"
													data-toggle="tab">만든 모임</a><span>3</span></li>
											</ul>

											<!-- Tab panes -->
											<div class="tab-content">
												<div class="tab-pane active fade show " id="frends">
													<ul class="nearby-contct">

														<li>
															<div class="nearly-pepls">
																<figure>
																	<a href="time-line.html" title=""><img
																		src="resources/images/resources/nearly1.jpg" alt=""></a>
																</figure>
																<div class="pepl-info">
																	<h4>
																		<a href="time-line.html" title="">케즐모</a>
																	</h4>
																	<span>케이팝을 즐기는 모임</span>
																	<!-- <a href="#" title="" class="add-butn more-action" data-ripple="">unfriend</a> -->
																	<a href="#" title="" class="add-butn" data-ripple="">모임
																		탈퇴</a>

																</div>
																
															</div>
														</li>
														<li>
															<div class="nearly-pepls">
																<figure>
																	<a href="time-line.html" title=""><img
																		src="resources/images/resources/friend-avatar9.jpg"
																		alt=""></a>
																</figure>
																<div class="pepl-info">
																	<h4>
																		<a href="time-line.html" title="">도시탐험가들</a>
																	</h4>
																	<span>이곳저곳을 탐방하는 모임입니다</span> <a href="#" title=""
																		class="add-butn" data-ripple="">모임 탈퇴</a>
																</div>
															</div>
														</li>
														<li>
															<div class="nearly-pepls">
																<figure>
																	<a href="time-line.html" title=""><img
																		src="resources/images/resources/nearly6.jpg" alt=""></a>
																</figure>
																<div class="pepl-info">
																	<h4>
																		<a href="time-line.html" title="">365일 춤만 출래 예예예
																			미러미러미러</a>
																	</h4>
																	<span>취미로 춤추는 사람들의 모임</span> <a href="#" title=""
																		class="add-butn" data-ripple="">모임 탈퇴</a>
																</div>
															</div>
														</li>
														<li>
															<div class="nearly-pepls">
																<figure>
																	<a href="time-line.html" title=""><img
																		src="resources/images/resources/nearly2.jpg" alt=""></a>
																</figure>
																<div class="pepl-info">
																	<h4>
																		<a href="time-line.html" title="">뷰파인더</a>
																	</h4>
																	<span>사진 속에 많은 것을 담아내고 싶은 사람들의 모임입니다^^</span> <a
																		href="#" title="" class="add-butn" data-ripple="">모임
																		탈퇴</a>
																</div>
															</div>
														</li>
													</ul>
													<div class="lodmore">
														<button class="btn-view btn-load-more"></button>
													</div>
												</div>
												<!-- 내가 만든 모임 -->
												<div class="tab-pane fade" id="frends-req">
													<ul class="nearby-contct">
														<li>
															<div class="nearly-pepls">
																<figure>
																	<a href="time-line.html" title=""><img
																		src="resources/images/resources/nearly5.jpg" alt=""></a>
																</figure>
																<div class="pepl-info">
																	<h4>
																		<a href="time-line.html" title="">자연이 좋다!!!</a>
																	</h4>
																	<span>산과 강과 들로 나가는 사람들</span> <a href="#" title=""
																		class="add-butn" data-ripple="">모임 관리</a>
																</div>
															</div>
														</li>

														<li>
															<div class="nearly-pepls">
																<figure>
																	<a href="time-line.html" title=""><img
																		src="resources/images/resources/friend-avatar9.jpg"
																		alt=""></a>
																</figure>
																<div class="pepl-info">
																	<h4>
																		<a href="time-line.html" title="">은평구 소모임</a>
																	</h4>
																	<span>은평구 동네친구</span> <a href="#" title=""
																		class="add-butn" data-ripple="">모임 관리</a>
																</div>
															</div>
														</li>
														<li>
															<div class="nearly-pepls">
																<figure>
																	<a href="time-line.html" title=""><img
																		src="resources/images/resources/nearly2.jpg" alt=""></a>
																</figure>
																<div class="pepl-info">
																	<h4>
																		<a href="time-line.html" title="">등산조아</a>
																	</h4>
																	<span>주말에 산 오르는 사람들의 모임</span> <a href="#" title=""
																		class="add-butn" data-ripple="">모임 관리</a>
																</div>
															</div>
														</li>

													</ul>
													<button class="btn-view btn-load-more"></button>
												</div>
											</div>
										</div>
									</div>

								</div>

								<div class="col-lg-3">
									<aside class="sidebar static">
										<div class="widget">
											<div class="editing-interest">
												<h4 class="widget-title">
													<i class="ti-bell"></i>최근 쪽지
												</h4>
												<div class="notification-box">
													<ul>
														<li>
															<div>
																<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;받은 쪽지가 없습니다.</p>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="widget">
											<h4 class="widget-title">최근 알림</h4>
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
		
		//아 근데 비밀번호 암호화라서... 일단 보류..
		function exitGroup() {       
			var pass = prompt('탈퇴하려면 비밀번호를 입력하세요.');
			
			if(pass == userpassword){
				alert('탈퇴 되었습니다.');
			}
			else{
				alert('비밀번호 불일치로 탈퇴 실패');
			}
			
		}
		

		function getInterest() {
			$.ajax({
				type : "post",
				url : "mypage2",
				data : {
					"userId" : $("#userId").val()
				},
				dataType : "json",
				success : function(rdata) {
					if (rdata.length > 0) {
						$("#interest").text('');
						output = '';
						$(rdata).each(function() {
							output += "<span>" + this.interest + "</span>";

						})
						$("#Interests").append(output);
					}
				}
			}) //ajax end
		}//function end
		console.log("test");
		getInterests();
	</script>
</body>

</html>