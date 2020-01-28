<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- Header -->
<jsp:include page="header.jsp" />
<!-- Header end -->

<!-- content -->
<section>
	<div class="feature-photo">
		<figure>
			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">

					<div class="item active">
						<img src="resources/images/resources/main1.jpg"
							style="height: 500px; width: 80%; margin:auto; " alt="...">
						<div class="carousel-caption">
							<h3>모임명을 입력해주세요</h3>
							<p>여기는 모임 소개를 한줄로 쓰는 라인이다.</p>
						</div>
					</div>

					<div class="item">
						<img src="resources/images/resources/main2.jpg"
							style="height: 500px; width: 80%; margin:auto;" alt="...">
						<div class="carousel-caption">
							<h3>모임명을 입력해주세요</h3>
							<p>여기는 모임 소개를 한줄로 쓰는 라인이다2</p>
						</div>
					</div>

					<div class="item">
						<img src="resources/images/resources/main3.jpg"
							style="height: 500px; width: 80%; margin:auto;" alt="...">
						<div class="carousel-caption">
							<h3>모임명을 입력해주세요</h3>
							<p>여기는 모임 소개를 한줄로 쓰는 라인이다3</p>
						</div>
					</div>

				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> 
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> 
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</figure>

		<div class="container-fluid">
			<div class="row merged">
				<div class="col-lg-2 col-sm-3"></div>
				<div class="col-lg-10 col-sm-9">
					<div class="timeline-info">
						<ul>
							<li>
								<!-- 이름 옆에 탭 라인 -->
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- top area -->

