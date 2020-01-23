<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../mainpage/header.jsp" />
	
		<section>
		<div class="feature-photo">
			<figure><img src="resources/images/resources/timeline-1.jpg" alt=""></figure>
		
			<form class="edit-phto">
				<i class="fa fa-camera-retro"></i>
				<label class="fileContainer">
					배경 사진 변경
				<input type="file"/>
				</label>
			</form>
			<div class="container-fluid">
				<div class="row merged">
					<div class="col-lg-2 col-sm-3">
						<div class="user-avatar">
							<figure>
								<img src="resources/images/resources/user-avatar.jpg" alt="">
								<form class="edit-phto">
									<i class="fa fa-camera-retro"></i>
									<label class="fileContainer">
										프로필 사진 변경
										<input type="file"/>
									</label>
								</form>
							</figure>
						</div>
					</div>
					<div class="col-lg-10 col-sm-9">
						<div class="timeline-info">
							<ul>
								<li class="admin-name">
								  <h5>이지연</h5>
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
											<p>관심있는 카테고리를 선택하세요^^.</p>
											<form method="post" action="interests">
												<label>관심사 추가: </label>
												<input type="text" placeholder="운동, 여행, 독서">
												<button type="submit">추가</button>
												<ol class="interest-added">
													<li><a href="#" title="">자전거</a><span class="remove" title="remove"><i class="fa fa-close"></i></span></li>
													<li><a href="#" title="">여행</a><span class="remove" title="remove"><i class="fa fa-close"></i></span></li>
													<li><a href="#" title="">독서</a><span class="remove" title="remove"><i class="fa fa-close"></i></span></li>
													<li><a href="#" title="">음악</a><span class="remove" title="remove"><i class="fa fa-close"></i></span></li>
													<li><a href="#" title="">공연</a><span class="remove" title="remove"><i class="fa fa-close"></i></span></li>
													<li><a href="#" title="">축구</a><span class="remove" title="remove"><i class="fa fa-close"></i></span></li>
												</ol>
												<div class="submit-btns">
													<button type="button" class="mtr-btn" onclick='location.href="mypage"'><span>취소</span></button>
													<button type="button" class="mtr-btn"><span>수정</span></button>
												</div>
											</form>
										</div>
									</div>	
								</div><!-- centerl meta -->
								<div class="col-lg-3">
									<aside class="sidebar static">
								<div class="widget">
									<div class="editing-interest">
										<h4 class="widget-title"><i class="ti-bell"></i>최근 쪽지 </h4>
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
    </script>
</body>	

</html>