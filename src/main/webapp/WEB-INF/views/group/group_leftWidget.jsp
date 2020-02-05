<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="widget">

									<h4 class="widget-title">게시판</h4>
									<ul class="naves">
										<c:forEach var="gbl" items="${groupboardlist }">
											<li><i class="ti-clipboard"></i> <input type="hidden"
												value="${gbl.boardType }">
												
												<a href="groupin_group_board_transfer.net?groupkey=${group.groupKey }&boardkey=${gbl.boardKey }&boardtype=${gbl.boardType}&boardname=${gbl.boardName}"
												title="">${gbl.boardName}</a>
												<input type="hidden" id="bn${gbl.boardSeq }" value="${gbl.boardName }">
												<input type="hidden" id="bk${gbl.boardSeq }" value="${gbl.boardKey }">
												<input type="hidden" id="bt${gbl.boardSeq }" value="${gbl.boardType }">
												</li>
										</c:forEach>
									</ul>
								</div>
								<!-- 그룹 게시판 위젯 -->

								<!-- 모임 관리 게시판 위젯 -->
								<c:if test="${userinfo.userGrade==1}">
								<div class="widget">
									<h4 class="widget-title">모임 관리</h4>
									<ul class="naves">
										<li><i class="ti-info-alt"></i> <a href="groupin_group_admin.net?groupkey=${group.groupKey }"
											title="">모임 기본 설정</a></li>
										<li><i class="ti-mouse-alt"></i> <a
											href="groupin_group_admin_scheduleList.net?groupkey=${group.groupKey }" title="">모임 일정 관리</a></li>
										<li><i class="ti-heart"></i> <a href="#"
											title="">모임 회원 관리</a></li>
										<li><i class="ti-settings"></i> <a
											href="groupin_group_admin_board.net?groupkey=${group.groupKey }" title="">모임 게시판 관리</a></li>
									</ul>
								</div>
								</c:if>
								<!-- 모임 관리 게시판 위젯 -->

								<!-- 그룹 카톡방 위젯 -->
								<c:if test="${not empty group.groupkatalk }">
								<div class="widget">
									<div class="banner medium-opacity">
									
										<div
											style="background-image: url(resources/images/katalk.jpg)"
											class="bg-image"></div>
										<!--  <div class="baner-top">
													<span><img src="resources/images/book-icon.png"
														alt=""></span> <i class="fa fa-ellipsis-h"></i>
												</div>-->
										<div class="banermeta">
											<p class="katalkbtnw">
												그룹 카카오톡<br>채팅방에<br>참여하세요!
											</p>
											<!--<span>like them all</span>-->
											<a href="#" title="" data-ripple="" class="katalkbtn">카톡방 참여하기</a>
										</div>
									</div>
								</div>
								</c:if>
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