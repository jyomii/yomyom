<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- 그룹 로그인 위젯 -->

								<c:if test="${userkey==-1}">
								<div class="widget logincenter">
								<div class="logindiv">
									<span class="logintitle">GroupIn의 서비스를 이용하시려면 로그인 해주세요</span></div>
									<!--<hr class="logintitlehr">  -->
									<div class="your-page leftrightwidth">
										<div class="submit-btns forSubmitBtnDiv">
											<button type="submit" class="mtr-btn forLoginBtn">
												<span>GroupIn 로그인</span>
											</button>
										</div>
										<span class="loginleft forLoginBtnx"><a href="login">비밀번호 찾기</a></span>
										<span class="loginright forLoginBtnx"><a href="login">회원가입</a></span>
									</div>
								</div>
								</c:if>
								<!-- 그룹 로그인 위젯 -->
								<c:if test="${userkey!=-1}">
								<!-- 그룹 나의 정보 위젯 -->
								<div class="widget">
									<h4 class="widget-title">나의 정보</h4>
									<div class="your-page your-page-groupListDiv" style="height:378px">
										<figure class="figure-myimg">
											<a href="#" title=""><img class="figure-myimg1"
												src="resources/images/resources/friend-avatar9.jpg" alt=""></a>
										</figure>
										<div class="page-meta page-metaclass">
											<a href="#" title="" class="underline">${userinfo.groupNickname}</a>
											<span>가입일 : ${userinfo.regdate}</span>
											<span><i class="far fa-bell"></i>알림 </span>
												<a href=""><span><i class="far fa-file-alt commentmargin"></i>내가 쓴 글 보기 </span></a>
												<a href=""><span><i class="far fa-comment"></i>내가 쓴 댓글 보기 </span></a>
										</div>
										<div class="page-likes">
											<ul class="nav nav-tabs likes-btn">
												<li class="nav-item"><a class="active" href="#link1"
													data-toggle="tab">가입모임목록</a></li>
												<li class="nav-item"><a class="" href="#link2"
													data-toggle="tab">모임즐겨찾기</a></li>
											</ul>
											<!-- Tab panes -->
											<div class="tab-content">
												<div class="tab-pane active fade show" id="link1">
													<div>
														<ul class="your-page-groupList leftpadding">
															<c:if test="${not empty userreggroup }">
															<c:forEach var="urg" items="${userreggroup }">
																<li><img
																	src="resources/images/resources/userlist-1.jpg" class="imground"><a href="#">${urg.groupname }</a><br><hr class="hrmargin"></li>
															</c:forEach>
															</c:if>
															<c:if test="${empty userreggroup }">
																<li>가입된 모임이 없습니다.</li>
															</c:if>
														</ul>
												<c:if test="${userreggroupcount>3 }">		
												<div class="row row-pagination" style="padding-top:0px !important;">
													<div class="col">
														<ul class="pagination pagination-sm center-pagination"
															id="pempty">
															<li class="page-item widthpagination"><a class="page-link" href="#">이전&nbsp;</a>
															</li>

															<li class="page-item widthpagination"><a class="page-link" href="#">&nbsp;다음</a>
															</li>
														</ul>
													</div>
												</div>
												</c:if>
													</div>
												</div>
												<div class="tab-pane fade" id="link2">
													<div>
														<ul class="your-page-groupList leftpadding">
															<li><img
																	src="resources/images/resources/userlist-1.jpg" class="imground"><a href="#">동.탁</a><br><hr class="hrmargin"></li>
															
															<li><img
																	src="resources/images/resources/userlist-1.jpg" class="imground"><a href="#">동.탁</a><br><hr class="hrmargin"></li>
															
															<li><img
																	src="resources/images/resources/userlist-1.jpg" class="imground"><a href="#">동.탁</a></li>
														</ul>
												<div class="row row-pagination" style="padding-top:0px !important;">
													<div class="col">
														<ul class="pagination pagination-sm center-pagination"
															id="pempty">
															<li class="page-item widthpagination"><a class="page-link" href="#">이전&nbsp;</a>
															</li>

															<li class="page-item widthpagination"><a class="page-link" href="#">&nbsp;다음</a>
															</li>
														</ul>
													</div>
												</div>		
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								</c:if>
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
											<c:if test="${userkey==-1}">
												<li><span>로그인 해주세요</span></li>
											</c:if>
										
											<c:if test="${userkey!=-1}">
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
											</c:if>
										</ul>
									</div>

								</div>
								<!-- 그룹별 정모 나의 일정 위젯 -->