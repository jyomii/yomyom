<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- Header -->
<jsp:include page="mainpage/header.jsp" />
<!-- Header end -->

<style>
.forgroupname {
	list-style: none;
	padding-top: 20px;
}

.forgroupnamewidth {
	width: 30%;
	display: inline-block;
}

.forgroupnamewidth1 {
	width: 60%;
	display: inline-block;
}

.forgroupnameleft {
	float: left;
	list-style: none;
	margin-right: 20px;
}

.forlogintitle {
	margin-bottom: 10px !important;
}

.forSubmitBtnDiv {
	margin-top: 0px !important;
	margin-bottom: 10px;
}

.forLoginBtn {
	padding-left: 25px !important;
	padding-right: 25px !important;
	margin-left: 13%;
}

.forMemberCountBtnOne {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnTwo {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnThree {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnFour {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnFive {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnSix {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnSeven {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forJoinBtn {
	margin-top: 0px !important;
	padding: 5px !important;
	float: right;
	font-size: 14px !important;
}

.forRegisterBtn {
	padding-left: 20px !important;
	padding-right: 20px !important;
	margin-left: 10%;
}

.forRememberIdDiv {
	margin-bottom: 0px !important;
	margin-top: 5px !important;
}

.forcheckbox {
	margin-top: 3px;
}

.calendarDiv {
	text-align: center;
	width: 95%;
	margin: 0 auto;
}

.calendarTable {
	width: 80%;
	margin: 0 auto;
}

.calendarBtn {
	cursor: pointer;
}

.calendarCell {
	cursor: pointer;
}

.calendarDiv td {
	border-radius: 13px;
}

.calendarCellSelected {
	background-color: #4F93CE;
	color: white !important;
}

.calendarCellMy {
	background-color: black;
	color: white !important;
}

.scheduleDiv {
	width: 80%;
	margin: 0 auto;
}

.scheduleUl {
	padding-left: 0px !important;
}

.card-header-bgcolor {
	background: white none repeat scroll 0 0 !important;
}

.schedule-span {
	margin-bottom: 7px;
	width: 70% !important;
}

.schedule-span1 {
	width: 35% !important;
}

.nearby-contct>li {
	padding: 15 px !important;
}

.paddingZero[aria-expanded="true"] {
	background: #088dcd;
	color: #fff;
	text-decoration: none;
}

.groupMember {
	display: inline-block;
	list-style: outside none none;
	margin-bottom: 0;
	padding: 0 25px 20px;
	width: 100%;
	max-height: 300px !important;
}

.groupMember li {
	display: inline-block;
	margin-bottom: 20px;
	position: relative;
	width: 100%;
}

.your-page-groupList li {
	margin-bottom: 3px !important;
}

.your-page-groupListDiv {
	min-height: 273px;
}

.min-width-h4 {
	margin-bottom: 0px !important;
}

.height-for-white {
	height: 70px !important;
}

.calendarBtn{
cursor:pointer}

#calendar td{
cursor:pointer
}
</style>

<!-- 그룹 페이지 상단 -->
<section>
	<input type="hidden" id="thisGroupKey" value="${groupkey }"> <input
		type="hidden" id="UserKey" value="1">
	<div class="feature-photo">
		<figure>
			<img id="groupPageImg"
				src="<spring:url value='/image${groupdfile }'/>" alt="" />
			<!--<img id="groupImg" src="resources/images/resources/timeline-1.jpg" alt="">-->
		</figure>
		<!-- **********모임 대문 사진 수정*********** -->
		<form class="edit-phto" id="groupMainImgForm"
			enctype="multipart/form-data" action="group_mainImgUpdate.net"
			method="post">
			<input type="hidden" name="groupkey" value="${groupkey }"> <i
				class="fa fa-camera-retro"></i>
			<!-- 대문 사진 수정 버튼 -->
			<label class="fileContainer"> 대문 사진 수정 <input type="file"
				name="groupMainImgUpload" />
			</label>
		</form>
		<!-- **********모임 대문 사진 수정*********** -->

		<div class="container-fluid height-for-white">
			<div class="row merged">
				<div class="col-lg-2 col-sm-3">
					<div class="user-avatar">
						<!-- 그룹 사진 -->
						<figure>
							<img id="groupImg"
								src="<spring:url value='/image${groupcfile }'/>" />
							<!-- <img id="groupImg" src="resources/images/resources/user-avatar.jpg" alt="">-->
							<!-- **********모임 사진 수정*********** -->
							<form class="edit-phto" id="groupImgForm"
								enctype="multipart/form-data" action="group_ImgUpdate.net"
								method="post">
								<input type="hidden" name="groupkey" id="hiddenGroupKey"
									value="${groupkey }"> <i class="fa fa-camera-retro"></i>
								<!-- 그룹 사진 수정 버튼 -->
								<label class="fileContainer"> 그룹 사진 수정하기 <input
									type="file" name="groupImgUpload" />
								</label>
								<!-- 그룹 사진 수정 버튼 -->
							</form>
							<!-- **********모임 사진 수정*********** -->
						</figure>
						<!-- 그룹 사진 -->
					</div>
				</div>
				<div class="col-lg-10 col-sm-9">
					<div class="timeline-info">
						<div class="forgroupnamewidth">
							<!-- 그룹 이름 -->
							<ul>
								<li class="admin-name forgroupname">
									<h5>${groupname}</h5>
								</li>
							</ul>
							<!-- 그룹 이름 -->
						</div>
						<div class="forgroupnamewidth1">
							<!-- 그룹 간단 정보 -->
							<ul>
								<li class="forgroupnameleft">지역: ${groupswhere }&nbsp;${groupdwhere }</li>
								<li class="forgroupnameleft">연령대: ${groupage } 대</li>
								<li class="forgroupnameleft">카테고리: ${groupdcategory }&nbsp;>&nbsp;${groupscategory }</li>
								<li class="forgroupnameleft">회원수: ${groupmembers }명</li>
							</ul>
							<!-- 그룹 간단 정보 -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- 그룹 페이지 상단 -->
<!-- 그룹 페이지 메인 -->
<section>
	<div class="gap gray-bg">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="row" id="page-contents">

						<!-- 그룹 페이지 위젯 왼쪽 -->
						<div class="col-lg-3">
							<aside class="sidebar static">
								<!-- 그룹 게시판 위젯 -->
								<div class="widget">
									<h4 class="widget-title">게시판</h4>
									<ul class="naves">
										<c:forEach var="gbl" items="${groupboardlist }">
											<li><i class="ti-clipboard"></i> <a href="newsfeed.html"
												title="">${gbl.boardName}</a> <input type="hidden"
												value="${gbl.boardType }"></li>
										</c:forEach>
									</ul>
								</div>
								<!-- 그룹 게시판 위젯 -->

								<!-- 모임 관리 게시판 위젯 -->
								<div class="widget">
									<h4 class="widget-title">모임 관리</h4>

									<ul class="naves">
										<li><i class="ti-info-alt"></i> <a href="group_admin.net"
											title="">모임 기본 설정</a></li>
										<li><i class="ti-mouse-alt"></i> <a
											href="group_admin.net" title="">모임 일정 관리</a></li>
										<li><i class="ti-heart"></i> <a href="edit-interest.html"
											title="">모임 회원 관리</a></li>
										<li><i class="ti-settings"></i> <a
											href="edit-account-setting.html" title="">모임 게시판 관리</a></li>
									</ul>
								</div>
								<!-- 모임 관리 게시판 위젯 -->

								<!-- 그룹 카톡방 위젯 -->
								<div class="widget">
									<div class="banner medium-opacity bluesh">
										<div
											style="background-image: url(resources/images/resources/baner-widgetbg.jpg)"
											class="bg-image"></div>
										<!--  <div class="baner-top">
													<span><img src="resources/images/book-icon.png"
														alt=""></span> <i class="fa fa-ellipsis-h"></i>
												</div>-->
										<div class="banermeta">
											<p>
												그룹 카카오톡<br>채팅방에<br>참여하세요!
											</p>
											<!--<span>like them all</span>-->
											<a href="#" title="" data-ripple="">카톡방 참여하기</a>
										</div>
									</div>
								</div>
								<!-- 그룹 카톡방 위젯 -->

								<!-- 그룹 가입 회원 목록 -->
								<div class="widget friend-list">
									<h4 class="widget-title">모임의 회원들</h4>
									<div id="searchDir"></div>
									<ul id="people-list" class="friendz-list">
										<c:forEach var="gml" items="${groupmemberlist }">
											<li>
												<figure>
													<img src="resources/images/resources/friend-avatar.jpg"
														alt="">
												</figure>
												<div class="friendz-meta">
													<a href="time-line.html"></a>${gml.groupnickname } <i
														class="__cf_email__">모임장</i>
												</div>
											</li>
										</c:forEach>
									</ul>
								</div>
								<!-- 그룹 가입 회원 목록 -->

							</aside>
						</div>
						<!-- 그룹 페이지 위젯 왼쪽  -->

						<!-- 그룹 페이지 위젯 중간 -->
						<div class="col-lg-6">

							<!-- 그룹장 간단 그룹 소개 -->
							<div class="central-meta item">
								<div class="user-post">
									<div class="friend-info">
										<!-- 그룹 사진 -->
										<figure>
											<img src="resources/images/resources/friend-avatar10.jpg"
												alt="">
										</figure>
										<!-- 그룹 사진 -->

										<!-- 그룹 이름-->
										<div class="friend-name">
											<ins>
												<a href="time-line.html" title="">${groupname }</a>
											</ins>
											<span>모임장 : ${groupmaster}</span>
										</div>
										<!-- 그룹 이름-->

										<!-- 그룹 소개 본문-->
										<div class="description">
											<p>${groupinfo}</p>
										</div>
										<!-- 그룹 소개 본문-->
									</div>
								</div>
							</div>
							<!-- 그룹장 간단 그룹 소개 -->


							<!-- 그룹 정모 예정 목록 -->
							<div class="central-meta item">
								<div class="groups">
									<span><i class="fa fa-users"></i>예정 모임</span>
								</div>
								<ul class="nearby-contct">
									<c:forEach var="gmtl" items="${groupmeetinglist }" begin="0"
										end="2">
										<c:choose>
											<c:when test="${gmtl.rownum+0 ==1}">
												<c:set var="l" value="One" />
												<c:set var="n" value="1" />
											</c:when>
											<c:when test="${gmtl.rownum+0 ==2}">
												<c:set var="l" value="Two" />
												<c:set var="n" value="2" />
											</c:when>
											<c:otherwise>
												<c:set var="l" value="Three" />
												<c:set var="n" value="3" />
											</c:otherwise>
										</c:choose>
										<li>
											<div class="card">
												<div class="card-header card-header-bgcolor"
													id="heading${l}">
													<div class="nearly-pepls">
														<figure>
															<a href="time-line.html" title=""><img
																src="resources/images/resources/group1.jpg" alt=""></a>
														</figure>
														<div class="pepl-info">
															<h4 class="min-width-h4">
																<a href="time-line.html" title="">${gmtl.postTitle}</a>
															</h4>
															<br> <br> <span class="schedule-span">장소:
																${gmtl.location}</span>
															<c:if test="${gmtl.joinbtn eq 'yes'}">
																<button type="button" class="mtr-btn forJoinBtn gmtljoinbtn">
																	<span>참여하기</span>
																</button>
															</c:if>
															<c:if test="${gmtl.joinbtn eq 'no'}">
																<button type="button" class="mtr-btn forJoinBtn gmtlcancelbtn">
																	<span>취소하기</span>
																</button>
															</c:if>
															<input type="hidden" id="postkey${n}"
																value="${gmtl.postKey }"> <input type="hidden"
																value="${n}"> <br> <span
																class="schedule-span1">일시: ${gmtl.cstartdate}</span><br>
															<span class="schedule-span1">회비: ${gmtl.cmoney}</span>
															<button type="button"
																class="mtr-btn forMemberCountBtn${l}"
																data-toggle="collapse" data-target="#collapse${l}"
																aria-expanded="true" aria-controls="collapse${l}">
																<span>참여한 사람들 <span class="currentperson${n}">${gmtl.currentperson }</span>
																	/ ${gmtl.maxperson}&nbsp;&nbsp;&nbsp;<i
																	class="fas fa-arrow-down i-change${l}"></i>
																</span>
															</button>
															<input type="hidden" value="${gmtl.postKey }"> <input
																type="hidden" value="${n}">
														</div>
													</div>
												</div>
												<div id="collapse${l}" class="collapse"
													aria-labelledby="heading${l}" data-parent="#accordion">
													<div class="card-body">
														<div class="widget friend-list">
															<div id="searchDir${n}"></div>
															<ul id="people-list${n}"
																class="friendz-list people-list groupMember">

																<c:forEach var="gml" items="${groupmemberlist }">
																	<li>
																		<figure>
																			<img
																				src="resources/images/resources/friend-avatar.jpg"
																				alt="">
																		</figure>
																		<div class="friendz-meta">
																			<a href="time-line.html"></a>${gml.groupnickname } <i
																				class="__cf_email__">모임장</i>
																		</div>
																	</li>
																</c:forEach>

															</ul>
														</div>
													</div>
												</div>
											</div>
										</li>
									</c:forEach>
								</ul>
								<!-- photos -->
							</div>
							<!-- 그룹 정모 예정 목록 -->

							<!-- 그룹 정모 후기 목록 -->
							<div class="central-meta item">
								<div class="groups">
									<span><i class="fa fa-users"></i>정모 후기</span>
								</div>
								<br>
								<div class="user-post">
									<div class="friend-info">
										<figure>
											<img src="resources/images/resources/friend-avatar10.jpg"
												alt="">
										</figure>
										<div class="friend-name">
											<ins>
												<a href="time-line.html" title="">이지연</a>
											</ins>
											<span>2019년 12월 31일 송년회 후기</span>
										</div>
										<div class="post-meta">
											<img src="resources/images/resources/user-post.jpg" alt="">
											<div class="we-video-info">
												<ul>

													<li><span class="views" data-toggle="tooltip"
														title="views"> <i class="fa fa-eye"></i> <ins>1.2k</ins>
													</span></li>
													<li><span class="comment" data-toggle="tooltip"
														title="Comments"> <i class="fa fa-comments-o"></i>
															<ins>52</ins>
													</span></li>
													<li><span class="like" data-toggle="tooltip"
														title="like"> <i class="ti-heart"></i> <ins>2.2k</ins>
													</span></li>
													<li><span class="dislike" data-toggle="tooltip"
														title="dislike"> <i class="ti-heart-broken"></i> <ins>200</ins>
													</span></li>
													<li class="social-media">
														<div class="menu">
															<div class="btn trigger">
																<i class="fa fa-share-alt"></i>
															</div>
															<div class="rotater">
																<div class="btn btn-icon">
																	<a href="#" title=""><i class="fa fa-html5"></i></a>
																</div>
															</div>
															<div class="rotater">
																<div class="btn btn-icon">
																	<a href="#" title=""><i class="fa fa-facebook"></i></a>
																</div>
															</div>
															<div class="rotater">
																<div class="btn btn-icon">
																	<a href="#" title=""><i class="fa fa-google-plus"></i></a>
																</div>
															</div>
															<div class="rotater">
																<div class="btn btn-icon">
																	<a href="#" title=""><i class="fa fa-twitter"></i></a>
																</div>
															</div>
															<div class="rotater">
																<div class="btn btn-icon">
																	<a href="#" title=""><i class="fa fa-css3"></i></a>
																</div>
															</div>
															<div class="rotater">
																<div class="btn btn-icon">
																	<a href="#" title=""><i class="fa fa-instagram"></i></a>
																</div>
															</div>
															<div class="rotater">
																<div class="btn btn-icon">
																	<a href="#" title=""><i class="fa fa-dribbble"></i></a>
																</div>
															</div>
															<div class="rotater">
																<div class="btn btn-icon">
																	<a href="#" title=""><i class="fa fa-pinterest"></i></a>
																</div>
															</div>

														</div>
													</li>
												</ul>
											</div>
											<div class="description">

												<p>
													졸잼 <a href="#" title="">#test drive booking !</a> 꽐롸됐어요
													힘들었어요 그래도 탁구쳤어요
												</p>
											</div>
										</div>
									</div>
									<div class="coment-area">
										<ul class="we-comet">
											<li>
												<div class="comet-avatar">
													<img src="resources/images/resources/comet-1.jpg" alt="">
												</div>
												<div class="we-comment">
													<div class="coment-head">
														<h5>
															<a href="time-line.html" title="">조태석</a>
														</h5>
														<span>1 분전</span> <a class="we-reply" href="#"
															title="Reply"><i class="fa fa-reply"></i></a>
													</div>
													<p>힘들었다..</p>
												</div>
												<ul>
													<li>
														<div class="comet-avatar">
															<img src="resources/images/resources/comet-2.jpg" alt="">
														</div>
														<div class="we-comment">
															<div class="coment-head">
																<h5>
																	<a href="time-line.html" title="">장연지</a>
																</h5>
																f <span>1 시간 전</span> <a class="we-reply" href="#"
																	title="Reply"><i class="fa fa-reply"></i></a>
															</div>
															<p>
																짱힘듬f <a href="#" title="">#Mercedes-Benz</a> 탁구짱
															</p>
														</div>
													</li>
													<li>
														<div class="comet-avatar">
															<img src="resources/images/resources/comet-3.jpg" alt="">
														</div>
														<div class="we-comment">
															<div class="coment-head">
																<h5>
																	<a href="time-line.html" title="">고연희</a>
																</h5>
																<span>하루 전</span> <a class="we-reply" href="#"
																	title="Reply"><i class="fa fa-reply"></i></a>
															</div>
															<p>일어나보니 탁구장이네요</p>
														</div>
													</li>
												</ul>
											</li>
											<li>
												<div class="comet-avatar">
													<img src="resources/images/resources/comet-1.jpg" alt="">
												</div>
												<div class="we-comment">
													<div class="coment-head">
														<h5>
															<a href="time-line.html" title="">Donald Trump</a>
														</h5>
														<span>1 week ago</span> <a class="we-reply" href="#"
															title="Reply"><i class="fa fa-reply"></i></a>
													</div>
													<p>
														we are working for the dance and sing songs. this video is
														very awesome for the youngster. please vote this video and
														like our channel <i class="em em-smiley"></i>
													</p>
												</div>
											</li>
											<li><a href="#" title="" class="showmore underline">더보기</a></li>
											<li class="post-comment">
												<div class="comet-avatar">
													<img src="resources/images/resources/comet-1.jpg" alt="">
												</div>
												<div class="post-comt-box">
													<form method="post">
														<textarea placeholder="댓글을 입력하세요"></textarea>
														<div class="add-smiles">
															<span class="em em-expressionless" title="add icon"></span>
														</div>
														<div class="smiles-bunch">
															<i class="em em---1"></i> <i class="em em-smiley"></i> <i
																class="em em-anguished"></i> <i class="em em-laughing"></i>
															<i class="em em-angry"></i> <i class="em em-astonished"></i>
															<i class="em em-blush"></i> <i class="em em-disappointed"></i>
															<i class="em em-worried"></i> <i
																class="em em-kissing_heart"></i> <i class="em em-rage"></i>
															<i class="em em-stuck_out_tongue"></i>
														</div>
														<button type="submit"></button>
													</form>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<!-- 그룹 정모 후기 목록 -->

						</div>
						<!-- 그룹 페이지 위젯 중간 -->

						<!-- 그룹 페이지 위젯 오른쪽 -->
						<div class="col-lg-3">
							<aside class="sidebar static">

								<!-- 그룹 로그인 위젯 -->
								<div class="widget">
									<h4 class="widget-title forlogintitle">로그인</h4>
									<div class="your-page">
										<div class="form-group">
											<input type="text" id="input" required="required" /> <label
												class="control-label" for="input">아이디</label><i
												class="mtrl-select"></i>
										</div>
										<div class="form-group">
											<input type="password" required="required" /> <label
												class="control-label" for="input">비밀번호</label><i
												class="mtrl-select"></i>
										</div>
										<div class="checkbox forRememberIdDiv">
											<label> <input type="checkbox" checked="checked"><i
												class="check-box forcheckbox"></i>아이디 저장
											</label>
										</div>

										<div class="submit-btns forSubmitBtnDiv">
											<button type="button" class="mtr-btn forLoginBtn">
												<span>로그인</span>
											</button>
											<button type="button" class="mtr-btn forRegisterBtn">
												<span>회원가입</span>
											</button>
										</div>

									</div>
								</div>
								<!-- 그룹 로그인 위젯 -->

								<!-- 그룹 나의 정보 위젯 -->
								<div class="widget">
									<h4 class="widget-title">나의 정보</h4>
									<div class="your-page your-page-groupListDiv">
										<figure>
											<a href="#" title=""><img
												src="resources/images/resources/friend-avatar9.jpg" alt=""></a>
										</figure>
										<div class="page-meta">
											<a href="#" title="" class="underline">동선동탁구대장</a> <span><i
												class="ti-comment"></i>메세지 <em>9</em></span> <span><i
												class="ti-bell"></i>알림 <em>2</em></span>
										</div>
										<div class="page-likes">
											<ul class="nav nav-tabs likes-btn">
												<li class="nav-item"><a class="active" href="#link1"
													data-toggle="tab">나의모임정보</a></li>
												<li class="nav-item"><a class="" href="#link2"
													data-toggle="tab">가입모임목록</a></li>
											</ul>
											<!-- Tab panes -->
											<div class="tab-content">
												<div class="tab-pane active fade show" id="link1">
													<span><i class="ti-heart"></i>884</span> <a href="#"
														title="weekly-likes">35 new likes this week</a>
													<div class="users-thumb-list">
														<a href="#" title="Anderw" data-toggle="tooltip"> <img
															src="resources/images/resources/userlist-1.jpg" alt="">
														</a> <a href="#" title="frank" data-toggle="tooltip"> <img
															src="resources/images/resources/userlist-2.jpg" alt="">
														</a> <a href="#" title="Sara" data-toggle="tooltip"> <img
															src="resources/images/resources/userlist-3.jpg" alt="">
														</a> <a href="#" title="Amy" data-toggle="tooltip"> <img
															src="resources/images/resources/userlist-4.jpg" alt="">
														</a> <a href="#" title="Ema" data-toggle="tooltip"> <img
															src="resources/images/resources/userlist-5.jpg" alt="">
														</a> <a href="#" title="Sophie" data-toggle="tooltip"> <img
															src="resources/images/resources/userlist-6.jpg" alt="">
														</a> <a href="#" title="Maria" data-toggle="tooltip"> <img
															src="resources/images/resources/userlist-7.jpg" alt="">
														</a>
													</div>
												</div>
												<div class="tab-pane fade" id="link2">
													<div>
														<ul class="your-page-groupList">
															<li>동.탁</li>
															<li>동.탁</li>
															<li>동.탁</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- 나의 정보 위젯 -->

								<!-- 그룹별 정모 나의 일정 위젯 -->
								<div class="widget calendarCenter">
									<input type="hidden" id="gclc" value="${groupcalendarlistCount}">
									<c:forEach var="gcl" items="${groupcalendarlist }">
											<input type="hidden" id="cal${gcl.rownum}" value="${gcl.startdate }">
									</c:forEach>
									<h4 class="widget-title">나의 일정</h4>

									<div class="calendarDiv">
										<table id="calendar" class="calendarTable">
											<tr>
												<!-- label은 마우스로 클릭을 편하게 해줌 -->
												<th id="prevcal"><label><i
														class="fas fa-angle-left calendarBtn"></i></label></th>
												<th id="tbCalendarYM" colspan="5">yyyy년 m월</th>
												<th id="nextcal"><label><i
														class="fas fa-angle-right calendarBtn"></i></label></th>
											</tr>
											<tr>
												<th align="center">일</th>
												<th align="center">월</th>
												<th align="center">화</th>
												<th align="center">수</th>
												<th align="center">목</th>
												<th align="center">금</th>
												<th align="center">토</th>
											</tr>
										</table>
									</div>
									<div class="scheduleDiv">
										<hr>
										<ul class="short-profile scheduleUl" id="shortschedule">
											<c:if test="${empty shortschedule}">
											<li><span>일정 없음</span></li>
											</c:if>
											<c:if test="${not empty shortschedule}">
											<c:forEach var="ss" items="${shortschedule }">
												<li><span>${ss.posttitle }</span>
												<p>
													모임명: ${ss.groupname }<br>시간: ${ss.startdate} <br>장소: ${ss.location }
												</p></li>
											</c:forEach>
											</c:if>
										</ul>
									</div>

								</div>
								<!-- 그룹별 정모 나의 일정 위젯 -->

							</aside>
						</div>
						<!-- 그룹 페이지 위젯 오른쪽 -->

					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- 그룹 페이지 메인 -->
<!-- footer -->
<jsp:include page="mainpage/footer.jsp" />
<!-- footer end -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	//달력시작==================================================================
	
	var today = new Date();//오늘 날짜//내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
	var date = new Date();//today의 Date를 세어주는 역할
	function prevCalendar() {//이전 달
		// 이전 달을 today에 값을 저장하고 달력에 today를 넣어줌
		//today.getFullYear() 현재 년도//today.getMonth() 월  //today.getDate() 일 
		//getMonth()는 현재 달을 받아 오므로 이전달을 출력하려면 -1을 해줘야함
		today = new Date(today.getFullYear(), today.getMonth() - 1, today
				.getDate());
		buildCalendar(); //달력 cell 만들어 출력 
	}

	function nextCalendar() {//다음 달
		// 다음 달을 today에 값을 저장하고 달력에 today 넣어줌
		//today.getFullYear() 현재 년도//today.getMonth() 월  //today.getDate() 일 
		//getMonth()는 현재 달을 받아 오므로 다음달을 출력하려면 +1을 해줘야함
		today = new Date(today.getFullYear(), today.getMonth() + 1, today
				.getDate());
		buildCalendar();//달력 cell 만들어 출력
	}
	function buildCalendar() {//현재 달 달력 만들기
		var doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
		//이번 달의 첫째 날,
		//new를 쓰는 이유 : new를 쓰면 이번달의 로컬 월을 정확하게 받아온다.     
		//new를 쓰지 않았을때 이번달을 받아오려면 +1을 해줘야한다. 
		//왜냐면 getMonth()는 0~11을 반환하기 때문
		var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);
		//이번 달의 마지막 날
		//new를 써주면 정확한 월을 가져옴, getMonth()+1을 해주면 다음달로 넘어가는데
		//day를 1부터 시작하는게 아니라 0부터 시작하기 때문에 
		//대로 된 다음달 시작일(1일)은 못가져오고 1 전인 0, 즉 전달 마지막일 을 가져오게 된다
		var tbCalendar = document.getElementById("calendar");
		//날짜를 찍을 테이블 변수 만듬, 일 까지 다 찍힘
		var tbCalendarYM = document.getElementById("tbCalendarYM");
		//테이블에 정확한 날짜 찍는 변수
		//innerHTML : js 언어를 HTML의 권장 표준 언어로 바꾼다
		//new를 찍지 않아서 month는 +1을 더해줘야 한다. 
		tbCalendarYM.innerHTML = today.getFullYear() + "년 "
				+ (today.getMonth() + 1) + "월";

		/*while은 이번달이 끝나면 다음달로 넘겨주는 역할*/
		while (tbCalendar.rows.length > 2) {
			//열을 지워줌
			//기본 열 크기는 body 부분에서 2로 고정되어 있다.
			tbCalendar.deleteRow(tbCalendar.rows.length - 1);
			//테이블의 tr 갯수 만큼의 열 묶음은 -1칸 해줘야지 
			//30일 이후로 담을달에 순서대로 열이 계속 이어진다.
		}
		var row = null;
		row = tbCalendar.insertRow();
		//테이블에 새로운 열 삽입//즉, 초기화
		var cnt = 0;// count, 셀의 갯수를 세어주는 역할
		// 1일이 시작되는 칸을 맞추어 줌
		for (i = 0; i < doMonth.getDay(); i++) {
			/*이번달의 day만큼 돌림*/
			cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
			cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
		}
		/*달력 출력*/
		for (i = 1; i <= lastDate.getDate(); i++) {
			//1일부터 마지막 일까지 돌림
			cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
			cell.innerHTML = "<span class='caldendarCell' id='day"+i+"'>" + i + "</span>";//셀을 1부터 마지막 day까지 HTML 문법에 넣어줌
			cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
			if (cnt % 7 == 1) {/*일요일 계산*/
				//1주일이 7일 이므로 일요일 구하기
				//월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
				cell.innerHTML = "<span class='caldendarCell' id='day"+i+"'><font color=#F79DC2>"
						+ i + "</span>";
				//1번째의 cell에만 색칠
			}
			if (cnt % 7 == 0) {/* 1주일이 7일 이므로 토요일 구하기*/
				//월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
				cell.innerHTML = "<span class='caldendarCell' id='day"+i+"'><font color=skyblue>"
						+ i + "</span>";
				//7번째의 cell에만 색칠
				row = calendar.insertRow();
				//토요일 다음에 올 셀을 추가
			}
			/*오늘의 날짜에 노란색 칠하기*/
			if (today.getFullYear() == date.getFullYear()
					&& today.getMonth() == date.getMonth()
					&& i == date.getDate()) {
				//달력에 있는 년,달과 내 컴퓨터의 로컬 년,달이 같고, 일이 오늘의 일과 같으면
				cell.bgColor = "#FAF58C";//셀의 배경색을 노랑으로 
			}
		}
	}
	//달력끝==================================================================
</script>
<script>
$(function() {
	buildCalendar();
	var mycalendarlistcount = $('#gclc').val();
	for(var i = 1; i<=mycalendarlistcount;i++){
		var temp = $('#cal'+i).val();
		$('#day'+temp).parent().addClass('calendarCellMy');
	}
	
	$("#calendar").on('click', '#prevcal', function(event) {
		var userkey = $('#UserKey').val();
		prevCalendar();
		var date = $('#tbCalendarYM').text();
		ajaxcallist(userkey,date);
		$('#shortschedule').empty();
		$('#shortschedule').append('<li><span>날짜를 선택하세요</span></li>');
		
    })
    
    $("#calendar").on('click', '#nextcal', function(event) {
    	var userkey = $('#UserKey').val();
    	nextCalendar();
    	var date = $('#tbCalendarYM').text();
    	ajaxcallist(userkey,date);
    	$('#shortschedule').empty();
    	$('#shortschedule').append('<li><span>날짜를 선택하세요</span></li>');
    })
    
    
	$(".nearby-contct").on('click', '.gmtljoinbtn', function(event) {
		var userkey = $('#UserKey').val();
        var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#hiddenGroupKey').val();
        ajaxJoinBtn(postkey, groupkey, userkey, n);
        $(this).removeClass('gmtljoinbtn');
        $(this).addClass('gmtlcancelbtn');
        $(this).children().html('취소하기');
    })

    $(".nearby-contct").on('click', '.gmtlcancelbtn', function(event) {
        var userkey = $('#UserKey').val();
        var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#hiddenGroupKey').val();
        ajaxJoinCancelBtn(postkey, groupkey, userkey, n);
        $(this).removeClass('gmtlcancelbtn');
        $(this).addClass('gmtljoinbtn');
        $(this).children().html('참여하기');
    })
	$(".calendarDiv").on('click', 'td', function(event) {
        if ($(this).text() != "" || $(this).text().length() > 2) {
            $('td').removeClass('calendarCellSelected');
            $(this).addClass('calendarCellSelected');
            var userkey = $('#UserKey').val(); 
            var date = $('#tbCalendarYM').text();
            var day = $(this).text();
            if($(this).hasClass('calendarCellMy')){
            	ajaxcal(userkey,date,day);
            }else{
            	$('#shortschedule').empty();
            	$('#shortschedule').append('<li><span>일정이 없습니다</span></li>');
            }
        }
    })
    
    
    
    $(".forMemberCountBtnOne").click(function() {
    	var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#hiddenGroupKey').val();
        ajax(postkey, groupkey, n);
        if ($("#collapseOne").hasClass("show")) {
            $('.i-changeOne').removeClass('fa-arrow-up');
            $('.i-changeOne').addClass('fa-arrow-down');
        } else {
            $('.i-changeOne').removeClass('fa-arrow-down');
            $('.i-changeOne').addClass('fa-arrow-up');
        }
    })
    $(".forMemberCountBtnTwo").click(function() {
    	var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#hiddenGroupKey').val();
        ajax(postkey, groupkey, n);
        if ($("#collapseTwo").hasClass("show")) {
            $('.i-changeTwo').removeClass('fa-arrow-up');
            $('.i-changeTwo').addClass('fa-arrow-down');
        } else {
            $('.i-changeTwo').removeClass('fa-arrow-down');
            $('.i-changeTwo').addClass('fa-arrow-up');
        }
    })
    $(".forMemberCountBtnThree").click(function() {
        var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#hiddenGroupKey').val();
        ajax(postkey, groupkey, n);
        if ($("#collapseThree").hasClass("show")) {
            $('.i-changeThree').removeClass('fa-arrow-up');
            $('.i-changeThree').addClass('fa-arrow-down');
        } else {
            $('.i-changeThree').removeClass('fa-arrow-down');
            $('.i-changeThree').addClass('fa-arrow-up');
        }
    })

    //=======================================================
    $('input[type=file]:eq(0)').on('change', function() {
        $('#groupMainImgForm').submit();
    });
    $('input[type=file]:eq(1)').on('change', function() {
        $('#groupImgForm').submit();
    });


    //===== Search Filter =====//
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter(searchDir, list) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter($("#searchDir"), $("#people-list"));
        });
    }(jQuery));

    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter1(searchDir1, list1) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir1);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list1).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list1).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list1).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter1($("#searchDir1"), $("#people-list1"));
        });
    }(jQuery));

    //===========================================================================

    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter2(searchDir2, list2) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir2);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list2).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list2).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list2).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter2($("#searchDir2"), $("#people-list2"));
        });
    }(jQuery));

    //===========================================================================

    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter3(searchDir3, list3) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir3);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list3).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list3).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list3).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter3($("#searchDir3"), $("#people-list3"));
        });
    }(jQuery));

    //===========================================================================
    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter4(searchDir4, list4) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir4);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list4).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list4).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list4).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter4($("#searchDir4"), $("#people-list4"));
        });
    }(jQuery));

    //===========================================================================
    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter5(searchDir5, list5) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir5);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list5).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list5).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list5).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter5($("#searchDir5"), $("#people-list5"));
        });
    }(jQuery));

    //===========================================================================
    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter6(searchDir6, list6) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir6);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list6).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list6).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list6).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter6($("#searchDir6"), $("#people-list6"));
        });
    }(jQuery));

    //===========================================================================
    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter7(searchDir7, list7) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir7);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list7).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list7).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list7).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter7($("#searchDir7"), $("#people-list7"));
        });
    }(jQuery));

    //===========================================================================

    function ajax(postkey, groupkey, n) {
        output = "";
        var data = "postkey=" + postkey + "&groupkey=" + groupkey;
        var empty = "people-list" + n;
        $.ajax({
            type: "post",
            url: "group_main_ajax.net",
            data: data,
            dataType: "json",
            cache: false,
            success: function(data) {
                $("#" + empty).empty();
                output = "";
                $(data.groupcalendarmemberlist).each(
                    function(index, item) {
                        output += "<li><figure>";
                        output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                        output += "</figure><div class='friendz-meta'>";
                        output += "<a href='time-line.html'></a>" + item.groupnickname;
                        output += "<i class='__cf_email__'>모임장</i></div></li>";
                    })
                $("#" + empty).append(output);
            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end
    function ajaxJoinBtn(postkey, groupkey, userkey, n) {
        output = "";
        var data = "postkey=" + postkey + "&groupkey=" + groupkey + "&userkey=" + userkey;
        var empty = "people-list" + n;
        $.ajax({
            type: "post",
            url: "group_main_ajaxJoin.net",
            data: data,
            dataType: "json",
            cache: false,
            success: function(data) {
                $("#" + empty).empty();
                $(".currentperson"+n).empty();
                $(".currentperson"+n).html(data.currentperson);
                output = "";
                $(data.groupcalendarmemberlist).each(
                    function(index, item) {
                        output += "<li><figure>";
                        output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                        output += "</figure><div class='friendz-meta'>";
                        output += "<a href='time-line.html'></a>" + item.groupnickname;
                        output += "<i class='__cf_email__'>모임장</i></div></li>";
                    })
                $("#" + empty).append(output);
            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end

    function ajaxJoinCancelBtn(postkey, groupkey, userkey, n) {
        output = "";
        var data = "postkey=" + postkey + "&groupkey=" + groupkey + "&userkey=" + userkey;
        var empty = "people-list" + n;
        $.ajax({
            type: "post",
            url: "group_main_ajaxJoinCancel.net",
            data: data,
            dataType: "json",
            cache: false,
            success: function(data) {
                $("#" + empty).empty();
                output = "";
                $(".currentperson"+n).empty();
                $(".currentperson"+n).html(data.currentperson);
                $(data.groupcalendarmemberlist).each(
                    function(index, item) {
                        output += "<li><figure>";
                        output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                        output += "</figure><div class='friendz-meta'>";
                        output += "<a href='time-line.html'></a>" + item.groupnickname;
                        output += "<i class='__cf_email__'>모임장</i></div></li>";
                    })
                $("#" + empty).append(output);
            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end
    function ajaxCalendarList(userkey) {
        output = "";
        var data = "postkey=" + postkey + "&groupkey=" + groupkey + "&userkey=" + userkey;
        var empty = "people-list" + n;
        $.ajax({
            type: "post",
            url: "group_main_ajaxJoinCancel.net",
            data: data,
            dataType: "json",
            cache: false,
            success: function(data) {
                $("#" + empty).empty();
                output = "";
                $(".currentperson"+n).empty();
                $(".currentperson"+n).html(data.currentperson);
                $(data.groupcalendarmemberlist).each(
                    function(index, item) {
                        output += "<li><figure>";
                        output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                        output += "</figure><div class='friendz-meta'>";
                        output += "<a href='time-line.html'></a>" + item.groupnickname;
                        output += "<i class='__cf_email__'>모임장</i></div></li>";
                    })
                $("#" + empty).append(output);
            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end
    function ajaxcallist(userkey,date) {
        output = "";
        var data = "userkey=" + userkey + "&date=" + date;
        $.ajax({
            type: "post",
            url: "group_main_ajaxCalList.net",
            data: data,
            dataType: "json",
            cache: false,
            success: function(data) {
                $(data.groupcalendarlist).each(
                    function(index, item) {
                       if(!$('#day'+item.startdate).parent().hasClass('calendarCellMy')){
                    		$('#day'+item.startdate).parent().addClass('calendarCellMy');
                       }
                    })

            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end
    function ajaxcal(userkey,date,day) {
        output = "";
        var data = "userkey=" + userkey + "&date=" + date + "&day=" + day;
        $.ajax({
            type: "post",
            url: "group_main_shortschedule.net",
            data: data,
            dataType: "json",
            cache: false,
            success: function(data) {
            	$('#shortschedule').empty();
                output = "";
            	$(data.shortscheduleSelected).each(
                        function(index, item) {
                        	output += "<li><span>"+item.posttitle+"</span>";
                        	output += "<p>모임명: "+item.groupname +"<br>시간: "+item.startdate+"<br>장소:"+item.location+"</p></li>";
                        })
                        $('#shortschedule').append(output);
            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end
    
})
</script>

<script src="resources/js/script.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
