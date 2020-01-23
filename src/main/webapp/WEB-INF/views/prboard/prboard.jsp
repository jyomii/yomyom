<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../mainpage/header.jsp" />

<style>
.nearby-contct>li {
	background: #fff none repeat scroll 0 0;
	border: 1px solid #eaf1f6;
	display: inline-block;
	margin-bottom: 0px;
	padding: 20px;
	width: 100%;
	transition: all 0.15s linear 0s;
}

.nearby-contct>li:hover {
	box-shadow: 0 0 0 0 #e1e8ec;
	border-color: transparent;
}

.mtr-btn {
	margin-top: 0px;
	width: 100%;
	height: 80px;
}

#prModal {
	display: none;
}

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

.modal.fade.show {
	background: rgba(0, 0, 0, 0.5);
}

#prModal .modal-dialog {
	-webkit-transform: translate(0, -50%);
	-o-transform: translate(0, -50%);
	transform: translate(0, -50%);
	top: 50%;
	margin: 0 auto;
}

.prtitle {
	font-weight: bold;
	font-size: 16pt;
}

 .center-block {display:flex;
                justify-content:center;}
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
											<h4 class="widget-title">카테고리</h4>
											<ul class="naves">
												<li><i class="ti-clipboard"></i> <a
													href="newsfeed.html" title="">운동</a></li>
												<li><i class="ti-mouse-alt"></i> <a href="inbox.html"
													title="">공연</a></li>
												<li><i class="ti-files"></i> <a href="fav-page.html"
													title="">음악</a></li>
												<li><i class="ti-user"></i> <a
													href="timeline-friends.html" title="">취미</a></li>
												<li><i class="ti-image"></i> <a
													href="timeline-photos.html" title="">친목</a></li>
												<li><i class="ti-video-camera"></i> <a
													href="timeline-videos.html" title="">게임</a></li>
												<li><i class="ti-video-camera"></i> <a
													href="timeline-videos.html" title="">공부</a></li>
											</ul>
										</div>
										<!-- Shortcuts -->

									</aside>
								</div>
								<!-- sidebar -->
								<div class="col-lg-6">
									<div class="central-meta">
										<div class="groups">
											<span><i class="fa fa-users"></i>모임 홍보 게시판</span>
										</div>
										<ul class="nearby-contct">
											<li>
												<div class="nearly-pepls">
													<figure>
														<a href="time-line.html" title=""><img
															src="resources/images/resources/group1.jpg" alt=""></a>
													</figure>
													<div class="pepl-info">
														<h4>
															<a href="time-line.html" title="">마포구 걷기 모임</a>
														</h4>
														<span>운동 취미 친목</span>
														<p>
															<br>마포구의 걷기 좋은 산책로를 탐방하고 거니는 마포구민 친목 모임입니다^^<br>
															20대, 30대 위주로 구성되어 있으며, 활발히 활동 중이니 같이 걸어요~!
														</p>
														<a class="add-butn" data-toggle="modal"
															data-target="#prModal">상세보기</a>
													</div>
												</div> <!-- 게시글 모달로 보기 -->
												<div class="modal" id="prModal">
													<div class="modal-dialog">
														<div class="modal-content">
															<!-- Modal body -->
															<div class="modal-body">
																<form name=pr_join_form method=post>
																	<div class="viewpage">
																		<div class="prtitle">
																			<span>마포구 걷기 모임</span>
																			<p>이지연</p>
																		</div>
																		
																		<div class="prcontent">
																			<p>
																				마포구의 걷기 좋은 산책로를 탐방하고 날이 좋을 때 번개 모임도 갖기도 합니다^^ 동네 친구
																				만들기에 딱! 놀러오세요~~ <br> 마포구의 걷기 좋은 산책로를 탐방하고 날이 좋을
																				때 번개 모임도 갖기도 합니다^^ 동네 친구 만들기에 딱! 놀러오세요~~ <br>
																				마포구의 걷기 좋은 산책로를 탐방하고 날이 좋을 때 번개 모임도 갖기도 합니다^^ 동네 친구
																				만들기에 딱! 놀러오세요~~ <br> 마포구의 걷기 좋은 산책로를 탐방하고 날이 좋을
																				때 번개 모임도 갖기도 합니다^^ 동네 친구 만들기에 딱! 놀러오세요~~
																			</p>
																		</div>
																		<div class=prsubmit>
																			<button type="button" class="add-butn">가입</button>
																			<button type="button" data-dismiss="modal"
																				class="add-butn">닫기</button>
																		</div>
																	</div>
																</form>
															</div>
														</div>
													</div>
												</div> <!-- 모달 끝 -->
											</li>
											<li>
												<div class="nearly-pepls">
													<figure>
														<a href="time-line.html" title=""><img
															src="resources/images/resources/group2.jpg" alt=""></a>
													</figure>
													<div class="pepl-info">
														<h4>
															<a href="time-line.html" title="">퇴근 후 감성충전</a>
														</h4>
														<span>독서 친목 모임</span>
														<p>
															<br>퇴근 후 직장인들끼리 모여 같이 책을 읽고 대화하는 모임입니다^^<br> 매
															달 한 권의 책을 선정하여 읽고 마지막 주 금요일에는 같이 토론도 해보아요~^^
														</p>
														</p>
														<a class="add-butn" data-toggle="modal"
															data-target="#prModal">상세보기</a>
													</div>
												</div> <!-- 게시글 모달로 보기 -->
												<div class="modal" id="prModal">
													<div class="modal-dialog">
														<div class="modal-content">
															<!-- Modal body -->
															<div class="modal-body">
																<form name=pr_join_form method=post>
																	<div class="viewpage">
																		<div class="prtitle">
																			<p>마포구를 중심으로 활동중인 친목 모임</p>
																		</div>
																		<div class="prcontent">
																			<p>마포구의 걷기 좋은 산책로를 탐방하고 날이 좋을 때 번개 모임도 갖기도 합니다^^
																				동네 친구 만들기에 딱! 놀러오세요~~</p>
																		</div>
																		<div class=prsubmit>
																			<button type="button" class="add-butn">가입</button>
																			<button type="button" data-dismiss="modal"
																				class="add-butn">닫기</button>
																		</div>
																	</div>
																</form>
															</div>
														</div>
													</div>
												</div> <!-- 모달 끝 -->
											</li>
											<li>
												<div class="nearly-pepls">
													<figure>
														<a href="time-line.html" title=""><img
															src="resources/images/resources/group3.jpg" alt=""></a>
													</figure>
													<div class="pepl-info">
														<h4>
															<a href="time-line.html" title="">오늘은 영어왕</a>
														</h4>
														<span>공부 언어 모임</span>
														<p>
															<br>더 이상 미룰 수 없다! 오늘은 영어왕이 되기 위한 사람들이 모인 곳!<br>
															다 같이 즐거운 스터디를 통해 영어왕이 되어보아요~ ^^
														</p>
														<a href="#" title="" class="add-butn" data-ripple="">가입하기</a>
													</div>
												</div>
											</li>
											<li>
												<div class="nearly-pepls">
													<figure>
														<a href="time-line.html" title=""><img
															src="resources/images/resources/group4.jpg" alt=""></a>
													</figure>
													<div class="pepl-info">
														<h4>
															<a href="time-line.html" title="">공연이 좋다</a>
														</h4>
														<span>음악 공연 연극 친목</span>
														<p>
															<br>같이 공연 보러 갈 사람을 구하고 싶을 때! 우리 모임에서 함께 가요^^<br>
														</p>
														<a href="#" title="" class="add-butn" data-ripple="">가입하기</a>
													</div>
												</div>
											</li>
											<li>
												<div class="nearly-pepls">
													<figure>
														<a href="time-line.html" title=""><img
															src="resources/images/resources/group5.jpg" alt=""></a>
													</figure>
													<div class="pepl-info">
														<h4>
															<a href="time-line.html" title="">마포구 걷기 모임</a>
														</h4>
														<span>운동 취미 친목</span>
														<p>
															<br>마포구의 걷기 좋은 산책로를 탐방하고 거니는 마포구민 친목 모임입니다^^<br>
															20대, 30대 위주로 구성되어 있으며, 활발히 활동 중이니 같이 걸어요~!
														</p>
														<a href="#" title="" class="add-butn" data-ripple="">가입하기</a>
													</div>
												</div>
											</li>
											<li>
												<div class="nearly-pepls">
													<figure>
														<a href="time-line.html" title=""><img
															src="resources/images/resources/group3.jpg" alt=""></a>
													</figure>
													<div class="pepl-info">
														<h4>
															<a href="time-line.html" title="">마포구 걷기 모임</a>
														</h4>
														<span>운동 취미 친목</span>
														<p>
															<br>마포구의 걷기 좋은 산책로를 탐방하고 거니는 마포구민 친목 모임입니다^^<br>
															20대, 30대 위주로 구성되어 있으며, 활발히 활동 중이니 같이 걸어요~!
														</p>
														<a href="#" title="" class="add-butn" data-ripple="">가입하기</a>
													</div>
												</div>
											</li>
										</ul>
                                        <br><br><br>
										<div class="center-block">
											<div class="row">
												<div class="col">
													<ul class="pagination">
														<c:if test="${page <= 1 }">
															<li class="page-item"><a class="page-link" href="#">이전&nbsp;</a>
															</li>
														</c:if>
														<c:if test="${page > 1 }">
															<li class="page-item"><a
																href="BoardList.bo?page=${page-1 }" class="page-link">이전</a>&nbsp;
															</li>
														</c:if>
														<c:forEach var="a" begin="${startpage }" end="${endpage }">
															<c:if test="${a == page }">
																<li class="page-item"><a class="page-link" href="#">${a }</a>
																</li>
															</c:if>
															<c:if test="${a != page }">
																<li class="page-item"><a
																	href="BoardList.bo?page=${a }" class="page-link">${a }</a>
																</li>
															</c:if>
														</c:forEach>
														<c:if test="${page >= maxpage }">
															<li class="page-item"><a class="page-link" href="#">&nbsp;다음</a>
															</li>
														</c:if>
														<c:if test="${page < maxpage }">
															<li class="page-item"><a
																href="BoardList.bo?page=${page+1 }" class="page-link">&nbsp;다음</a>
															</li>
														</c:if>
													</ul>
												</div>
											</div>
										</div>
									</div>
									<!-- photos -->

								</div>
								<!-- centerl meta -->
								<div class="col-lg-3">
									<aside class="sidebar static">
										<div class="widget">
											<h4 class="widget-title">최근 뜨는 모임</h4>
											<ul class="followers">
												<li>
													<figure>
														<img src="resources/images/resources/friend-avatar2.jpg"
															alt="">
													</figure>
													<div class="friend-meta">
														<h4>
															<a href="time-line.html" title="">광진구 자전거 매니아</a>
														</h4>
													</div>
												</li>
												<li>
													<figure>
														<img src="resources/images/resources/friend-avatar4.jpg"
															alt="">
													</figure>
													<div class="friend-meta">
														<h4>
															<a href="time-line.html" title="">무초 구스또!</a>
														</h4>
													</div>
												</li>
												<li>
													<figure>
														<img src="resources/images/resources/friend-avatar6.jpg"
															alt="">
													</figure>
													<div class="friend-meta">
														<h4>
															<a href="time-line.html" title="">옵치고고</a>
														</h4>
													</div>
												</li>
												<li>
													<figure>
														<img src="resources/images/resources/friend-avatar8.jpg"
															alt="">
													</figure>
													<div class="friend-meta">
														<h4>
															<a href="time-line.html" title="">치킨먹자 배그냠냠</a>
														</h4>
													</div>
												</li>
											</ul>
										</div>
										<!-- who's following -->
										<div class="widget">
											<button type="button" class="mtr-btn" id="prwritebtn">
												<span><h4>모임 홍보하기</h4></span>
											</button>
										</div>
								</div>
								<!-- creat page-->
								</aside>
							</div>
							<!-- sidebar -->
						</div>
					</div>
				</div>
			</div>
	</div>
	</section>
	</div>

    <jsp:include page="../mainpage/footer.jsp" />

	<script data-cfasync="false"
		src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="resources/js/map-init.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8c55_YHLvDHGACkQscgbGLtLRdxBDCfI"></script>
	<script>
		$("#prwritebtn").click(function() {
			location.href = "prwrite";
		});
	</script>
</body>

</html>