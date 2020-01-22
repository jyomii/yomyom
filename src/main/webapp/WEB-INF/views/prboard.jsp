<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Winku Social Network Toolkit</title>
<link rel="icon" href="resources/images/fav.png"
	type="resources/image/png" sizes="16x16">

<link rel="stylesheet" href="resources/css/main.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/color.css">
<link rel="stylesheet" href="resources/css/responsive.css">
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

 .center-block {display:flex;
                justify-content:center;}
</style>
</head>
<body>
	<!--<div class="se-pre-con"></div>-->
	<div class="theme-layout">

		<div class="responsive-header">
			<div class="mh-head first Sticky">
				<span class="mh-btns-left"> <a class="" href="#menu"><i
						class="fa fa-align-justify"></i></a>
				</span> <span class="mh-text"> <a href="newsfeed.html" title=""><img
						src="resources/images/logo2.png" alt=""></a>
				</span> <span class="mh-btns-right"> <a class="fa fa-sliders"
					href="#shoppingbag"></a>
				</span>
			</div>
			<div class="mh-head second">
				<form class="mh-form">
					<input placeholder="search" /> <a href="#/" class="fa fa-search"></a>
				</form>
			</div>
			<nav id="menu" class="res-menu">
				<ul>
					<li><span>Home</span>
						<ul>
							<li><a href="index-2.html" title="">Home Social</a></li>
							<li><a href="index2.html" title="">Home Social 2</a></li>
							<li><a href="index-company.html" title="">Home Company</a></li>
							<li><a href="landing.html" title="">Login page</a></li>
							<li><a href="logout.html" title="">Logout Page</a></li>
							<li><a href="newsfeed.html" title="">news feed</a></li>
						</ul></li>
					<li><span>Time Line</span>
						<ul>
							<li><a href="time-line.html" title="">timeline</a></li>
							<li><a href="timeline-friends.html" title="">timeline
									friends</a></li>
							<li><a href="timeline-groups.html" title="">timeline
									groups</a></li>
							<li><a href="timeline-pages.html" title="">timeline
									pages</a></li>
							<li><a href="timeline-photos.html" title="">timeline
									photos</a></li>
							<li><a href="timeline-videos.html" title="">timeline
									videos</a></li>
							<li><a href="fav-page.html" title="">favourit page</a></li>
							<li><a href="groups.html" title="">groups page</a></li>
							<li><a href="page-likers.html" title="">Likes page</a></li>
							<li><a href="people-nearby.html" title="">people nearby</a></li>


						</ul></li>
					<li><span>Account Setting</span>
						<ul>
							<li><a href="create-fav-page.html" title="">create fav
									page</a></li>
							<li><a href="edit-account-setting.html" title="">edit
									account setting</a></li>
							<li><a href="edit-interest.html" title="">edit-interest</a></li>
							<li><a href="edit-password.html" title="">edit-password</a></li>
							<li><a href="edit-profile-basic.html" title="">edit
									profile basics</a></li>
							<li><a href="edit-work-eductation.html" title="">edit
									work educations</a></li>
							<li><a href="messages.html" title="">message box</a></li>
							<li><a href="inbox.html" title="">Inbox</a></li>
							<li><a href="notifications.html" title="">notifications
									page</a></li>
						</ul></li>
					<li><span>forum</span>
						<ul>
							<li><a href="forum.html" title="">Forum Page</a></li>
							<li><a href="forums-category.html" title="">Fourm
									Category</a></li>
							<li><a href="forum-open-topic.html" title="">Forum Open
									Topic</a></li>
							<li><a href="forum-create-topic.html" title="">Forum
									Create Topic</a></li>
						</ul></li>
					<li><span>Our Shop</span>
						<ul>
							<li><a href="shop.html" title="">Shop Products</a></li>
							<li><a href="shop-masonry.html" title="">Shop Masonry
									Products</a></li>
							<li><a href="shop-single.html" title="">Shop Detail Page</a></li>
							<li><a href="shop-cart.html" title="">Shop Product Cart</a></li>
							<li><a href="shop-checkout.html" title="">Product
									Checkout</a></li>
						</ul></li>
					<li><span>Our Blog</span>
						<ul>
							<li><a href="blog-grid-wo-sidebar.html" title="">Our
									Blog</a></li>
							<li><a href="blog-grid-right-sidebar.html" title="">Blog
									with R-Sidebar</a></li>
							<li><a href="blog-grid-left-sidebar.html" title="">Blog
									with L-Sidebar</a></li>
							<li><a href="blog-masonry.html" title="">Blog Masonry
									Style</a></li>
							<li><a href="blog-list-wo-sidebar.html" title="">Blog
									List Style</a></li>
							<li><a href="blog-list-right-sidebar.html" title="">Blog
									List with R-Sidebar</a></li>
							<li><a href="blog-list-left-sidebar.html" title="">Blog
									List with L-Sidebar</a></li>
							<li><a href="blog-detail.html" title="">Blog Post Detail</a></li>
						</ul></li>
					<li><span>Portfolio</span>
						<ul>
							<li><a href="portfolio-2colm.html" title="">Portfolio
									2col</a></li>
							<li><a href="portfolio-3colm.html" title="">Portfolio
									3col</a></li>
							<li><a href="portfolio-4colm.html" title="">Portfolio
									4col</a></li>
						</ul></li>
					<li><span>Support & Help</span>
						<ul>
							<li><a href="support-and-help.html" title="">Support &
									Help</a></li>
							<li><a href="support-and-help-detail.html" title="">Support
									& Help Detail</a></li>
							<li><a href="support-and-help-search-result.html" title="">Support
									& Help Search Result</a></li>
						</ul></li>
					<li><span>More pages</span>
						<ul>
							<li><a href="careers.html" title="">Careers</a></li>
							<li><a href="career-detail.html" title="">Career Detail</a></li>
							<li><a href="404.html" title="">404 error page</a></li>
							<li><a href="404-2.html" title="">404 Style2</a></li>
							<li><a href="faq.html" title="">faq's page</a></li>
							<li><a href="insights.html" title="">insights</a></li>
							<li><a href="knowledge-base.html" title="">knowledge
									base</a></li>
						</ul></li>
					<li><a href="about.html" title="">about</a></li>
					<li><a href="about-company.html" title="">About Us2</a></li>
					<li><a href="contact.html" title="">contact</a></li>
					<li><a href="contact-branches.html" title="">Contact Us2</a></li>
					<li><a href="widgets.html" title="">Widgts</a></li>
				</ul>
			</nav>
			<nav id="shoppingbag">
				<div>
					<div class="">
						<form method="post">
							<div class="setting-row">
								<span>use night mode</span> <input type="checkbox"
									id="nightmode" /> <label for="nightmode" data-on-label="ON"
									data-off-label="OFF"></label>
							</div>
							<div class="setting-row">
								<span>Notifications</span> <input type="checkbox" id="switch2" />
								<label for="switch2" data-on-label="ON" data-off-label="OFF"></label>
							</div>
							<div class="setting-row">
								<span>Notification sound</span> <input type="checkbox"
									id="switch3" /> <label for="switch3" data-on-label="ON"
									data-off-label="OFF"></label>
							</div>
							<div class="setting-row">
								<span>My profile</span> <input type="checkbox" id="switch4" />
								<label for="switch4" data-on-label="ON" data-off-label="OFF"></label>
							</div>
							<div class="setting-row">
								<span>Show profile</span> <input type="checkbox" id="switch5" />
								<label for="switch5" data-on-label="ON" data-off-label="OFF"></label>
							</div>
						</form>
						<h4 class="panel-title">Account Setting</h4>
						<form method="post">
							<div class="setting-row">
								<span>Sub users</span> <input type="checkbox" id="switch6" /> <label
									for="switch6" data-on-label="ON" data-off-label="OFF"></label>
							</div>
							<div class="setting-row">
								<span>personal account</span> <input type="checkbox"
									id="switch7" /> <label for="switch7" data-on-label="ON"
									data-off-label="OFF"></label>
							</div>
							<div class="setting-row">
								<span>Business account</span> <input type="checkbox"
									id="switch8" /> <label for="switch8" data-on-label="ON"
									data-off-label="OFF"></label>
							</div>
							<div class="setting-row">
								<span>Show me online</span> <input type="checkbox" id="switch9" />
								<label for="switch9" data-on-label="ON" data-off-label="OFF"></label>
							</div>
							<div class="setting-row">
								<span>Delete history</span> <input type="checkbox" id="switch10" />
								<label for="switch10" data-on-label="ON" data-off-label="OFF"></label>
							</div>
							<div class="setting-row">
								<span>Expose author name</span> <input type="checkbox"
									id="switch11" /> <label for="switch11" data-on-label="ON"
									data-off-label="OFF"></label>
							</div>
						</form>
					</div>
				</div>
			</nav>
		</div>
		<!-- responsive header -->

		<div class="topbar stick">
			<div class="logo">
				<a title="" href="newsfeed.html"><img
					src="resources/images/logo.png" alt=""></a>
			</div>

			<div class="top-area">
				<ul class="main-menu">
					<li><a href="#" title="">Home</a>
						<ul>
							<li><a href="index-2.html" title="">Home Social</a></li>
							<li><a href="index2.html" title="">Home Social 2</a></li>
							<li><a href="index-company.html" title="">Home Company</a></li>
							<li><a href="landing.html" title="">Login page</a></li>
							<li><a href="logout.html" title="">Logout Page</a></li>
							<li><a href="newsfeed.html" title="">news feed</a></li>
						</ul></li>
					<li><a href="#" title="">timeline</a>
						<ul>
							<li><a href="time-line.html" title="">timeline</a></li>
							<li><a href="timeline-friends.html" title="">timeline
									friends</a></li>
							<li><a href="timeline-groups.html" title="">timeline
									groups</a></li>
							<li><a href="timeline-pages.html" title="">timeline
									pages</a></li>
							<li><a href="timeline-photos.html" title="">timeline
									photos</a></li>
							<li><a href="timeline-videos.html" title="">timeline
									videos</a></li>
							<li><a href="fav-page.html" title="">favourit page</a></li>
							<li><a href="groups.html" title="">groups page</a></li>
							<li><a href="page-likers.html" title="">Likes page</a></li>
							<li><a href="people-nearby.html" title="">people nearby</a></li>
						</ul></li>
					<li><a href="#" title="">account settings</a>
						<ul>
							<li><a href="create-fav-page.html" title="">create fav
									page</a></li>
							<li><a href="edit-account-setting.html" title="">edit
									account setting</a></li>
							<li><a href="edit-interest.html" title="">edit-interest</a></li>
							<li><a href="edit-password.html" title="">edit-password</a></li>
							<li><a href="edit-profile-basic.html" title="">edit
									profile basics</a></li>
							<li><a href="edit-work-eductation.html" title="">edit
									work educations</a></li>
							<li><a href="messages.html" title="">message box</a></li>
							<li><a href="inbox.html" title="">Inbox</a></li>
							<li><a href="notifications.html" title="">notifications
									page</a></li>
						</ul></li>
					<li><a href="#" title="">more pages</a>
						<ul>
							<li><a href="404.html" title="">404 error page</a></li>
							<li><a href="about.html" title="">about</a></li>
							<li><a href="contact.html" title="">contact</a></li>
							<li><a href="faq.html" title="">faq's page</a></li>
							<li><a href="insights.html" title="">insights</a></li>
							<li><a href="knowledge-base.html" title="">knowledge
									base</a></li>
							<li><a href="widgets.html" title="">Widgts</a></li>
						</ul></li>
				</ul>
				<ul class="setting-area">
					<li><a href="#" title="Home" data-ripple=""><i
							class="ti-search"></i></a>
						<div class="searched">
							<form method="post" class="form-search">
								<input type="text" placeholder="Search Friend">
								<button data-ripple>
									<i class="ti-search"></i>
								</button>
							</form>
						</div></li>
					<li><a href="newsfeed.html" title="Home" data-ripple=""><i
							class="ti-home"></i></a></li>
					<li><a href="#" title="Notification" data-ripple=""> <i
							class="ti-bell"></i><span>20</span>
					</a>
						<div class="dropdowns">
							<span>4 New Notifications</span>
							<ul class="drops-menu">
								<li><a href="notifications.html" title=""> <img
										src="resources/images/resources/thumb-1.jpg" alt="">
										<div class="mesg-meta">
											<h6>sarah Loren</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag green">New</span></li>
								<li><a href="notifications.html" title=""> <img
										src="resources/images/resources/thumb-2.jpg" alt="">
										<div class="mesg-meta">
											<h6>Jhon doe</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag red">Reply</span></li>
								<li><a href="notifications.html" title=""> <img
										src="resources/images/resources/thumb-3.jpg" alt="">
										<div class="mesg-meta">
											<h6>Andrew</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag blue">Unseen</span></li>
								<li><a href="notifications.html" title=""> <img
										src="resources/images/resources/thumb-4.jpg" alt="">
										<div class="mesg-meta">
											<h6>Tom cruse</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag">New</span></li>
								<li><a href="notifications.html" title=""> <img
										src="resources/images/resources/thumb-5.jpg" alt="">
										<div class="mesg-meta">
											<h6>Amy</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag">New</span></li>
							</ul>
							<a href="notifications.html" title="" class="more-mesg">view
								more</a>
						</div></li>
					<li><a href="#" title="Messages" data-ripple=""><i
							class="ti-comment"></i><span>12</span></a>
						<div class="dropdowns">
							<span>5 New Messages</span>
							<ul class="drops-menu">
								<li><a href="notifications.html" title=""> <img
										src="resources/images/resources/thumb-1.jpg" alt="">
										<div class="mesg-meta">
											<h6>sarah Loren</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag green">New</span></li>
								<li><a href="notifications.html" title=""> <img
										src="resources/images/resources/thumb-2.jpg" alt="">
										<div class="mesg-meta">
											<h6>Jhon doe</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag red">Reply</span></li>
								<li><a href="notifications.html" title=""> <img
										src="resources/images/resources/thumb-3.jpg" alt="">
										<div class="mesg-meta">
											<h6>Andrew</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag blue">Unseen</span></li>
								<li><a href="notifications.html" title=""> <img
										src="resources/images/resources/thumb-4.jpg" alt="">
										<div class="mesg-meta">
											<h6>Tom cruse</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag">New</span></li>
								<li><a href="notifications.html" title=""> <img
										src="resources/images/resources/thumb-5.jpg" alt="">
										<div class="mesg-meta">
											<h6>Amy</h6>
											<span>Hi, how r u dear ...?</span> <i>2 min ago</i>
										</div>
								</a> <span class="tag">New</span></li>
							</ul>
							<a href="messages.html" title="" class="more-mesg">view more</a>
						</div></li>
					<li><a href="#" title="Languages" data-ripple=""><i
							class="fa fa-globe"></i></a>
						<div class="dropdowns languages">
							<a href="#" title=""><i class="ti-check"></i>English</a> <a
								href="#" title="">Arabic</a> <a href="#" title="">Dutch</a> <a
								href="#" title="">French</a>
						</div></li>
				</ul>
				<div class="user-img">
					<img src="resources/images/resources/admin.jpg" alt=""> <span
						class="status f-online"></span>
					<div class="user-setting">
						<a href="#" title=""><span class="status f-online"></span>online</a>
						<a href="#" title=""><span class="status f-away"></span>away</a> <a
							href="#" title=""><span class="status f-off"></span>offline</a> <a
							href="#" title=""><i class="ti-user"></i> view profile</a> <a
							href="#" title=""><i class="ti-pencil-alt"></i>edit profile</a> <a
							href="#" title=""><i class="ti-target"></i>activity log</a> <a
							href="#" title=""><i class="ti-settings"></i>account setting</a>
						<a href="#" title=""><i class="ti-power-off"></i>log out</a>
					</div>
				</div>
				<span class="ti-menu main-menu" data-ripple=""></span>
			</div>
		</div>
		<!-- topbar -->

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
												<li><i class="ti-clipboard"></i> <a
													href="newsfeed.html" title="">운동</a></li>
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

									</aside>
								</div>
								<!-- sidebar -->
								<div class="col-lg-6">
									<div class="central-meta">
										<div class="groups">
											<span><i class="fa fa-users"></i>모임 홍보 게시판</span>
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
															<a href="time-line.html" title="">마포구 걷기 모임</a>
														</h4>
														<span>운동 취미 친목</span>
														<p>
															<br>마포구의 걷기 좋은 산책로를 탐방하고 거니는 마포구민 친목 모임입니다^^<br>
															20대, 30대 위주로 구성되어 있으며, 활발히 활동 중이니 같이 걸어요~!
														</p>
														<a class="add-butn" data-toggle="modal"
															data-target="#prModal">상세보기</a>
													</div>
												</div> <!-- 게시글 모달로 보기 -->
												<div class="modal" id="prModal">
													<div class="modal-dialog">
														<div class="modal-content">
															<!-- Modal body -->
															<div class="modal-body">
																<form name=pr_join_form method=post>
																	<div class="viewpage">
																		<div class="prtitle">
																			<span>마포구 걷기 모임</span>
																			<p>이지연</p>
																		</div>
																		<div class="prcontent">
																			<p>
																				마포구의 걷기 좋은 산책로를 탐방하고 날이 좋을 때 번개 모임도 갖기도 합니다^^ 동네 친구
																				만들기에 딱! 놀러오세요~~ <br> 마포구의 걷기 좋은 산책로를 탐방하고 날이 좋을
																				때 번개 모임도 갖기도 합니다^^ 동네 친구 만들기에 딱! 놀러오세요~~ <br>
																				마포구의 걷기 좋은 산책로를 탐방하고 날이 좋을 때 번개 모임도 갖기도 합니다^^ 동네 친구
																				만들기에 딱! 놀러오세요~~ <br> 마포구의 걷기 좋은 산책로를 탐방하고 날이 좋을
																				때 번개 모임도 갖기도 합니다^^ 동네 친구 만들기에 딱! 놀러오세요~~
																			</p>
																		</div>
																		<div class=prsubmit>
																			<button type="button" class="add-butn">가입</button>
																			<button type="button" data-dismiss="modal"
																				class="add-butn">닫기</button>
																		</div>
																	</div>
																</form>
															</div>
														</div>
													</div>
												</div> <!-- 모달 끝 -->
											</li>
											<li>
												<div class="nearly-pepls">
													<figure>
														<a href="time-line.html" title=""><img
															src="resources/images/resources/group2.jpg" alt=""></a>
													</figure>
													<div class="pepl-info">
														<h4>
															<a href="time-line.html" title="">퇴근 후 감성충전</a>
														</h4>
														<span>독서 친목 모임</span>
														<p>
															<br>퇴근 후 직장인들끼리 모여 같이 책을 읽고 대화하는 모임입니다^^<br> 매
															달 한 권의 책을 선정하여 읽고 마지막 주 금요일에는 같이 토론도 해보아요~^^
														</p>
														</p>
														<a class="add-butn" data-toggle="modal"
															data-target="#prModal">상세보기</a>
													</div>
												</div> <!-- 게시글 모달로 보기 -->
												<div class="modal" id="prModal">
													<div class="modal-dialog">
														<div class="modal-content">
															<!-- Modal body -->
															<div class="modal-body">
																<form name=pr_join_form method=post>
																	<div class="viewpage">
																		<div class="prtitle">
																			<p>마포구를 중심으로 활동중인 친목 모임</p>
																		</div>
																		<div class="prcontent">
																			<p>마포구의 걷기 좋은 산책로를 탐방하고 날이 좋을 때 번개 모임도 갖기도 합니다^^
																				동네 친구 만들기에 딱! 놀러오세요~~</p>
																		</div>
																		<div class=prsubmit>
																			<button type="button" class="add-butn">가입</button>
																			<button type="button" data-dismiss="modal"
																				class="add-butn">닫기</button>
																		</div>
																	</div>
																</form>
															</div>
														</div>
													</div>
												</div> <!-- 모달 끝 -->
											</li>
											<li>
												<div class="nearly-pepls">
													<figure>
														<a href="time-line.html" title=""><img
															src="resources/images/resources/group3.jpg" alt=""></a>
													</figure>
													<div class="pepl-info">
														<h4>
															<a href="time-line.html" title="">오늘은 영어왕</a>
														</h4>
														<span>공부 언어 모임</span>
														<p>
															<br>더 이상 미룰 수 없다! 오늘은 영어왕이 되기 위한 사람들이 모인 곳!<br>
															다 같이 즐거운 스터디를 통해 영어왕이 되어보아요~ ^^
														</p>
														<a href="#" title="" class="add-butn" data-ripple="">가입하기</a>
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
															<a href="time-line.html" title="">공연이 좋다</a>
														</h4>
														<span>음악 공연 연극 친목</span>
														<p>
															<br>같이 공연 보러 갈 사람을 구하고 싶을 때! 우리 모임에서 함께 가요^^<br>
														</p>
														<a href="#" title="" class="add-butn" data-ripple="">가입하기</a>
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
															<a href="time-line.html" title="">마포구 걷기 모임</a>
														</h4>
														<span>운동 취미 친목</span>
														<p>
															<br>마포구의 걷기 좋은 산책로를 탐방하고 거니는 마포구민 친목 모임입니다^^<br>
															20대, 30대 위주로 구성되어 있으며, 활발히 활동 중이니 같이 걸어요~!
														</p>
														<a href="#" title="" class="add-butn" data-ripple="">가입하기</a>
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
															<a href="time-line.html" title="">마포구 걷기 모임</a>
														</h4>
														<span>운동 취미 친목</span>
														<p>
															<br>마포구의 걷기 좋은 산책로를 탐방하고 거니는 마포구민 친목 모임입니다^^<br>
															20대, 30대 위주로 구성되어 있으며, 활발히 활동 중이니 같이 걸어요~!
														</p>
														<a href="#" title="" class="add-butn" data-ripple="">가입하기</a>
													</div>
												</div>
											</li>
										</ul>
                                        <br><br><br>
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
																href="BoardList.bo?page=${page-1 }" class="page-link">이전</a>&nbsp;
															</li>
														</c:if>
														<c:forEach var="a" begin="${startpage }" end="${endpage }">
															<c:if test="${a == page }">
																<li class="page-item"><a class="page-link" href="#">${a }</a>
																</li>
															</c:if>
															<c:if test="${a != page }">
																<li class="page-item"><a
																	href="BoardList.bo?page=${a }" class="page-link">${a }</a>
																</li>
															</c:if>
														</c:forEach>
														<c:if test="${page >= maxpage }">
															<li class="page-item"><a class="page-link" href="#">&nbsp;다음</a>
															</li>
														</c:if>
														<c:if test="${page < maxpage }">
															<li class="page-item"><a
																href="BoardList.bo?page=${page+1 }" class="page-link">&nbsp;다음</a>
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

	<script data-cfasync="false"
		src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="resources/js/main.min.js"></script>
	<script src="resources/js/script.js"></script>
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