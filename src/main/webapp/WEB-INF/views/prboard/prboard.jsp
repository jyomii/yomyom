<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

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

.center-block {
	display: flex;
	justify-content: center;
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
									<h4 class="widget-title">카테고리</h4>
									<ul class="naves">
										<li><i class="ti-clipboard"></i> <a href="newsfeed.html"
											title="">운동</a></li>
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
								<!-- <div class="col-lg-1">
									<aside class="sidebar static">
										
									</aside>
								</div>
								<!-- sidebar -->
								<div class="col-lg-8">-->
							</aside>
						</div>
						<!-- sidebar -->
						<div class="col-lg-6">
							<div class="central-meta">
								<div class="groups">
									<span><i class="fa fa-users"></i>모임 홍보 게시판</span>
								</div>
								<c:if test="${listcount > 0 }">
									<ul class="nearby-contct">
										<c:forEach var="boardlist" items="${boardlist}">
											<li>
												<div class="nearly-pepls">
													<figure>
														<span>${boardlist.prKey }</span>
														<img src="<spring:url value='/image${boardlist.groupDFile }'/>" />
														<input type="hidden" name="userkey"
															value="${boardlist.userKey }" id="user">
							                                     						</figure>
													<div class="pepl-info">
														<h4>${boardlist.groupName }</h4>
														<span>${boardlist.dateWrite}</span>
														<p>${boardlist.content }</p>
														<a class="add-butn" href="time-line.html"> 방문하기</a>
														<!-- 작성자와 관리자만 수정/삭제 가능하게 -->
														<c:if test="${'boardlist.userKey' eq 'writeuser.userKey'}"> 
															<a href="prmodify?prkey=${boardlist.prKey}">
																<button type="button" class="btn btn-outline-info">수정</button>
															</a>
															<!-- 글 삭제 -->
															<a href="#">
																<button class="btn btn-outline-danger"
																	data-toggle="modal" data-target="#myModal">삭제</button>
															</a>
														</c:if> 
													</div>
												</div>
											</li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${listcount == 0 }">
									<font size=5>등록된 홍보글이 없습니다.</font>
								</c:if>
								<br>
								<br>
								<br>
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
														href="prboard?page=${page-1 }" class="page-link">이전</a>&nbsp;
													</li>
												</c:if>
												<c:forEach var="a" begin="${startpage }" end="${endpage }">
													<c:if test="${a == page }">
														<li class="page-item"><a class="page-link" href="#">${a }</a>
														</li>
													</c:if>
													<c:if test="${a != page }">
														<li class="page-item"><a href="prboard?page=${a }"
															class="page-link">${a }</a></li>
													</c:if>
												</c:forEach>
												<c:if test="${page >= maxpage }">
													<li class="page-item"><a class="page-link" href="#">&nbsp;다음</a>
													</li>
												</c:if>
												<c:if test="${page < maxpage }">
													<li class="page-item"><a
														href="prboard?page=${page+1 }" class="page-link">&nbsp;다음</a>
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