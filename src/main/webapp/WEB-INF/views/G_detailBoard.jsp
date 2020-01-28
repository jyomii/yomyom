<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>      
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>       
<jsp:include page = "mainpage/header.jsp"/>
<!-- 게시글 페이지 - 글제목, 작성자, 내용, 댓글, 비밀댓글, 글 좋아요 개수, 댓글 개수 -->    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    
	<title>게시글 페이지</title>
	
    <link rel="icon" href="resources/images/fav.png" type="image/png" sizes="16x16"> 
    <link rel="stylesheet" href="resources/css/main.min.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/color.css">
    <link rel="stylesheet" href="resources/css/responsive.css">
    <!-- 댓글 등록 아이콘 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <!-- 자물쇠 아이콘 -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!-- 제이쿼리 -->
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <style>
    	.ySub {
    		display : inline-block; 
    		position : relative; 
    		width : 100%
    	}
    	b {
    		color : #c58d78
    	}
    	.post-comt-box form button {
    		width : 40px; 
    		height : 40px; 
    		color : black
    	}
    	.post-comt-box i {
    		float : right;
    		box-sizing : border-box;
    		margin-right : 10px;
    	}
    	.post-comt-box i:hover {
    		cursor : pointer
    	}
    	.ibtn {
    		top : 1px !important;
    		right : 30px !important;
    	}
    	button[type=submit] {
    		color : #088dcd !important;
    	}
    	.we-comment .ibtn {
    		color : #ed3939;
    		background : none;
    		border : none;
    	}
    </style>
    
    <script>
    	$(function(){
    		/* 비밀댓글 설정 */
    		var lock = false;	// 기본 unlock
    		$('.post-comt-box i').click(function() {
    			if (!lock) {	// lock
	    			$(this).removeClass('fa-unlock').addClass('fa-lock').css('color', '#ed3939b5');
	    			$('textarea').css('background', '#e1c2c2b5');
    			} else {	// unlock
	    			$(this).removeClass('fa-lock').addClass('fa-unlock').css('color', 'black');
	    			$('textarea').css('background', '#f3f3f3');
    			}
    			lock = !lock;
    		});
    		
    		/* 비밀댓글, 댓글 등록 버튼과 겹치지 않게 하기 위한 textarea 라인 당 글자수 제한 */
    		$('textarea').keyup(function(){
    			var len = $(this).val().length;
    			var str = $(this).val();
    			
    			if (str % 32 == 0) {
    				//var b = $(this).val(str + '\n');
    				//$(this).html(b.html.replace(/\n/g, '<br/>'));
    			}
    		});
    	})
    </script>
	<section>
		<div class="feature-photo">
			<figure><img src="resources/images/resources/timeline-1.jpg" alt=""></figure>
			<div class="add-btn">
				<span>1205 followers</span>
				<a href="#" title="" data-ripple="">Add Friend</a>
			</div>
			<form class="edit-phto">
				<i class="fa fa-camera-retro"></i>
				<label class="fileContainer">
					Edit Cover Photo
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
										Edit Display Photo
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
								  <h5>Janice Griffith</h5>
								  <span>Group Admin</span>
								</li>
								<li>
									<a class="active" href="time-line.html" title="" data-ripple="">time line</a>
									<a class="" href="timeline-photos.html" title="" data-ripple="">Photos</a>
									<a class="" href="timeline-videos.html" title="" data-ripple="">Videos</a>
									<a class="" href="timeline-friends.net" title="" data-ripple="">Friends</a>
									<a class="" href="timeline-groups.html" title="" data-ripple="">Groups</a>
									<a class="" href="about.html" title="" data-ripple="">about</a>
									<a class="" href="#" title="" data-ripple="">more</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section><!-- top area -->
	
	<!-- 위젯 -->	
	<section>
		<div class="gap gray-bg">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="row" id="page-contents">
							<!-- 왼쪽 위젯 -->
							<div class="col-lg-3">
								<aside class="sidebar static">
									<div class="widget">
											<h4 class="widget-title">Socials</h4>
											<ul class="socials">
												<li class="facebook">
													<a title="" href="#"><i class="fa fa-facebook"></i> <span>facebook</span> <ins>45 likes</ins></a>
												</li>
												<li class="twitter">
													<a title="" href="#"><i class="fa fa-twitter"></i> <span>twitter</span><ins>25 likes</ins></a>
												</li>
												<li class="google">
													<a title="" href="#"><i class="fa fa-google"></i> <span>google</span><ins>35 likes</ins></a>
												</li>
											</ul>
										</div>
									<div class="widget">
										<h4 class="widget-title">Shortcuts</h4>
										<ul class="naves">
											<li>
												<i class="ti-clipboard"></i>
												<a href="newsfeed.html" title="">News feed</a>
											</li>
											<li>
												<i class="ti-mouse-alt"></i>
												<a href="inbox.html" title="">Inbox</a>
											</li>
											<li>
												<i class="ti-files"></i>
												<a href="fav-page.html" title="">My pages</a>
											</li>
											<li>
												<i class="ti-user"></i>
												<a href="timeline-friends.net" title="">friends</a>
											</li>
											<li>
												<i class="ti-image"></i>
												<a href="timeline-photos.html" title="">images</a>
											</li>
											<li>
												<i class="ti-video-camera"></i>
												<a href="timeline-videos.html" title="">videos</a>
											</li>
											<li>
												<i class="ti-comments-smiley"></i>
												<a href="messages.html" title="">Messages</a>
											</li>
											<li>
												<i class="ti-bell"></i>
												<a href="notifications.html" title="">Notifications</a>
											</li>
											<li>
												<i class="ti-share"></i>
												<a href="people-nearby.html" title="">People Nearby</a>
											</li>
											<li>
												<i class="fa fa-bar-chart-o"></i>
												<a href="insights.html" title="">insights</a>
											</li>
											<li>
												<i class="ti-power-off"></i>
												<a href="landing.html" title="">Logout</a>
											</li>
										</ul>
									</div><!-- Shortcuts -->
									<div class="widget">
										<h4 class="widget-title">Recent Activity</h4>
										<ul class="activitiez">
											<li>
												<div class="activity-meta">
													<i>10 hours Ago</i>
													<span><a href="#" title="">Commented on Video posted </a></span>
													<h6>by <a href="newsfeed.html">black demon.</a></h6>
												</div>
											</li>
											<li>
												<div class="activity-meta">
													<i>30 Days Ago</i>
													<span><a href="newsfeed.html" title="">Posted your status. “Hello guys, how are you?”</a></span>
												</div>
											</li>
											<li>
												<div class="activity-meta">
													<i>2 Years Ago</i>
													<span><a href="#" title="">Share a video on her timeline.</a></span>
													<h6>"<a href="newsfeed.html">you are so funny mr.been.</a>"</h6>
												</div>
											</li>
										</ul>
									</div><!-- recent activites -->
									<div class="widget stick-widget">
										<h4 class="widget-title">Who's follownig</h4>
										<ul class="followers">
											<li>
												<figure><img src="resources/images/resources/friend-avatar2.jpg" alt=""></figure>
												<div class="friend-meta">
													<h4><a href="time-line.html" title="">Kelly Bill</a></h4>
													<a href="#" title="" class="underline">Add Friend</a>
												</div>
											</li>
											<li>
												<figure><img src="resources/images/resources/friend-avatar4.jpg" alt=""></figure>
												<div class="friend-meta">
													<h4><a href="time-line.html" title="">Issabel</a></h4>
													<a href="#" title="" class="underline">Add Friend</a>
												</div>
											</li>
											<li>
												<figure><img src="resources/images/resources/friend-avatar6.jpg" alt=""></figure>
												<div class="friend-meta">
													<h4><a href="time-line.html" title="">Andrew</a></h4>
													<a href="#" title="" class="underline">Add Friend</a>
												</div>
											</li>
											<li>
												<figure><img src="resources/images/resources/friend-avatar8.jpg" alt=""></figure>
												<div class="friend-meta">
													<h4><a href="time-line.html" title="">Sophia</a></h4>
													<a href="#" title="" class="underline">Add Friend</a>
												</div>
											</li>
											<li>
												<figure><img src="resources/images/resources/friend-avatar3.jpg" alt=""></figure>
												<div class="friend-meta">
													<h4><a href="time-line.html" title="">Allen</a></h4>
													<a href="#" title="" class="underline">Add Friend</a>
												</div>
											</li>
										</ul>
									</div><!-- who's following -->
								</aside>
							</div><!-- sidebar -->
							<!-- 왼쪽 위젯 끝 -->
							
							<!-- 가운데 -->
							<div class="col-lg-6">
								<div class="loadMore">
									<%--
									<!-- 게시글 상세 페이지 -->
									<div class="central-meta item">
										<div class="user-post">
											<div class="friend-info">
												<figure>
													<!-- 작성자 프사 누르면 작성자 정보페이지로 (이름, 생일, 지역, 관심있는 카테고리, 가입한 모임, 작성한 글, 작성한 댓글 -->
													<a href = "">
														<img src="<spring:url value='/image${파일vo}'/>" class = "group-img" alt = ""/>
													</a>
												</figure>
												<div class="friend-name">
													<ins>${글제목vo}</ins>
													<span><b>${작성자vo}</b> | published: ${작성일vo}</span>
												</div>
												<div class="post-meta">
													<!-- 본문 사진 -->
													<img src="resources/images/resources/user-post.jpg" alt="">
													<!-- 조회수, 댓글수, 좋아요, 공유 -->
													<div class="we-video-info">
														<ul>
															<li>
																<span class="views" data-toggle="tooltip" title="views">
																	<i class="fa fa-eye"></i>
																	<ins>1.2k</ins>
																</span>
															</li>
															<li>
																<span class="comment" data-toggle="tooltip" title="Comments">
																	<i class="fa fa-comments-o"></i>
																	<ins>52</ins>
																</span>
															</li>
															<li>
																<span class="like" data-toggle="tooltip" title="like">
																	<i class="ti-heart"></i>
																	<ins>2.2k</ins>
																</span>
															</li>
															<li class="social-media">
																<div class="menu">
																  <div class="btn trigger"><i class="fa fa-share-alt"></i></div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-html5"></i></a></div>
																  </div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-facebook"></i></a></div>
																  </div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-google-plus"></i></a></div>
																  </div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-twitter"></i></a></div>
																  </div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-css3"></i></a></div>
																  </div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-instagram"></i></a>
																	</div>
																  </div>
																	<div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-dribbble"></i></a>
																	</div>
																  </div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-pinterest"></i></a>
																	</div>
																  </div>
																</div>
															</li>
														</ul>
													</div>
													<!--  -->
													<div class="description">
														<p>
															오버워치에 난장판이 잘 안 나오니까 오늘도 없겠거니... 기대도 안 하고 과제를 했는데 아니 글쎄 난장판이 나왔다지 뭐예요? 심지어 하루 건너 뛰고 이틀이나 난장판이 나왔는데 제가 그 하루 건너 뛴 날에 오버워치를 했지 뭐예요?
														</p>
													</div>
												</div>
											</div>
											<!-- 댓글 -->
											<div class="coment-area">
												<ul class="we-comet">
													<li>
														<div class="comet-avatar">
															<img src="resources/images/resources/comet-1.jpg" alt="">
														</div>
														<div class="we-comment">
															<div class="coment-head">
																<h5><a href="time-line.html" title="">오안녕하세요</a></h5>
																<span>그저께</span>
																<a class="we-reply" href="#" title="Reply"><i class="fa fa-reply"></i></a>
															</div>
															<p>저랑 똑같네요. 저도 난장판 못 하고 농락당했어요 정말 눈물이 다 나네..</p>
														</div>
														<ul>
															<li>
																<div class="comet-avatar">
																	<img src="resources/images/resources/comet-2.jpg" alt="">
																</div>
																<div class="we-comment">
																	<div class="coment-head">
																		<h5><a href="time-line.html" title="">서걍이진다</a></h5>
																		<span>1 month ago</span>
																		<a class="we-reply" href="#" title="Reply"><i class="fa fa-reply"></i></a>
																	</div>
																	<p>내가 다 눈물이 나네... 난장판 없이 어떻게 살아 ㅠㅠㅠ</p>
																</div>
															</li>
															<li>
																<div class="comet-avatar">
																	<img src="resources/images/resources/comet-3.jpg" alt="">
																</div>
																<div class="we-comment">
																	<div class="coment-head">
																		<h5><a href="time-line.html" title="">폭탄을받아라</a></h5>
																		<span>16 days ago</span>
																		<a class="we-reply" href="#" title="Reply"><i class="fa fa-reply"></i></a>
																	</div>
																	<p>다음에는 그 누구도 놓치지 말고 꼭 같이 해요 ㅠㅠㅠㅠㅠ 화이팅</p>
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
																<h5><a href="time-line.html" title="">도람뿌도랐</a></h5>
																<span>1 week ago</span>
																<a class="we-reply" href="#" title="Reply"><i class="fa fa-reply"></i></a>
															</div>
															<p>다시는 오버워치에 농락 안 당하기로 해요.. 사이트도 있다구요 ㅠㅠㅠ<!-- <i class="em em-smiley"></i> -->
															</p>
														</div>
													</li>
													<li>
														<div class="comet-avatar">
															<img src="resources/images/resources/d.png" alt="">
														</div>
														<div class="we-comment">
															<div class="coment-head">
																<h5><a href="time-line.html" title="">허거걱</a></h5>
																<span>1 week ago</span>
																<a class="we-reply" href="#" title="Reply"><i class="fa fa-reply"></i></a>
															</div>
															<button type = "button" class = "ibtn"><i class="fas fa-lock" aria-hidden="true"></i></button>
															<p style = "display : inline-block">비밀 댓글 입니다.</p>
														</div>
													</li>
													<li>
														<a href="#" title="" class="showmore underline">more comments</a>
													</li>
													<li class="post-comment">
														<div class="comet-avatar">
															<img src="resources/images/resources/comet-1.jpg" alt="">
														</div>
														<div class="post-comt-box">
															<!-- 댓글 등록 -->
															<form method="post">
																<textarea placeholder="Post your comment"></textarea>
																<!-- 기본은 비밀댓글 X -->
																<button type = "button" class = "ibtn"><i class="fas fa-unlock" aria-hidden="true"></i></button>
																<!-- <i class="fas fa-unlock"></i> -->
																<button type = "submit" class = "glyphicon glyphicon-send"></button>
															</form>	
														</div>
													</li>
												</ul>
											</div>
										</div>
									</div>
									--%>
									
									<%--
									<!-- ########################################################### -->
									<!-- 게시글 샘플 -->
									<div class="central-meta item">
										<div class="user-post">
											<div class="friend-info">
												<figure>
													<!-- 작성자 프사 누르면 작성자 정보페이지로 (이름, 생일, 지역, 관심있는 카테고리, 가입한 모임, 작성한 글, 작성한 댓글 -->
													<a href = "">
													<!-- 이걸로 바꿔야 된다. '유저 프사' -->
													<img src="<spring:url value='/image${b.groupDFile}'/>" class = "group-img" alt = ""/> <!-- 이걸로 바꿔야 한다. -->
													<img src="resources/images/resources/friend-avatar10.jpg" alt="">
													</a>
												</figure>
												<div class="friend-name">
													<!-- '게시글 제목' -->
													<!-- <ins>${b.boardContent}</ins> -->
													<!-- 유저 닉네임과 게시글 등록일 -->
													<!-- <span><b>${b.nickName}</b> | published: {b.postDate}</span> -->
													<ins>오늘 난장판이 있었는데 전 그것도 모르고 과제를 했네요</ins>
													<span><b>어떡해벌써월요일</b> | published: june,2 2018 19:PM</span>
												</div>
												<div class="post-meta">
													<!-- 본문 사진 -->
													<img src="resources/images/resources/user-post.jpg" alt="">
													<!-- 조회수, 댓글수, 좋아요, 공유 -->
													<div class="we-video-info">
														<ul>
															<li>
																<span class="views" data-toggle="tooltip" title="views">
																	<i class="fa fa-eye"></i>
																	<!-- 조회수 -->
																	<!-- <ins>1.2k</ins> -->
																	<ins>1.2k</ins>
																</span>
															</li>
															<li>
																<span class="comment" data-toggle="tooltip" title="Comments">
																	<i class="fa fa-comments-o"></i>
																	<!-- 댓글수 -->
																	<!-- <ins>${b.commentCount}</ins> -->
																	<ins>52</ins>
																</span>
															</li>
															<li>
																<span class="like" data-toggle="tooltip" title="like">
																	<i class="ti-heart"></i>
																	<!-- 좋아요 -->
																	<!-- <ins>2.2k</ins> -->
																	<ins>2.2k</ins>
																</span>
															</li>
															<li class="social-media">
																<div class="menu">
																  <div class="btn trigger"><i class="fa fa-share-alt"></i></div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-html5"></i></a></div>
																  </div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-facebook"></i></a></div>
																  </div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-google-plus"></i></a></div>
																  </div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-twitter"></i></a></div>
																  </div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-css3"></i></a></div>
																  </div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-instagram"></i></a>
																	</div>
																  </div>
																	<div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-dribbble"></i></a>
																	</div>
																  </div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-pinterest"></i></a>
																	</div>
																  </div>
																</div>
															</li>
														</ul>
													</div>
													<div class="description">
														<p>
															오버워치에 난장판이 잘 안 나오니까 오늘도 없겠거니... 기대도 안 하고 과제를 했는데 아니 글쎄 난장판이 나왔다지 뭐예요? 심지어 하루 건너 뛰고 이틀이나 난장판이 나왔는데 제가 그 하루 건너 뛴 날에 오버워치를 했지 뭐예요?
														</p>
													</div>
												</div>
											</div>
											<!-- 댓글 -->
											<div class="coment-area">
												<ul class="we-comet">
													<!-- 댓글 깊이가 있으면 li 하나에 꼬리 물고 들어가야 함 -->
													<li>
														<div class="comet-avatar">
															<img src="resources/images/resources/comet-1.jpg" alt="">
														</div>
														<div class="we-comment">
															<div class="coment-head">
																<h5><a href="time-line.html" title="">오안녕하세요</a></h5>
																<span>그저께</span>
																<a class="we-reply" href="#" title="Reply"><i class="fa fa-reply"></i></a>
															</div>
															<p>저랑 똑같네요. 저도 난장판 못 하고 농락당했어요 정말 눈물이 다 나네..</p>
														</div>
														<ul>
															<li>
																<div class="comet-avatar">
																	<img src="resources/images/resources/comet-2.jpg" alt="">
																</div>
																<div class="we-comment">
																	<div class="coment-head">
																		<h5><a href="time-line.html" title="">서걍이진다</a></h5>
																		<span>1 month ago</span>
																		<a class="we-reply" href="#" title="Reply"><i class="fa fa-reply"></i></a>
																	</div>
																	<p>내가 다 눈물이 나네... 난장판 없이 어떻게 살아 ㅠㅠㅠ</p>
																</div>
															</li>
															<li>
																<div class="comet-avatar">
																	<img src="resources/images/resources/comet-3.jpg" alt="">
																</div>
																<div class="we-comment">
																	<div class="coment-head">
																		<h5><a href="time-line.html" title="">폭탄을받아라</a></h5>
																		<span>16 days ago</span>
																		<a class="we-reply" href="#" title="Reply"><i class="fa fa-reply"></i></a>
																	</div>
																	<p>다음에는 그 누구도 놓치지 말고 꼭 같이 해요 ㅠㅠㅠㅠㅠ 화이팅</p>
																</div>
															</li>
														</ul>
													</li>
													<!-- 대댓 없을 때 -->
													<li>
														<div class="comet-avatar">
															<img src="resources/images/resources/comet-1.jpg" alt="">
														</div>
														<div class="we-comment">
															<div class="coment-head">
																<h5><a href="time-line.html" title="">도람뿌도랐</a></h5>
																<span>1 week ago</span>
																<a class="we-reply" href="#" title="Reply"><i class="fa fa-reply"></i></a>
															</div>
															<p>다시는 오버워치에 농락 안 당하기로 해요.. 사이트도 있다구요 ㅠㅠㅠ<!-- <i class="em em-smiley"></i> -->
															</p>
														</div>
													</li>
													<!-- 비밀댓글일 때 -->
													<li>
														<div class="comet-avatar">
															<img src="resources/images/resources/d.png" alt="">
														</div>
														<div class="we-comment">
															<div class="coment-head">
																<h5><a href="time-line.html" title="">허거걱</a></h5>
																<span>1 week ago</span>
																<a class="we-reply" href="#" title="Reply"><i class="fa fa-reply"></i></a>
															</div>
															<button type = "button" class = "ibtn"><i class="fas fa-lock" aria-hidden="true"></i></button>
															<p style = "display : inline-block">비밀 댓글 입니다.</p>
														</div>
													</li>
													<li>
														<a href="#" title="" class="showmore underline">more comments</a>
													</li>
													<li class="post-comment">
														<div class="comet-avatar">
															<img src="resources/images/resources/comet-1.jpg" alt="">
														</div>
														<div class="post-comt-box">
															<!-- 댓글 등록 -->
															<form method="post">
																<textarea placeholder="Post your comment"></textarea>
																<!-- 기본은 비밀댓글 X -->
																<button type = "button" class = "ibtn"><i class="fas fa-unlock" aria-hidden="true"></i></button>
																<!-- <i class="fas fa-unlock"></i> -->
																<button type = "submit" class = "glyphicon glyphicon-send"></button>
															</form>	
														</div>
													</li>
												</ul>
											</div>
										</div>
									</div>
									<!-- 게시글 샘플 끝 -->
									<!-- ########################################################### -->
									--%>
									<div class="central-meta item">
										<div class="user-post">
											<div class="friend-info">
												<figure>
													<img src="<spring:url value='/image${post.profileFile}'/>" class = "group-img" alt = ""/>
												</figure>
												<div class="friend-name">
													<ins>${post.postTitle}</ins>
													<span><b>${post.groupNickname}</b> | published : ${post.postDate}</span>
												</div>
												<div class="description">
														<p>
															${post.postContent}
														</p>
												</div>
												<div class="post-meta">
													<div class="we-video-info">
														<ul>
															<li>
																<span class="views" data-toggle="tooltip" title="views">
																	<i class="fa fa-eye"></i>
																	<ins>${post.postReadcount}</ins>
																</span>
															</li>
															<li>
																<span class="comment" data-toggle="tooltip" title="Comments">
																	<i class="fa fa-comments-o"></i>
																	<ins>${post.replyCount}</ins>
																</span>
															</li>
															<li>
																<span class="like" data-toggle="tooltip" title="like">
																	<i class="ti-heart"></i>
																	<ins>${post.postlike}</ins>
																</span>
															</li>
															<li class="social-media">
																<div class="menu">
																  <div class="btn trigger"><i class="fa fa-share-alt"></i></div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-html5"></i></a></div>
																  </div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-facebook"></i></a></div>
																  </div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-google-plus"></i></a></div>
																  </div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-twitter"></i></a></div>
																  </div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-css3"></i></a></div>
																  </div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-instagram"></i></a>
																	</div>
																  </div>
																	<div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-dribbble"></i></a>
																	</div>
																  </div>
																  <div class="rotater">
																	<div class="btn btn-icon"><a href="#" title=""><i class="fa fa-pinterest"></i></a>
																	</div>
																  </div>
																</div>
															</li>
														</ul>
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
																<h5><a href="time-line.html" title="">Jason borne</a></h5>
																<span>1 year ago</span>
																<a class="we-reply" href="#" title="Reply"><i class="fa fa-reply"></i></a>
															</div>
															<p>we are working for the dance and sing songs. this video is very awesome for the youngster. please vote this video and like our channel</p>
														</div>

													</li>
													<li>
														<div class="comet-avatar">
															<img src="resources/images/resources/comet-2.jpg" alt="">
														</div>
														<div class="we-comment">
															<div class="coment-head">
																<h5><a href="time-line.html" title="">Sophia</a></h5>
																<span>1 week ago</span>
																<a class="we-reply" href="#" title="Reply"><i class="fa fa-reply"></i></a>
															</div>
															<p>we are working for the dance and sing songs. this video is very awesome for the youngster.
																<i class="em em-smiley"></i>
															</p>
														</div>
													</li>
													<li>
														<div class="comet-avatar">
															<img src="resources/images/resources/d.png" alt="">
														</div>
														<div class="we-comment">
															<div class="coment-head">
																<h5><a href="time-line.html" title="">허거걱</a></h5>
																<span>1 week ago</span>
																<a class="we-reply" href="#" title="Reply"><i class="fa fa-reply"></i></a>
															</div>
															<button type = "button" class = "ibtn"><i class="fas fa-lock" aria-hidden="true"></i></button>
															<p style = "display : inline-block">비밀 댓글 입니다.</p>
														</div>
													</li>
													<li>
														<a href="#" title="" class="showmore underline">more comments</a>
													</li>
													<li class="post-comment">
														<div class="comet-avatar">
															<img src="resources/images/resources/comet-2.jpg" alt="">
														</div>
														<div class="post-comt-box">
															<!-- 댓글 등록 -->
															<form method="post">
																<textarea placeholder="Post your comment"></textarea>
																<!-- 기본은 비밀댓글 X -->
																<button type = "button" class = "ibtn"><i class="fas fa-unlock" aria-hidden="true"></i></button>
																<button type = "submit" class = "glyphicon glyphicon-send"></button>
															</form>	
														</div>
													</li>
												</ul>
											</div>
										</div>
									</div>
									<!-- 상세 게시글 끝 -->
								</div>
							</div><!-- centerl meta -->
							<!-- 가운데 끝 -->
							
							<!-- 오른쪽 위젯 -->
							<div class="col-lg-3">
										<aside class="sidebar static">
											<div class="widget friend-list stick-widget" style="">
												<h4 class = "widget-title">가입한 모임</h4>
												<div id="searchDir">
													<form class="filterform" action="#">
														<input class="filterinput" type="text" placeholder="Search Groups...">
													</form>
												</div>
												<ul id="people-list"
													class="friendz-list ps-container ps-theme-default ps-active-y"
													data-ps-id="14d790e5-8ebe-88ac-f1c9-5a21e6e2cabb">
													<li>
														<figure>
															<img src="resources/images/resources/friend-avatar.jpg" alt="">
															<span class="status f-online"></span>
														</figure>
														<div class="friendz-meta">
															<a href="time-line.html">마포구 특별 워치단</a>
														</div>
													</li>
													<li>
														<figure>
															<img src="resources/images/resources/friend-avatar2.jpg" alt="">
															<span class="status f-away"></span>
														</figure>
														<div class="friendz-meta">
															<a href="time-line.html">코딩박사</a> 
														</div>
													</li>
													<li>
														<figure>
															<img src="resources/images/resources/friend-avatar3.jpg" alt="">
															<span class="status f-off"></span>
														</figure>
														<div class="friendz-meta">
															<a href="time-line.html">삼시세끼 살세끼</a>
														</div>
													</li>
													<li>
														<figure>
															<img src="resources/images/resources/friend-avatar4.jpg" alt="">
															<span class="status f-off"></span>
														</figure>
														<div class="friendz-meta">
															<a href="time-line.html">아이폰11 처돌이</a>
														</div>
													</li>
													<li>

														<figure>
															<img src="resources/images/resources/friend-avatar5.jpg" alt="">
															<span class="status f-online"></span>
														</figure>
														<div class="friendz-meta">
															<a href="time-line.html">나는 취준생이다</a>
														</div>
													</li>
													<li>

														<figure>
															<img src="resources/images/resources/friend-avatar6.jpg" alt="">
															<span class="status f-away"></span>
														</figure>
														<div class="friendz-meta">
															<a href="time-line.html">오늘도 짝사랑을 한ㄷr..</a>
														</div>
													</li>
													<li>

														<figure>
															<img src="resources/images/resources/friend-avatar7.jpg" alt="">
															<span class="status f-off"></span>
														</figure>
														<div class="friendz-meta">
															<a href="time-line.html">좌 우 좌 우 페달 밟아</a>
														</div>
													</li>
													<li>

														<figure>
															<img src="resources/images/resources/friend-avatar5.jpg" alt="">
															<span class="status f-online"></span>
														</figure>
														<div class="friendz-meta">
															<a href="time-line.html">스프링 스터디</a>
														</div>
													</li>
													<li>

														<figure>
															<img src="resources/images/resources/friend-avatar2.jpg" alt="">
															<span class="status f-away"></span>
														</figure>
														<div class="friendz-meta">
															<a href="time-line.html">혼모노 노트북</a>
														</div>
													</li>
													<div class="ps-scrollbar-x-rail"
														style="left: 0px; bottom: 0px;">
														<div class="ps-scrollbar-x" tabindex="0"
															style="left: 0px; width: 0px;"></div>
													</div>
													<div class="ps-scrollbar-y-rail"
														style="top: 0px; height: 450px; right: 0px;">
														<div class="ps-scrollbar-y" tabindex="0"
															style="top: 0px; height: 336px;"></div>
													</div>
												</ul>
												<div class="chat-box">
													<div class="chat-head">
														<span class="status f-online"></span>
														<h6>Bucky Barnes</h6>
														<div class="more">
															<span><i class="ti-more-alt"></i></span> <span
																class="close-mesage"><i class="ti-close"></i></span>
														</div>
													</div>
													<div class="chat-list">
														<ul class="ps-container ps-theme-default ps-active-y"
															data-ps-id="9f31b1a5-5f01-e2e6-3bdb-beed47f50864">
															<li class="me">
																<div class="chat-thumb">
																	<img src="resources/images/resources/chatlist1.jpg" alt="">
																</div>
																<div class="notification-event">
																	<span class="chat-message-item"> Hi James!
																		Please remember to buy the food for tomorrow! I’m
																		gonna be handling the gifts and Jake’s gonna get the
																		drinks </span> <span class="notification-date"><time
																			datetime="2004-07-24T18:18"
																			class="entry-date updated">Yesterday at 8:10pm</time></span>
																</div>
															</li>
															<li class="you">
																<div class="chat-thumb">
																	<img src="resources/images/resources/chatlist2.jpg" alt="">
																</div>
																<div class="notification-event">
																	<span class="chat-message-item"> Hi James!
																		Please remember to buy the food for tomorrow! I’m
																		gonna be handling the gifts and Jake’s gonna get the
																		drinks </span> <span class="notification-date"><time
																			datetime="2004-07-24T18:18"
																			class="entry-date updated">Yesterday at 8:10pm</time></span>
																</div>
															</li>
															<li class="me">
																<div class="chat-thumb">
																	<img src="resources/images/resources/chatlist1.jpg" alt="">
																</div>
																<div class="notification-event">
																	<span class="chat-message-item"> Hi James!
																		Please remember to buy the food for tomorrow! I’m
																		gonna be handling the gifts and Jake’s gonna get the
																		drinks </span> <span class="notification-date"><time
																			datetime="2004-07-24T18:18"
																			class="entry-date updated">Yesterday at 8:10pm</time></span>
																</div>
															</li>
															<div class="ps-scrollbar-x-rail"
																style="left: 0px; bottom: 0px;">
																<div class="ps-scrollbar-x" tabindex="0"
																	style="left: 0px; width: 0px;"></div>
															</div>
															<div class="ps-scrollbar-y-rail"
																style="top: 0px; height: 290px; right: 0px;">
																<div class="ps-scrollbar-y" tabindex="0"
																	style="top: 0px; height: 192px;"></div>
															</div>
														</ul>
														<form class="text-box">
															<textarea placeholder="Post enter to post..."></textarea>
															<div class="add-smiles">
																<span title="add icon" class="em em-expressionless"></span>
															</div>
															<div class="smiles-bunch">
																<i class="em em---1"></i> <i class="em em-smiley"></i> <i
																	class="em em-anguished"></i> <i class="em em-laughing"></i>
																<i class="em em-angry"></i> <i class="em em-astonished"></i>
																<i class="em em-blush"></i> <i
																	class="em em-disappointed"></i> <i
																	class="em em-worried"></i> <i
																	class="em em-kissing_heart"></i> <i class="em em-rage"></i>
																<i class="em em-stuck_out_tongue"></i>
															</div>
															<button type="submit"></button>
														</form>
													</div>
												</div>
											</div>
											<!-- friends list sidebar -->
										</aside>
									</div>
						</div>	
					</div>
				</div>
			</div>
		</div>	
	</section>
<jsp:include page="mainpage/footer.jsp" />