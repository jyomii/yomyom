<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- Header -->
<jsp:include page="../mainpage/header.jsp" />
<!-- Header end -->
<style>
.forgroupname {
	list-style: none;
	padding-top: 20px;
}

.forgroupnamewidth {
	width: 29%;
	display: inline-block;
}

.forgroupnamewidth1 {
	width: 69%;
	display: inline-block;
	position: relative;
	top: 7px;
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
	margin-bottom: 5px;
	width:100%;
}

.forLoginBtn {
	padding-left: 25px !important;
	padding-right: 25px !important;
	margin-bottom:10px;
	width: 90%;
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
.katalkbtn{
background-color: #423630 !important;
color: white !important;
}

.katalkbtn:hover{
background-color: #594941 !important;
}

.katalkbtnw{
color: #423630 !important;
}

.logintitle{
font-size:14px;
margin-top:10px;
}

.logintitlehr{
margin-top:5px;
margin-bottom:2px;
width:100%;
}

.logincenter{
text-align:center;
}

.logindiv{
margin-top:10px;
}

.loginleft{
float:left;
font-size:14px;
margin-left:14px;
}

.loginright{
float:right;
font-size:14px;
margin-right:14px;
}
.leftrightwidth{
padding-left: 0px !important;
padding-right: 0px !important;
width:90%;
}

.center-pagination {
	justify-content: center;
	margin-bottom: 0px;
}
.widthpagination{
width:18% !important;
}
.imground{
border-radius:16px;
margin-right:10px;
}
.hrmargin{
margin-top:5px !important;
margin-bottom:5px !important;
}

.leftpadding{
padding-left:20px !important;
padding-right:20px !important;
}

.commentmargin {
    margin-right: 7px !important;
}
.groupname{
position:relative;
top:-9px;
}

.figure-myimg{
	width:80px !important;
	max-width: 100px !important;
	margin-left: 20px;
}

.figure-myimg1{
	width:100%;
	
}

.page-metaclass{
	margin-left: 20px;
    width: 55% !important;
}

.forDeleteMargin {
	margin-right: 2%
}

.addScheduleBtn {
	float: right;
	padding-left: 13px !important;
	padding-right: 13px !important;
}

.search-text-field {
	margin-left: 3%;
}

.search-text-free {
	background: #f5f5f5 none repeat scroll 0 0;
	border: 1px solid #dadede;
	border-radius: 30px;
	color: #7b7b7b;
	font-size: 15px;
	padding: 7px 20px;
	width: 70%;
	margin-left: 2%;
	margin-bottom: 10px;
	margin-top: 3px;
}

.search-text-btn {
	margin-left: 2%;
	padding-left: 20px;
	padding-right: 20px;
}

.row-pagination {
	padding-top: 30px;
}

.center-pagination {
	justify-content: center;
}

.inline-flex {
	display: inline-flex;
}

.text-align-center {
	text-align: center;
}

.search-condition {
	margin-right: 10px;
}

.margin-Bottom{
	margin-bottom: 0px !important;
}


.floatrightsm{
float: right;
color: orange;
}

.width100{
width:100%;
}

.orange{
color: orange;
}

.forpagen{
padding-top:0px !important;	
}

.float-rightgo{
float: right;
}

.rightmargingo{
margin-right: 30px;
}

.bupdatebtn{
cursor: pointer;
}

.bdeletebtn{
cursor: pointer;
}
</style>

<!-- 그룹 페이지 상단 -->
<jsp:include page="group_header.jsp" />
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
								<jsp:include page="group_leftWidget.jsp" />
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
												<a href="time-line.html" title="">${group.groupName }</a>
											</ins>
											<span>모임장 : ${groupmaster}
										</span>
										</div>
										<!-- 그룹 이름-->

										<!-- 그룹 소개 본문-->
										<div class="description descriptionempty">
											<p class="phtml">${group.groupInfo}</p>
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
									<c:if test="${not empty groupmeetinglist }">
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
															<h4 class="min-width-h4 width100">
																<a href="time-line.html" title="">${gmtl.postTitle}</a>
																<c:if test="${gmtl.cmoneytype=='M'}">
																	<span class="floatrightsm">회비입금순 신청</span>
																</c:if>
																<c:if test="${gmtl.cmoneytype=='S'}">
																	<span class="floatrightsm">선착순 참여</span>
																</c:if>
															</h4>
															<br> <br> <span class="schedule-span">
															<c:if test="${gmtl.boardmap=='y'}">
															<a href="schedulemaps.net?groupkey=${groupkey }&postkey=${gmtl.postKey}">장소:
																${gmtl.location} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="orange"><i class="fas fa-map-marked-alt"></i> 모임장소 및 경로(코스)가 링크되어 있습니다!</span></a>
															</c:if>	
															<c:if test="${gmtl.boardmap=='n'}">
															장소: ${gmtl.location}
															</c:if>	
																</span>
															<c:if test="${gmtl.joinbtn eq 'yes'}">
																<c:if test="${gmtl.cmoneytype=='M'}">
																<button type="button" class="mtr-btn forJoinBtn gmtljoinbtn">
																	<span>신청하기</span>
																</button>
																<input type="hidden" value="${gmtl.cmoneytype}">
																</c:if>
																<c:if test="${gmtl.cmoneytype=='S'}">
																<button type="button" class="mtr-btn forJoinBtn gmtljoinbtn">
																	<span>참여하기</span>
																</button>
																<input type="hidden" value="${gmtl.cmoneytype}">
																</c:if>
															</c:if>
															<c:if test="${gmtl.joinbtn eq 'no'}">
																<c:if test="${gmtl.cmoneytype=='M'}">
																<button type="button" class="mtr-btn forJoinBtn gmtlcancelbtn">
																	<span>신청취소</span>
																</button>
																<input type="hidden" value="${gmtl.cmoneytype}">
																</c:if>
																<c:if test="${gmtl.cmoneytype=='S'}">
																<button type="button" class="mtr-btn forJoinBtn gmtlcancelbtn">
																	<span>취소하기</span>
																</button>
																<input type="hidden" value="${gmtl.cmoneytype}">
																</c:if>
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
																<c:forEach var="gml" items="${groupmemberlist}">
																	<li>
																		<figure>
																			<img
																				src="resources/images/resources/friend-avatar.jpg"
																				alt="">
																		</figure>
																		<div class="friendz-meta">
																			<a href="time-line.html"></a>${gml.groupnickname } <i
																				class="__cf_email__">&nbsp;</i>
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
									</c:if>
									<c:if test="${empty groupmeetinglist }">
										<div class="text-align-center">
										<span>예정된 모임이 없습니다</span>
										</div>
									</c:if>
								</ul>
								<!-- photos -->
							</div>
							<!-- 그룹 정모 예정 목록 -->

							<!-- 그룹 정모 후기 목록 -->
							<div class="central-meta item">
							<div class="groups">
								<span><i class="fa fa-users"></i>최근 정모 후기</span>
								</div>
								<br>
								<c:if test="${empty post }">
								후기글이 없습니다
								</c:if>
								<c:if test="${not empty post }">
								<div class="user-post">
										<div class="friend-info">
											<!-- ---------------------------------------- -->
											<!-- 유저 클릭하면 모임 회원 상세 정보 페이지로 넘어가게 하기 위한 폼 -->
											<form name="memDetail">
												<input type="hidden" name="userkey" value=""> 
												<input type="hidden" name="groupkey" value="">
											</form>
											<!-- ---------------------------------------- -->

											<!-- ---------------------------------------- -->
											<!-- 댓글을 달았을 때 사용할 key -->
											<input type="hidden" id="detailGroupKey" name="groupkey" value="${groupkey}"> 
											<input type="hidden" id="detailPostKey" name="postkey" value="${postkey}">
											<!-- ---------------------------------------- -->

											<figure>
												<!-- 작성자 -->
												<a href="javascript:memDetail(${groupkey},${post.userKey})">
													<c:if test="${post.profileFile == null}">
														<img src="resources/images/default.png" class="group-img" alt="" />
													</c:if> 
													<c:if test="${post.profileFile != null}">
														<img src="<spring:url value='/image${post.profileFile}'/>" class="group-img" alt="" />
													</c:if>
												</a>
											</figure>
											<input type="hidden" id="thisboardkey" value="${post.boardKey }">
											<input type="hidden" id="thisboardtype" value="H">
											<div class="friend-name">
												<ins>${post.postTitle}</ins>
												<span> <b>작성자 : ${post.groupNickname}</b> | ${post.postDate} 
													<c:if test="${userkey == post.userKey||userinfo.userGrade==1}">
														<i class="far fa-trash-alt float-rightgo bdeletebtn"></i>
														<input type="hidden" value="${post.postKey} ">
														<i class="fas fa-eraser float-rightgo rightmargingo bupdatebtn"></i>
													</c:if>
												</span>
											</div>
											<div class="description">
												<p>${post.postContent}</p>
											</div>
											<div class="post-meta">
												<div class="we-video-info">
													<ul>
														<!-- 조회수 -->
														<li>
															<span class="views" data-toggle="tooltip" title="views"> <i class="fa fa-eye"></i> 
																<ins>${post.postReadcount}</ins>
															</span>
														</li>
														<!-- 댓글수 -->
														<li>
															<span class="comment" data-toggle="tooltip" title="Comments"><i class="far fa-comment-dots"></i>
																<!-- 빈 말풍선 --> <!-- <i class="fas fa-comment-dots"></i> -->
																<!-- 말풍선 --> 
																<ins>${post.replyCount}</ins>
															</span>
														</li>
														<!-- 좋아요수 -->
														<li>
															<span class="like" data-toggle="tooltip" title="like"> 
															<input type="hidden" id="isLiked" value="${isLiked}"> 
															<!-- 현재 회원이 좋아요 눌렀을 경우  -->
															<c:if test="${isLiked == 1}">
																<i class="fas fa-heart"></i><!-- 하트 -->
															</c:if> 
															<!-- 현재 회원이 좋아요 안 눌렀을 경우 -->
															 <c:if test="${isLiked == 0}">
																<i class="far fa-heart"></i><!-- 빈하트 -->
															</c:if> 
															<ins>${post.postlike}</ins>
															</span>
														</li>
													</ul>
												</div>
											</div>
										</div>
										
										<div class="coment-area">
										<!-- ################################################################### -->
											<c:set var="before" value="0" />
											<ul class="we-comet">
												<c:forEach var="c" items="${comment}">
													<!-- 댓글 -->
													<!-- ************************************************ -->
													
													<!-- 전체공개 댓글 - 그냥 조건 없이 쫙 뽑는다. -->
													<c:if test="${c.commentshow == 0}">
														<c:if test="${c.commemtReRef != before && before > 0}">
															</li>
														</c:if>
														<c:if test="${c.commemtReRef != before}">
															<li>
																<div class="comet-avatar">
																	<!-- 회원 프사 없을 경우 -->
																	<c:if test="${c.profileFile == null}">
																		<img src="resources/images/default.png" class="group-img" alt="" />
																	</c:if>
																	<!-- 회원 프사 있을 경우 -->
																	<c:if test="${c.profileFile != null}">
																		<img src="<spring:url value='/image${c.profileFile}'/>" class="group-img" alt="" />
																	</c:if>
																</div>
																<div class="we-comment">
																	<div class="coment-head">
																		<h5>
																			<a href="javascript:memDetail(${groupkey},${c.userKey})" title="">${c.groupNickname}</a>
																		</h5>
																		<span>${c.commentDate}</span> 
																		<a class="we-reply" href="javascript:commentReply(${c.commnetNum})" title="Reply"> 
																			<i class="fa fa-reply"></i>
																		</a>
																		<!-- 댓쓴 본인이어야만 수정/삭제 보이게 -->
																		<c:if test="${loginuser == c.userKey}">
																			<a class="update"
																				href="javascript:updateReply(${c.commnetNum})"
																				title="Update"> <i class="fas fa-eraser"></i>
																			</a>
																			<a class="delete"
																				href="javascript:deleteReply(${c.commnetNum})"
																				title="Delete"> <i class="far fa-trash-alt"></i>
																			</a>
																		</c:if>
																	</div>
																	<p>${c.commentContent}</p>
																</div> 
														</c:if>
														<!-- 원문글에 대한 댓글 -->
														<c:if test="${c.commemtReRef == before}">
															<ul>
																<li>
																	<div class="comet-avatar">
																		<!-- 회원 프사 없을 경우 -->
																		<c:if test="${c.profileFile == null}">
																			<img src="resources/images/default.png" class="group-img" alt="" />
																		</c:if>
																		<!-- 회원 프사 있을 경우 -->
																		<c:if test="${c.profileFile != null}">
																			<img src="<spring:url value='/image${c.profileFile}'/>" class="group-img" alt="" />
																		</c:if>
																			</div>
																			<div class="we-comment">
																				<div class="coment-head">
																					<h5>
																						<a href="javascript:memDetail(${groupkey},${c.userKey})" title="">${c.groupNickname}</a>
																					</h5>
																					<span>${c.commentDate}</span> <a class="we-reply"
																						href="javascript:commentReply(${c.commnetNum})"
																						title="Reply"> <i class="fa fa-reply"></i>
																					</a>
																					<!-- 댓쓴 본인이어야만 수정/삭제 보이게 -->
																					<c:if test="${loginuser == c.userKey}">
																						<a class="update"
																							href="javascript:updateReply(${c.commnetNum})"
																							title="Update"> <i class="fas fa-eraser"></i>
																						</a>
																						<a class="delete"
																							href="javascript:deleteReply(${c.commnetNum})"
																							title="Delete"> <i class="far fa-trash-alt"></i>
																						</a>
																					</c:if>
																				</div>
																				<p>${c.commentContent}</p>
																			</div>
																		</li>
																	</ul>
															    </c:if>
															<!-- 원문글 끝 -->
													</c:if>
													<!-- 전체공개 댓글 끝 -->
													
													<!-- 비밀공개 댓글 - 로그인한 사람이 글쓴이거나 댓쓴이여야 보인다. -->
													<c:if test="${c.commentshow == 1}">
														<c:if test="${c.commemtReRef != before && before > 0}">
															</li>
														</c:if>
														<!-- 원문글 -->
														<c:if test="${c.commemtReRef != before}">
														<!-- ## 로그인한 유저가 글쓴이거나 댓쓴이일 때 ## -->
														<c:if test="${loguser == c.userKey || loginuser == post.userKey}">
															<li>
																<div class="comet-avatar">
																	<!-- 회원 프사 없을 경우 -->
																	<c:if test="${c.profileFile == null}">
																		<img src="resources/images/default.png"
																			class="group-img" alt="" />
																	</c:if>
																	<!-- 회원 프사 있을 경우 -->
																	<c:if test="${c.profileFile != null}">
																		<img src="<spring:url value='/image${c.profileFile}'/>"
																			class="group-img" alt="" />
																	</c:if>
																</div>
																<div class="we-comment">
																	<div class="coment-head">
																		<h5>
																			<a
																				href="javascript:memDetail(${groupkey},${c.userKey})"
																				title="">${c.groupNickname}</a>
																		</h5>
																		<span>${c.commentDate}</span> <a class="we-reply"
																			href="javascript:commentReply(${c.commnetNum})"
																			title="Reply"> <i class="fa fa-reply"></i>
																		</a>
																		<!-- 댓쓴 본인이어야만 수정/삭제 보이게 -->
																		<c:if test="${loginuser == c.userKey}">
																			<a class="update"
																				href="javascript:updateReply(${c.commnetNum})"
																				title="Update"> <i class="fas fa-eraser"></i>
																			</a>
																			<a class="delete"
																				href="javascript:deleteReply(${c.commnetNum})"
																				title="Delete"> <i class="far fa-trash-alt"></i>
																			</a>
																		</c:if>
																	</div>
																	<p>${c.commentContent}</p>
																</div>
															</c:if>
															<!-- 원문글 끝 -->
															<!-- 원문글에 대한 댓글 -->
															<c:if test="${c.commemtReRef == before}">
																<ul>
																	<!-- ## 로그인한 유저가 글쓴이거나 댓쓴이가 아닐 때 ## -->
																	<li>
																		<div class="comet-avatar">
																			<!-- 회원 프사 없을 경우 -->
																			<c:if test="${c.profileFile == null}">
																				<img src="resources/images/default.png"
																					class="group-img" alt="" />
																			</c:if>
																			<!-- 회원 프사 있을 경우 -->
																			<c:if test="${c.profileFile != null}">
																				<img src="<spring:url value='/image${c.profileFile}'/>"
																					class="group-img" alt="" />
																			</c:if>
																		</div>
																		<div class="we-comment">
																			<div class="coment-head">
																				<h5>
																					<a
																						href="javascript:memDetail(${groupkey},${c.userKey})"
																						title="">${c.groupNickname}</a>
																				</h5>
																				<span>${c.commentDate}</span>
																			</div>
																			<button type="button" class="secretbtn">
																				<i class="fas fa-lock" aria-hidden="true"></i>
																			</button>
																			<p style="display: inline-block">비밀 댓글 입니다.</p>
																		</div>
																	</li>
																</ul>	
														</c:if>
													</c:if>
													</c:if>
													<!-- 비밀댓글 끝 -->
													<c:set var="before" value="${c.commemtReRef}" />
												</c:forEach>
											<!-- 댓글 -->

												<!-- 댓글 등록 부분 -->
												<li class="post-comment">
													<div class="comet-avatar">
														<!-- 현재 로그인한 회원의 프사가 있는지에 따라 사진 지정하는 부분 -->
														<c:if test="${mem.profileFile == null}">
															<img src="resources/images/default.png" class="group-img" alt="" />
														</c:if>
														<c:if test="${mem.profileFile != null}">
															<img src="<spring:url value='/image${mem.profileFile}'/>"
																class="group-img" alt="" />
														</c:if>
													</div>
													<div class="post-comt-box">
														<!-- 댓글 등록 -->
														<form method="post" id="ReplyAction"
															onSubmit="return false;">
															<!-- 답댓일 경우 원문댓글의 댓글번호 저장 -->
															<input type="hidden" name="commentNum" value="">
															<!-- 비밀댓글(1), 전체공개 댓글(0) -->
															<input type="hidden" name="commentshow" value="">
															<input type="hidden" name="commentType" value="0">

															<!-- 댓글 입력부분 -->
															<textarea placeholder="Post your comment"></textarea>

															<!-- 기본적으로 전체공개 댓글 -->
															<button type="button" class="secretbtn">
																<i class="fas fa-unlock" aria-hidden="true"></i>
															</button>
															<button type="submit" class="glyphicon glyphicon-send"></button>
														</form>
													</div>
												</li>
												<!-- 댓글 등록 부분 -->
											</ul>
										</div>
									</div>
								</c:if>
							</div>
							<!-- 그룹 정모 후기 목록 -->

						</div>
						<!-- 그룹 페이지 위젯 중간 -->

						<!-- 그룹 페이지 위젯 오른쪽 -->
						<div class="col-lg-3">
							<aside class="sidebar static">
								<jsp:include page="group_rightWidget.jsp" />
							</aside>
						</div>
						<!-- 그룹 페이지 위젯 오른쪽 -->

					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<jsp:include page="../mainpage/footer.jsp" />

<script>
	// 가입하기 버튼 클릭 시 이동
	$('#joinBtn').click(function(){
		location.href = 'signGroup?groupkey=' + $('#thisGroupKey').val();
	});
</script>
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
		var btoday = today.getMonth();
		today = new Date(today.getFullYear(), today.getMonth()+1, today
				.getDate());
		var atoday = today.getMonth();
		if(atoday-btoday==2){
			today = new Date(today.getFullYear(), today.getMonth()-1, today
					.getDate());
		}
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
				+ (today.getMonth()+1) + "월";
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
buildCalendar();
$(function() {
	var mycalendarlistcount = $('#gclc').val();
	for(var i = 1; i<=mycalendarlistcount;i++){
		var temp = $('#cal'+i).val();
		$('#day'+temp).parent().addClass('calendarCellMy');
	}
	$(".bupdatebtn").click(function(){
		var groupkey = $('#thisGroupKey').val();
		var postkey = $(this).prev().val();
		var boardkey = $('#thisboardkey').val();
		var boardtype = $('#thisboardtype').val();
		location.href="groupin_group_updateBoard.net?groupkey="+groupkey+"&postkey="+postkey+"&boardkey="+boardkey+"&boardtype="+boardtype;
	})
	$(".bdeletebtn").click(function(){
		var test = confirm("정말 삭제하시겠습니까?");
		if (test==true){
			var groupkey = $('#thisGroupKey').val();
			var postkey = $(this).next().val();
			var boardkey = $('#thisboardkey').val();
			var boardtype = $('#thisboardtype').val();
			location.href="groupin_group_deleteBoard.net?groupkey="+groupkey+"&postkey="+postkey+"&boardkey="+boardkey+"&boardtype="+boardtype;
		}
	})
	
	$(".forLoginBtn").click(function(){
		location.href="login";
	})
	$(".forLoginBtnx").click(function(){
		location.href="login";
	})
	$("#calendar").on('click', '#prevcal', function(event) {
		var userkey = $('#UserKey').val();
		prevCalendar();
		var date = $('#tbCalendarYM').text();
		ajaxcallist(userkey,date);
		$('#shortschedule').empty();
		if(userkey ==-1){
			$('#shortschedule').append('<li><span>로그인 해주세요</span></li>');
		}else{
			$('#shortschedule').append('<li><span>날짜를 선택하세요</span></li>');
		}
		
    })
    
    $("#calendar").on('click', '#nextcal', function(event) {
    	var userkey = $('#UserKey').val();
    	nextCalendar();
    	var date = $('#tbCalendarYM').text();
    	ajaxcallist(userkey,date);
    	$('#shortschedule').empty();
    	if(userkey ==-1){
			$('#shortschedule').append('<li><span>로그인 해주세요</span></li>');
		}else{
			$('#shortschedule').append('<li><span>날짜를 선택하세요</span></li>');
		}
    })
    
    
	$(".nearby-contct").on('click', '.gmtljoinbtn', function(event) {
		var userkey = $('#UserKey').val();
		var date = $('#tbCalendarYM').text();
		if (userkey!=-1){
		var cmoneytype =  $(this).next().val();
		var postkey = $(this).next().next().val();
        var n = $(this).next().next().next().val();
        var groupkey = $('#thisGroupKey').val();
        ajaxcallist(userkey,date);
        ajaxJoinBtn(postkey, groupkey, userkey, n, cmoneytype);
        $(this).removeClass('gmtljoinbtn');
        $(this).addClass('gmtlcancelbtn');
       	 if(cmoneytype=='M'){
        	$(this).children().html('신청취소');
       	 }else{
        	$(this).children().html('취소하기');
       	 }
		}else{
			alert("로그인 해주세요 ");
		}
    })

    
    $(".nearby-contct").on('click', '.gmtlcancelbtn', function(event) {
        var userkey = $('#UserKey').val();
        if (userkey!=-1){
        var postkey = $(this).next().next().val();
        var n = $(this).next().next().next().val();
        var groupkey = $('#thisGroupKey').val();
        var cmoneytype =  $(this).next().val();
        ajaxJoinCancelBtn(postkey, groupkey, userkey, n);
        $(this).removeClass('gmtlcancelbtn');
        $(this).addClass('gmtljoinbtn');
        if(cmoneytype=='M'){
        	$(this).children().html('신청하기');
        }else{
        	$(this).children().html('참여하기');
        }
        }else{
			alert("로그인 해주세요 ");
		}
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
            	if(userkey ==-1){
        			$('#shortschedule').append('<li><span>로그인 해주세요</span></li>');
        		}else{
        			$('#shortschedule').append('<li><span>일정이 없습니다</span></li>');
        		}
            }
        }
    })
    
    
    
    $(".forMemberCountBtnOne").click(function() {
    	var postkey = $(this).next().val();
    	console.log(postkey);
        var n = $(this).next().next().val();
        var groupkey = $('#thisGroupKey').val();
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
        var groupkey = $('#thisGroupKey').val();
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
        var groupkey = $('#thisGroupKey').val();
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
        alert("1");
    	$('#groupMainImgForm').submit();
    });
    $('input[type=file]:eq(1)').on('change', function() {
    	alert("1");
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
                        output += "<i class='__cf_email__'>&nbsp;</i></div></li>";
                    })
                $("#" + empty).append(output);
            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end
    function ajaxJoinBtn(postkey, groupkey, userkey, n, cmoneytype) {
        output = "";
        var data = "postkey=" + postkey + "&groupkey=" + groupkey + "&userkey=" + userkey+ "&cmoneytype=" + cmoneytype;
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
                        output += "<i class='__cf_email__'>&nbsp;</i></div></li>";
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
                        output += "<i class='__cf_email__'>&nbsp;</i></div></li>";
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
                        output += "<i class='__cf_email__'>&nbsp;</i></div></li>";
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
        console.log(userkey);
        console.log(date);
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
                        	output += "<li><span><a href='group_main.net?groupkey="+item.groupkey+"'>"+item.posttitle+"</a></span>";
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

