<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../mainpage/header.jsp" />

	
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
								</div><!-- sidebar -->
							<div class="col-lg-6">
								<div class="central-meta">
									<div class="editing-info">
										<h5 class="f-title"><i class="ti-info-alt"></i> 홍보 글 작성 </h5>
										<form method="post" action="boardwrite">
											<div class="form-group">	
										<!--  <label class="control-label" for="input">모임명</label><i class="mtrl-select"></i>  -->
										<c:set var="list" value="">
											  <select name="groupName" >
											  <!-- 지금 로그인 한 회원이 가입한 모임들을 셀렉트박스에 출력 -->
											     <option value="${list.groupName }"></option>
											  </select>
									    </c:set>
											</div>											
											<br><br>
											<div class="form-group">	
											  <textarea rows="4" id="textarea" required="required"></textarea>
											  <label class="control-label" for="textarea">내용</label><i class="mtrl-select"></i>
											</div>
											<div class="submit-btns">
												<button type="button" class="mtr-btn"><span>등록</span></button>
												<button type="button" class="mtr-btn" onclick="location.href='prboard'"><span>취소</span></button>
											</div>
										</form>
									</div>
								</div>	
							</div><!-- centerl meta -->
							
							<div class="col-lg-3">
									<aside class="sidebar static">
										<div class="widget">
											<h4 class="widget-title">최근 뜨는 모임</h4>
											<ul class="followers">
												<li>
													<figure>
														<img
															src="resources/images/resources/friend-avatar2.jpg"
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
	</section>
	
    <jsp:include page="../mainpage/footer.jsp"></jsp:include>
	
	<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="resources/js/map-init.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8c55_YHLvDHGACkQscgbGLtLRdxBDCfI"></script>

</body>	

</html>