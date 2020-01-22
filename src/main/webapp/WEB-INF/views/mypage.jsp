<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>GROUP IN</title>
<link rel="icon" href="resources/images/fav.png" type="image/png"
	sizes="16x16">

<link rel="stylesheet" href="resources/css/main.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/color.css">
<link rel="stylesheet" href="resources/css/responsive.css">


<style>
.basics>li, .education>li {
	color: #999;
	font-size: 14px;
	margin-bottom: 20px;
	text-transform: none;
}
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
								<span>My profile</span> <input type="checkbox" id="switch4" /> <label
									for="switch4" data-on-label="ON" data-off-label="OFF"></label>
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
			<div class="feature-photo">
				<figure>
					<img src="resources/images/resources/timeline-1.jpg" alt="">
				</figure>

				<form class="edit-phto">
					<i class="fa fa-camera-retro"></i> <label class="fileContainer">
						배경 사진 변경 <input type="file" />
					</label>
				</form>
				<div class="container-fluid">
					<div class="row merged">
						<div class="col-lg-2 col-sm-3">
							<div class="user-avatar">
								<figure>
									<img src="resources/images/resources/user-avatar.jpg" alt="">
									<form class="edit-phto">
										<i class="fa fa-camera-retro"></i> <label
											class="fileContainer"> 프로필 사진 변경 <input type="file" />
										</label>
									</form>
								</figure>
							</div>
						</div>
						<div class="col-lg-10 col-sm-9">
							<div class="timeline-info">
								<ul>
									<li class="admin-name">
										<h5>이지연</h5> <span>일반 회원</span>
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
					<div class="row">
						<div class="col-lg-12">
							<div class="row" id="page-contents">
								<div class="col-lg-3">
									<aside class="sidebar static">
										<div class="widget">
											<h4 class="widget-title">정보 수정</h4>
											<ul class="naves">
												<li><i class="ti-info-alt"></i> <a title=""
													class="jungbo">기본 정보</a></li>
												<li><i class="ti-heart"></i> <a title="" class="gss">관심사</a>
												</li>

											</ul>
										</div>
										<div class="widget">
											<h4 class="widget-title">최근 참가한 모임</h4>
											<ul class="activitiez">
												<li>
													<div class="activity-meta">
														<i>2019-12-27</i> <span><a href="#" title="">2019
																슬픔의 케이팝 파티</a></span>
														<h6>
															by <a href="time-line.html">케즐모</a>
														</h6>
													</div>
												</li>
												<li>
													<div class="activity-meta">
														<i>2019-11-19</i> <span><a href="#" title="">남양주
																북한강 라이딩 정모</a></span>
														<h6>
															by <a href="time-line.html">자연이 좋다!!!</a>
														</h6>
													</div>
												</li>
												<li>
													<div class="activity-meta">
														<i>2019-10-30</i> <span><a href="#" title="">알고리즘
																스터디</a></span>
														<h6>
															by<a href="#">나는 나는 개발자</a>
														</h6>
													</div>
												</li>
											</ul>
										</div>
										<!-- recent activites -->
									</aside>
								</div>
								<!-- sidebar -->
								<div class="col-lg-6">
									<div class="central-meta">
										<div class="about">
											<div class="personal">
												<h5 class="f-title">
													<i class="ti-info-alt"></i>회원 정보
												</h5>
											</div>
											<div class="d-flex flex-row mt-2">
												<ul class="nav nav-tabs nav-tabs--vertical nav-tabs--left">
													<li class="nav-item"><a href="#basic"
														class="nav-link active" data-toggle="tab">기본 정보</a></li>
													<li class="nav-item"><a href="#interest"
														class="nav-link" data-toggle="tab">관심사</a></li>
												</ul>
												<div class="tab-content">
													<div class="tab-pane fade show active" id="basic">
														<ul class="basics">
															<input type="hidden" name="userid" value="${id }"
																id="user">
															<li><i class="ti-user"></i>${id}</li>
															<li><i class="ti-map-alt"></i>${mypage.userLocation}</li>
															<li><i class="ti-email"></i>${mypage.userEmail}</li>
															<li><i class="ti-calendar"></i>${mypage.userJoinDate}</li>
														</ul>
													</div>
													<div class="tab-pane fade" id="interest" role="tabpanel">
														<ul class="basics">
															<input type="hidden" name="USER_ID" value="${id }"
																id="USER_ID">
															<li>인터넷</li>
															<li>등산</li>
															<li>음악</li>
															<li>춤</li>
															<li>게임</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="central-meta">
										<div class="frnds">
											<ul class="nav nav-tabs">
												<li class="nav-item"><a class="active" href="#frends"
													data-toggle="tab">가입한 모임</a> <span>5</span></li>
												<li class="nav-item"><a class="" href="#frends-req"
													data-toggle="tab">만든 모임</a><span>3</span></li>
											</ul>

											<!-- Tab panes -->
											<div class="tab-content">
												<div class="tab-pane active fade show " id="frends">
													<ul class="nearby-contct">

														<li>
															<div class="nearly-pepls">
																<figure>
																	<a href="time-line.html" title=""><img
																		src="resources/images/resources/nearly1.jpg" alt=""></a>
																</figure>
																<div class="pepl-info">
																	<h4>
																		<a href="time-line.html" title="">케즐모</a>
																	</h4>
																	<span>케이팝을 즐기는 모임</span>
																	<!-- <a href="#" title="" class="add-butn more-action" data-ripple="">unfriend</a> -->
																	<a href="#" title="" class="add-butn" data-ripple="">모임
																		탈퇴</a>

																</div>
																
															</div>
														</li>
														<li>
															<div class="nearly-pepls">
																<figure>
																	<a href="time-line.html" title=""><img
																		src="resources/images/resources/friend-avatar9.jpg"
																		alt=""></a>
																</figure>
																<div class="pepl-info">
																	<h4>
																		<a href="time-line.html" title="">도시탐험가들</a>
																	</h4>
																	<span>이곳저곳을 탐방하는 모임입니다</span> <a href="#" title=""
																		class="add-butn" data-ripple="">모임 탈퇴</a>
																</div>
															</div>
														</li>
														<li>
															<div class="nearly-pepls">
																<figure>
																	<a href="time-line.html" title=""><img
																		src="resources/images/resources/nearly6.jpg" alt=""></a>
																</figure>
																<div class="pepl-info">
																	<h4>
																		<a href="time-line.html" title="">365일 춤만 출래 예예예
																			미러미러미러</a>
																	</h4>
																	<span>취미로 춤추는 사람들의 모임</span> <a href="#" title=""
																		class="add-butn" data-ripple="">모임 탈퇴</a>
																</div>
															</div>
														</li>
														<li>
															<div class="nearly-pepls">
																<figure>
																	<a href="time-line.html" title=""><img
																		src="resources/images/resources/nearly2.jpg" alt=""></a>
																</figure>
																<div class="pepl-info">
																	<h4>
																		<a href="time-line.html" title="">뷰파인더</a>
																	</h4>
																	<span>사진 속에 많은 것을 담아내고 싶은 사람들의 모임입니다^^</span> <a
																		href="#" title="" class="add-butn" data-ripple="">모임
																		탈퇴</a>
																</div>
															</div>
														</li>
													</ul>
													<div class="lodmore">
														<button class="btn-view btn-load-more"></button>
													</div>
												</div>
												<!-- 내가 만든 모임 -->
												<div class="tab-pane fade" id="frends-req">
													<ul class="nearby-contct">
														<li>
															<div class="nearly-pepls">
																<figure>
																	<a href="time-line.html" title=""><img
																		src="resources/images/resources/nearly5.jpg" alt=""></a>
																</figure>
																<div class="pepl-info">
																	<h4>
																		<a href="time-line.html" title="">자연이 좋다!!!</a>
																	</h4>
																	<span>산과 강과 들로 나가는 사람들</span> <a href="#" title=""
																		class="add-butn" data-ripple="">모임 관리</a>
																</div>
															</div>
														</li>

														<li>
															<div class="nearly-pepls">
																<figure>
																	<a href="time-line.html" title=""><img
																		src="resources/images/resources/friend-avatar9.jpg"
																		alt=""></a>
																</figure>
																<div class="pepl-info">
																	<h4>
																		<a href="time-line.html" title="">은평구 소모임</a>
																	</h4>
																	<span>은평구 동네친구</span> <a href="#" title=""
																		class="add-butn" data-ripple="">모임 관리</a>
																</div>
															</div>
														</li>
														<li>
															<div class="nearly-pepls">
																<figure>
																	<a href="time-line.html" title=""><img
																		src="resources/images/resources/nearly2.jpg" alt=""></a>
																</figure>
																<div class="pepl-info">
																	<h4>
																		<a href="time-line.html" title="">등산조아</a>
																	</h4>
																	<span>주말에 산 오르는 사람들의 모임</span> <a href="#" title=""
																		class="add-butn" data-ripple="">모임 관리</a>
																</div>
															</div>
														</li>

													</ul>
													<button class="btn-view btn-load-more"></button>
												</div>
											</div>
										</div>
									</div>

								</div>

								<div class="col-lg-3">
									<aside class="sidebar static">
										<div class="widget">
											<div class="editing-interest">
												<h4 class="widget-title">
													<i class="ti-bell"></i>최근 쪽지
												</h4>
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
														<i>1시간 전</i> <span><a href="#" title="">새로운
																공지사항이 올라왔습니다. </a></span>
														<h6>
															by <a href="time-line.html">케즐모</a>
														</h6>
													</div>
												</li>
												<li>
													<div class="activity-meta">
														<i>3시간 전</i> <span><a href="#" title="">새로운 일정이
																등록되었습니다.</a></span>
														<h6>
															by <a href="time-line.html">자연이 좋다!!!</a>
														</h6>
													</div>
												</li>
												<li>
													<div class="activity-meta">
														<i>2일 전</i> <span><a href="#" title="">가입이
																승인되었습니다.</a></span>
														<h6>
															by<a href="#">365일 춤만 출래 예예예 미러미러미러</a>
														</h6>
													</div>
												</li>
											</ul>
										</div>
										<!-- recent activites -->
									</aside>
								</div>
								<!-- sidebar -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<footer>
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4">
						<div class="widget">
							<div class="foot-logo">
								<div class="logo">
									<a href="index-2.html" title=""><img
										src="resources/images/logo.png" alt=""></a>
								</div>
								<p>The trio took this simple idea and built it into the
									world’s leading carpooling platform.</p>
							</div>
							<ul class="location">
								<li><i class="ti-map-alt"></i>
									<p>33 new montgomery st.750 san francisco, CA USA 94105.</p></li>
								<li><i class="ti-mobile"></i>
									<p>+1-56-346 345</p></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-4">
						<div class="widget">
							<div class="widget-title">
								<h4>follow</h4>
							</div>
							<ul class="list-style">
								<li><i class="fa fa-facebook-square"></i> <a
									href="https://web.facebook.com/shopcircut/" title="">facebook</a></li>
								<li><i class="fa fa-twitter-square"></i><a
									href="https://twitter.com/login?lang=en" title="">twitter</a></li>
								<li><i class="fa fa-instagram"></i><a
									href="https://www.instagram.com/?hl=en" title="">instagram</a></li>
								<li><i class="fa fa-google-plus-square"></i> <a
									href="https://plus.google.com/discover" title="">Google+</a></li>
								<li><i class="fa fa-pinterest-square"></i> <a
									href="https://www.pinterest.com/" title="">Pintrest</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-4">
						<div class="widget">
							<div class="widget-title">
								<h4>Navigate</h4>
							</div>
							<ul class="list-style">
								<li><a href="about.html" title="">about us</a></li>
								<li><a href="contact.html" title="">contact us</a></li>
								<li><a href="terms.html" title="">terms & Conditions</a></li>
								<li><a href="#" title="">RSS syndication</a></li>
								<li><a href="sitemap.html" title="">Sitemap</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-4">
						<div class="widget">
							<div class="widget-title">
								<h4>useful links</h4>
							</div>
							<ul class="list-style">
								<li><a href="#" title="">leasing</a></li>
								<li><a href="#" title="">submit route</a></li>
								<li><a href="#" title="">how does it work?</a></li>
								<li><a href="#" title="">agent listings</a></li>
								<li><a href="#" title="">view All</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-4">
						<div class="widget">
							<div class="widget-title">
								<h4>download apps</h4>
							</div>
							<ul class="colla-apps">
								<li><a href="https://play.google.com/store?hl=en" title=""><i
										class="fa fa-android"></i>android</a></li>
								<li><a href="https://www.apple.com/lae/ios/app-store/"
									title=""><i class="ti-apple"></i>iPhone</a></li>
								<li><a href="https://www.microsoft.com/store/apps" title=""><i
										class="fa fa-windows"></i>Windows</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- footer -->
		<div class="bottombar">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<span class="copyright"><a target="_blank"
							href="https://www.templateshub.net">Templates Hub</a></span> <i><img
							src="resources/images/credit-cards.png" alt=""></i>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="side-panel">
		<h4 class="panel-title">General Setting</h4>
		<form method="post">
			<div class="setting-row">
				<span>use night mode</span> <input type="checkbox" id="nightmode1" />
				<label for="nightmode1" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Notifications</span> <input type="checkbox" id="switch22" />
				<label for="switch22" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Notification sound</span> <input type="checkbox" id="switch33" />
				<label for="switch33" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>My profile</span> <input type="checkbox" id="switch44" /> <label
					for="switch44" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Show profile</span> <input type="checkbox" id="switch55" /> <label
					for="switch55" data-on-label="ON" data-off-label="OFF"></label>
			</div>
		</form>
		<h4 class="panel-title">Account Setting</h4>
		<form method="post">
			<div class="setting-row">
				<span>Sub users</span> <input type="checkbox" id="switch66" /> <label
					for="switch66" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>personal account</span> <input type="checkbox" id="switch77" />
				<label for="switch77" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Business account</span> <input type="checkbox" id="switch88" />
				<label for="switch88" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Show me online</span> <input type="checkbox" id="switch99" />
				<label for="switch99" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Delete history</span> <input type="checkbox" id="switch101" />
				<label for="switch101" data-on-label="ON" data-off-label="OFF"></label>
			</div>
			<div class="setting-row">
				<span>Expose author name</span> <input type="checkbox"
					id="switch111" /> <label for="switch111" data-on-label="ON"
					data-off-label="OFF"></label>
			</div>
		</form>
	</div>
	<!-- side panel -->

	<script data-cfasync="false"
		src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="resources/js/main.min.js"></script>
	<script src="resources/js/script.js"></script>
	<script src="resources/js/map-init.js"></script>
	<script src="resources/js/main.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8c55_YHLvDHGACkQscgbGLtLRdxBDCfI"></script>
	<script data-cfasync="false"
		src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="resources/js/main.min.js"></script>
	<script src="resources/js/script.js"></script>
	<script src="resources/js/map-init.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8c55_YHLvDHGACkQscgbGLtLRdxBDCfI"></script>
	<script>
		//회원 정보 수정 이동
		$(".jungbo").click(function() {
			location.href = "mypage2";
		});

		//회원 관심사 수정 이동
		$(".gss").click(function() {
			location.href = "mypage3";
		});
		
		//아 근데 비밀번호 암호화라서... 될랑가 모르겠네 일단 보류..
		function exitGroup() {       
			var pass = prompt('탈퇴하려면 비밀번호를 입력하세요.');
			
			if(pass == userpassword){
				alert('탈퇴 되었습니다.');
			}
			else{
				alert('비밀번호 불일치로 탈퇴 실패');
			}
			
		}
		

		function getInterest() {
			$.ajax({
				type : "post",
				url : "mypage2",
				data : {
					"userId" : $("#userId").val()
				},
				dataType : "json",
				success : function(rdata) {
					if (rdata.length > 0) {
						$("#interest").text('');
						output = '';
						$(rdata).each(function() {
							output += "<span>" + this.interest + "</span>";

						})
						$("#Interests").append(output);
					}
				}
			}) //ajax end
		}//function end
		console.log("test");
		getInterests();
	</script>
</body>

</html>