<section>
	<div class="gap gray-bg">
		<div class="container-fluid">
			<div class="row" id="page-contents">
				<div class="col-lg-12">
					<div class="row" id="page-contents">
						<div class="col-lg-3">
							<aside class="sidebar static">
								<div class="widget">
									<h4 class="widget-title">카테고리</h4>
									<ul class="naves">
										<li><i class="ti-clipboard"></i> <a href="newsfeed.html"
											title="">News feed</a></li>
										<li><i class="ti-mouse-alt"></i> <a href="inbox.html"
											title="">Inbox</a></li>
										<li><i class="ti-files"></i> <a href="fav-page.html"
											title="">My pages</a></li>
										<li><i class="ti-user"></i> <a
											href="timeline-friends.html" title="">friends</a></li>
										<li><i class="ti-image"></i> <a
											href="timeline-photos.html" title="">images</a></li>
										<li><i class="ti-video-camera"></i> <a
											href="timeline-videos.html" title="">videos</a></li>
										<li><i class="ti-comments-smiley"></i> <a
											href="messages.html" title="">Messages</a></li>
										<li><i class="ti-bell"></i> <a href="notifications.html"
											title="">Notifications</a></li>
										<li><i class="ti-share"></i> <a href="people-nearby.html"
											title="">People Nearby</a></li>
										<li><i class="fa fa-bar-chart-o"></i> <a
											href="insights.html" title="">insights</a></li>
										<li><i class="ti-power-off"></i> <a href="landing.html"
											title="">로그아웃</a></li>
									</ul>
								</div>
								<!-- Shortcuts -->
							</aside>
						</div>


						<!-- 모임 관련  -->
						<div class="col-lg-6">
							<div class="g-post-classic-recommands">
								<div class="groups recommands">
									<span><i class="fa fa-users"></i> 추천 모임</span>
								</div>

								<div class="g-post-classic">
									<figure>
										<img alt="" src="resources/images/resources/bloggrid-1.jpg">
										<i class="fa fa-video-camera"></i>
									</figure>
									<div class="g-post-meta">
										<div class="post-title">
											<h4>
												<a title="" href="#">how to create content that get
													traffic</a>
											</h4>
											<p>We got really awesome shots for the new catalog,
												Here’s a photo from last month’s photoshoot.</p>
											<span class="p-date">by <a href="#" title="">JACK
													Sparo</a> - 12 hours ago
											</span>
										</div>
										<div class="g-post-ranking">
											<a title="" href="#" class="likes"><i
												class="fa fa-heart-o"></i>10 likes</a> <a title="" href="#"
												class="coments"><i class="fa fa-comment-o"></i>5
												comments</a>
										</div>
									</div>
								</div>
								<div class="g-post-classic">
									<figure>
										<img alt="" src="resources/images/resources/bloggrid-2.jpg">
										<i class="fa fa-soundcloud"></i>
									</figure>
									<div class="g-post-meta">
										<div class="post-title">
											<h4>
												<a title="" href="#">how to create content that get
													traffic</a>
											</h4>
											<p>We got really awesome shots for the new catalog,
												Here’s a photo from last month’s photoshoot.</p>
											<span class="p-date">by <a href="#" title="">JACK
													Sparo</a> - 12-Sep-2018
											</span>
										</div>
										<div class="g-post-ranking">
											<a title="" href="#" class="likes"><i
												class="fa fa-heart-o"></i>10 likes</a> <a title="" href="#"
												class="coments"><i class="fa fa-comment-o"></i>5
												comments</a>
										</div>
									</div>
								</div>
								<div class="g-post-classic">
									<figure>
										<img alt="" src="resources/images/resources/bloggrid-4.jpg">
										<i class="fa fa-video-camera"></i>
									</figure>
									<div class="g-post-meta">
										<div class="post-title">
											<h4>
												<a title="" href="#">how to create content that get
													traffic</a>
											</h4>
											<p>We got really awesome shots for the new catalog,
												Here’s a photo from last month’s photoshoot.</p>
											<span class="p-date">by <a href="#" title="">JACK
													Sparo</a> - 12 hours ago
											</span>
										</div>
										<div class="g-post-ranking">
											<a title="" href="#" class="likes"><i
												class="fa fa-heart-o"></i>10 likes</a> <a title="" href="#"
												class="coments"><i class="fa fa-comment-o"></i>5
												comments</a>
										</div>
									</div>
								</div>
							</div>

							<div class="central-meta">
								<div class="groups">
									<span><i class="fa fa-users"></i>모임 목록</span>
								</div>
								<ul class="nearby-contct">
									<li>
										<div class="nearly-pepls">
											<figure>
												<a href="time-line.html" title=""><img
													src="resources/images/resources/group1.jpg" alt=""></a>
											</figure>
											<div class="pepl-info">
												<h4>
													<a href="time-line.html" title="">funparty</a>
												</h4>
												<span>public group</span> <em>32k Members</em> <a href="#"
													title="" class="add-butn" data-ripple="">leave group</a>
											</div>
										</div>
									</li>
									<li>
										<div class="nearly-pepls">
											<figure>
												<a href="time-line.html" title=""><img
													src="resources/images/resources/group2.jpg" alt=""></a>
											</figure>
											<div class="pepl-info">
												<h4>
													<a href="time-line.html" title="">ABC News</a>
												</h4>
												<span>Private group</span> <em>5M Members</em> <a href="#"
													title="" class="add-butn" data-ripple="">leave group</a>
											</div>
										</div>
									</li>
									<li>
										<div class="nearly-pepls">
											<figure>
												<a href="time-line.html" title=""><img
													src="resources/images/resources/group3.jpg" alt=""></a>
											</figure>
											<div class="pepl-info">
												<h4>
													<a href="time-line.html" title="">SEO Zone</a>
												</h4>
												<span>Public group</span> <em>32k Members</em> <a href="#"
													title="" class="add-butn" data-ripple="">leave group</a>
											</div>
										</div>
									</li>
									<li>
										<div class="nearly-pepls">
											<figure>
												<a href="time-line.html" title=""><img
													src="resources/images/resources/group4.jpg" alt=""></a>
											</figure>
											<div class="pepl-info">
												<h4>
													<a href="time-line.html" title="">Max Us</a>
												</h4>
												<span>Public group</span> <em> 756 Members</em> <a href="#"
													title="" class="add-butn" data-ripple="">leave group</a>
											</div>
										</div>
									</li>
									<li>
										<div class="nearly-pepls">
											<figure>
												<a href="time-line.html" title=""><img
													src="resources/images/resources/group5.jpg" alt=""></a>
											</figure>
											<div class="pepl-info">
												<h4>
													<a href="time-line.html" title="">Banana Group</a>
												</h4>
												<span>Friends Group</span> <em>32k Members</em> <a href="#"
													title="" class="add-butn" data-ripple="">leave group</a>
											</div>
										</div>
									</li>

								</ul>
								<div class="lodmore">
									<button class="btn-view btn-load-more"></button>
								</div>
							</div>
							<!-- photos -->
						</div>




						<!-- 오른쪽 친구 bar -->
						<div class="col-lg-3">
							<aside class="sidebar static">
								<div class="widget friend-list stick-widget">
									<h4 class="widget-title">Friends</h4>
									<div id="searchDir"></div>
									<ul id="people-list" class="friendz-list">
										<li>
											<figure>
												<img src="resources/images/resources/friend-avatar.jpg"
													alt="">
												<span class="status f-online"></span>
											</figure>
											<div class="friendz-meta">
												<a href="time-line.html">bucky barnes</a> <i><a
													href="https://wpkixx.com/cdn-cgi/l/email-protection"
													class="__cf_email__"
													data-cfemail="c2b5abacb6a7b0b1adaea6a7b082a5afa3abaeeca1adaf">[email&#160;protected]</a></i>
											</div>
										</li>
										<li>
											<figure>
												<img src="resources/images/resources/friend-avatar2.jpg"
													alt="">
												<span class="status f-away"></span>
											</figure>
											<div class="friendz-meta">
												<a href="time-line.html">Sarah Loren</a> <i><a
													href="https://wpkixx.com/cdn-cgi/l/email-protection"
													class="__cf_email__"
													data-cfemail="2f4d4e5d414a5c6f48424e4643014c4042">[email&#160;protected]</a></i>
											</div>
										</li>
										<li>
											<figure>
												<img src="resources/images/resources/friend-avatar3.jpg"
													alt="">
												<span class="status f-off"></span>
											</figure>
											<div class="friendz-meta">
												<a href="time-line.html">jason borne</a> <i><a
													href="https://wpkixx.com/cdn-cgi/l/email-protection"
													class="__cf_email__"
													data-cfemail="90faf1e3fffef2d0f7fdf1f9fcbef3fffd">[email&#160;protected]</a></i>
											</div>
										</li>
										<li>
											<figure>
												<img src="resources/images/resources/friend-avatar4.jpg"
													alt="">
												<span class="status f-off"></span>
											</figure>
											<div class="friendz-meta">
												<a href="time-line.html">Cameron diaz</a> <i><a
													href="https://wpkixx.com/cdn-cgi/l/email-protection"
													class="__cf_email__"
													data-cfemail="f19b90829e9f93b1969c90989ddf929e9c">[email&#160;protected]</a></i>
											</div>
										</li>
										<li>

											<figure>
												<img src="resources/images/resources/friend-avatar5.jpg"
													alt="">
												<span class="status f-online"></span>
											</figure>
											<div class="friendz-meta">
												<a href="time-line.html">daniel warber</a> <i><a
													href="https://wpkixx.com/cdn-cgi/l/email-protection"
													class="__cf_email__"
													data-cfemail="88e2e9fbe7e6eac8efe5e9e1e4a6ebe7e5">[email&#160;protected]</a></i>
											</div>
										</li>
										<li>

											<figure>
												<img src="resources/images/resources/friend-avatar6.jpg"
													alt="">
												<span class="status f-away"></span>
											</figure>
											<div class="friendz-meta">
												<a href="time-line.html">andrew</a> <i><a
													href="https://wpkixx.com/cdn-cgi/l/email-protection"
													class="__cf_email__"
													data-cfemail="e882899b87868aa88f85898184c68b8785">[email&#160;protected]</a></i>
											</div>
										</li>
										<li>

											<figure>
												<img src="resources/images/resources/friend-avatar7.jpg"
													alt="">
												<span class="status f-off"></span>
											</figure>
											<div class="friendz-meta">
												<a href="time-line.html">amy watson</a> <i><a
													href="https://wpkixx.com/cdn-cgi/l/email-protection"
													class="__cf_email__"
													data-cfemail="e58f84968a8b87a58288848c89cb868a88">[email&#160;protected]</a></i>
											</div>
										</li>
										<li>

											<figure>
												<img src="resources/images/resources/friend-avatar5.jpg"
													alt="">
												<span class="status f-online"></span>
											</figure>
											<div class="friendz-meta">
												<a href="time-line.html">daniel warber</a> <i><a
													href="https://wpkixx.com/cdn-cgi/l/email-protection"
													class="__cf_email__"
													data-cfemail="4b212a382425290b2c262a222765282426">[email&#160;protected]</a></i>
											</div>
										</li>
										<li>

											<figure>
												<img src="resources/images/resources/friend-avatar2.jpg"
													alt="">
												<span class="status f-away"></span>
											</figure>
											<div class="friendz-meta">
												<a href="time-line.html">Sarah Loren</a> <i><a
													href="https://wpkixx.com/cdn-cgi/l/email-protection"
													class="__cf_email__"
													data-cfemail="97f5f6e5f9f2e4d7f0faf6fefbb9f4f8fa">[email&#160;protected]</a></i>
											</div>
										</li>
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
											<ul>
												<li class="me">
													<div class="chat-thumb">
														<img src="resources/images/resources/chatlist1.jpg" alt="">
													</div>
													<div class="notification-event">
														<span class="chat-message-item"> Hi James! Please
															remember to buy the food for tomorrow! I’m gonna be
															handling the gifts and Jake’s gonna get the drinks </span> <span
															class="notification-date"><time
																datetime="2004-07-24T18:18" class="entry-date updated">Yesterday
																at 8:10pm</time></span>
													</div>
												</li>
												<li class="you">
													<div class="chat-thumb">
														<img src="resources/images/resources/chatlist2.jpg" alt="">
													</div>
													<div class="notification-event">
														<span class="chat-message-item"> Hi James! Please
															remember to buy the food for tomorrow! I’m gonna be
															handling the gifts and Jake’s gonna get the drinks </span> <span
															class="notification-date"><time
																datetime="2004-07-24T18:18" class="entry-date updated">Yesterday
																at 8:10pm</time></span>
													</div>
												</li>
												<li class="me">
													<div class="chat-thumb">
														<img src="resources/images/resources/chatlist1.jpg" alt="">
													</div>
													<div class="notification-event">
														<span class="chat-message-item"> Hi James! Please
															remember to buy the food for tomorrow! I’m gonna be
															handling the gifts and Jake’s gonna get the drinks </span> <span
															class="notification-date"><time
																datetime="2004-07-24T18:18" class="entry-date updated">Yesterday
																at 8:10pm</time></span>
													</div>
												</li>
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
													<i class="em em-blush"></i> <i class="em em-disappointed"></i>
													<i class="em em-worried"></i> <i
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
						<!-- sidebar -->
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- content end -->


<!-- footer -->
<jsp:include page="footer.jsp" />
<!-- footer end -->


<!-- 각 content에서 사용하는 script -->
<script>
$(function(){
	$('.carousel').carousel({
		interval : 5000
	})
});
</script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- content에서 사용하는 script end -->