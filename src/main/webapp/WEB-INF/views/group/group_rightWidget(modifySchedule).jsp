<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- 그룹 로그인 위젯 -->
								<c:if test="${modifycalendar.cmoneytype =='M'}">
								<div class="widget friend-list">
											<h4 class="widget-title">회비 참석자 관리</h4>
											<div class="frnds">
												<ul class="nav nav-tabs">
													<li class="nav-item forMoneyList forMoneyListLeft"><a
														class="active" href="#frends" data-toggle="tab">신청자</a> <span class="foremptyscount1">${smodifymembercountm}</span></li>
													<li class="nav-item forMoneyList"><a class=""
														href="#frends-req" data-toggle="tab">참석자</a><span class="foremptymcount">${smodifymembercount}</span></li>
												</ul>
												<div class="tab-content">
													<div class="tab-pane active fade show " id="frends">
														<div id="searchDir1"></div>
														<ul id="people-list1" class="checkboxList foremptys1">
															<c:forEach var="mmm" items="${smodifymemberm}">
															<li>
																<figure>
																	<img src="resources/images/resources/friend-avatar.jpg"
																		alt="">
																</figure>
																<div class="friendz-meta">
																	<div class="checkbox">
																		<label> 
																		<input type="hidden" value="${mmm.userkey }">
																		<input type="checkbox" name="slist"><i
																			class="check-box"></i>${mmm.groupnickname }
																		</label>
																	</div>
																</div>
															</li>
															</c:forEach>
														</ul>
														<div class="submit-btns moneyConfirmBtnDiv">
															<button type="button" id="stomlistformsubmit" class="mtr-btn moneyConfirmBtn">
																<span>회비확인</span>
															</button>
															<button type="button" id="slistformsubmit" class="mtr-btn moneyConfirmBtn1">
																<span>모임제외</span>
															</button>
														</div>
													</div>


													<div class="tab-pane fade" id="frends-req">
														<div id="searchDir2"></div>
														<ul id="people-list2" class="checkboxList foremptym">
															<c:forEach var="mm" items="${smodifymember}">
															<li>
																<figure>
																	<img src="resources/images/resources/friend-avatar.jpg"
																		alt="">
																</figure>
																<div class="friendz-meta">
																	<div class="checkbox">
																		<label> 
																		<input type="hidden" value="${mm.userkey }">
																		<input type="checkbox" name="mlist"><i
																			class="check-box"></i>${mm.groupnickname }
																		</label>
																	</div>
																</div>
															</li>
															</c:forEach>
														</ul>
														<div class="submit-btns moneyConfirmBtnDiv">
															<button type="button" id="mtoslistformsubmit" class="mtr-btn moneyConfirmBtn">
																<i class="fas fa-angle-double-left color-white"></i><span>신청자명단으로</span>
															</button>
															<button type="button" id="mlistformsubmit" class="mtr-btn moneyConfirmBtn1">
																<span>모임제외</span>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
										</c:if>
										
										<c:if test="${modifycalendar.cmoneytype =='S'}">
										<div class="widget friend-list">
											<h4 class="widget-title">회비 참석자 관리</h4>
											<div class="frnds">
												<ul class="nav nav-tabs">
													<li class="nav-item forMoneyList forMoneyListbtnPart"><a class="active show"
														href="#frends-req">참석자</a><span>${smodifymembercount}</span></li>
												</ul>
												<div class="tab-content">
													<div class="tab-pane active fade show " id="frends">
														<div id="searchDir3"></div>
														<ul id="people-list3" class="checkboxList">
															<c:forEach var="mm" items="${smodifymember}">
															<li>
																<figure>
																	<img src="resources/images/resources/friend-avatar.jpg"
																		alt="">
																</figure>
																<div class="friendz-meta">
																	<div class="checkbox">
																		<label>
																		<input type="hidden" value="${mm.userkey }">
																		<input type="checkbox" name="slist"><i
																			class="check-box"></i>${mm.groupnickname }
																		</label>
																	</div>
																</div>
															</li>
															</c:forEach>
														</ul>
														<div class="submit-btns moneyConfirmBtnDiv">
															<button type="button" id="slistformsubmit1" class="mtr-btn moneyConfirmBtn2">
																<span>모임제외</span>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
										</c:if>