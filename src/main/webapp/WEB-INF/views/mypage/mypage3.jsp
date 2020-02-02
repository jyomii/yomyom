<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 

<jsp:include page="../mainpage/header.jsp" />
	
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
	</section><!-- top area -->

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
										<li>
											<i class="ti-info-alt"></i>
											<a title="" class="jungbo">기본 정보</a>
										</li>
										<li>
											<i class="ti-heart"></i>
											<a title="" class="gss">관심사</a>
										</li>
										
									</ul>
								</div>
										<div class="widget">
											<h4 class="widget-title">최근 참가한 모임</h4>
											<ul class="activitiez">
												<li>
													<div class="activity-meta">
														<i>2019-12-27</i>
														<span><a href="#" title="">2019 슬픔의 케이팝 파티</a></span>
														<h6>by <a href="time-line.html">케즐모</a></h6>
													</div>
												</li>
												<li>
													<div class="activity-meta">
														<i>2019-11-19</i>
														<span><a href="#" title="">남양주 북한강 라이딩 정모</a></span>
														<h6>by <a href="time-line.html">자연이 좋다!!!</a></h6>
													</div>
												</li>
												<li>
													<div class="activity-meta">
														<i>2019-10-30</i>
														<span><a href="#" title="">알고리즘 스터디</a></span>
														<h6>by<a href="#">나는 나는 개발자</a></h6>
													</div>
												</li>
											</ul>
										</div><!-- recent activites -->						
								</aside>
							</div><!-- sidebar -->
								<div class="col-lg-6">
									<div class="central-meta">
										<div class="editing-interest">
											<h5 class="f-title"><i class="ti-heart"></i>나의 관심사</h5>
											
											<div class="tab-pane fade" id="interest" role="tabpanel">
														<ul class="basics">
															<c:forEach var="userInterest" items="${userInterest}">
															<li>${userInterest.SCategoryName}</li>
															</c:forEach>
														</ul>
											</div>
										
												<label>관심사 수정</label>

												<form method="post" action="interests">
												
													<input type="hidden" id="category" name="categoryKey">
													<div class="d-flex flex-row mt-2">
														<ul class="nav nav-tabs nav-tabs--vertical nav-tabs--left">
															<c:forEach items="${Dcategory}" var="list" varStatus="status">
																<li class="nav-item"><c:choose>
																		<c:when test="${status.count == 1}">
																			<a href="#${list.DCategoryKey}"
																				class="nav-link active" data-toggle="tab">${list.DCategoryName }</a>
																		</c:when>
																		<c:otherwise>
																			<a href="#${list.DCategoryKey}" class="nav-link"
																				data-toggle="tab">${list.DCategoryName }</a>
																		</c:otherwise>
																	</c:choose></li>
															</c:forEach>
														</ul>
														<div class="tab-content">
															<c:forEach items="${Dcategory}" var="list" varStatus="status">
																<c:choose>
																	<c:when test="${status.count == 1}">
																		<div class="tab-pane fade show active" id="${list.DCategoryKey}">
																	</c:when>
																	<c:otherwise>
																		<div class="tab-pane fade show"	id="${list.DCategoryKey}">
																	</c:otherwise>
																</c:choose>
																<ul class="${list.DCategoryKey}">
																	<c:forEach items="${scategory}" var="item">
																		<c:if
																			test="${list.DCategoryKey ==  item.DCategoryKey}">
																			<li><input type="hidden"
																				value="${item.SCategoryKey}">${item.SCategoryName}</li>
																		</c:if>
																	</c:forEach>
																</ul>
																</c:forEach>
														</div>
													</div>
													<div class="submit-btns">
													<button type="button" class="mtr-btn"><span>수정</span></button>
													<button type="button" class="mtr-btn" onclick='location.href="mypage"'><span>취소</span></button>
												</div>
											</form>
										</div>
									</div>	
								</div><!-- centerl meta -->
								<div class="col-lg-3">
									<aside class="sidebar static">
							
								<div class="widget">
											<h4 class="widget-title"><i class="ti-bell"></i>최근 알림</h4>
											<ul class="activitiez">
												<li>
													<div class="activity-meta">
														<i>1시간 전</i>
														<span><a href="#" title="">새로운 공지사항이 올라왔습니다. </a></span>
														<h6>by <a href="time-line.html">케즐모</a></h6>
													</div>
												</li>
												<li>
													<div class="activity-meta">
														<i>3시간 전</i>
														<span><a href="#" title="">새로운 일정이 등록되었습니다.</a></span>
														<h6>by <a href="time-line.html">자연이 좋다!!!</a></h6>
													</div>
												</li>
												<li>
													<div class="activity-meta">
														<i>2일 전</i>
														<span><a href="#" title="">가입이 승인되었습니다.</a></span>
														<h6>by<a href="#">365일 춤만 출래 예예예 미러미러미러</a></h6>
													</div>
												</li>
											</ul>
										</div><!-- recent activites -->
								</aside>
								</div><!-- sidebar -->
							</div>	
						</div>
					</div>
				</div>
			</div>	
		</section>

		
    <jsp:include page="../mainpage/footer.jsp" />
	
    <script>
    //회원 정보 수정 이동
	$(".jungbo").click(function(){
		location.href="mypage2";
	});
	
	//회원 관심사 수정 이동
	$(".gss").click(function(){
		location.href="mypage3";
	});
	
	
	var checkCategory = false;

	//카테고리 등록
	$('.tab-content li').click(function() {

		checkCategory = true;
		//카테고리 값 저장
		$('#category').val($(this).children('input').val());

		$('.tab-content li').removeClass('tabcontentClick');
		$(this).addClass('tabcontentClick');

	});

    </script>
</body>	

</html>