<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Winku Social Network Toolkit</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="icon" href="resources/images/fav.png" type="image/png"
	sizes="16x16">

<link rel="stylesheet" href="resources/css/main.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/color.css">
<link rel="stylesheet" href="resources/css/responsive.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<style>
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

a.add-butn.more-action {
	right: 89px;
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
										<h4 class="widget-title">관리자 메뉴</h4>
										<ul class="naves">
											<li>
												<i class="ti-clipboard"></i>
												<a href="admin" title="">통계</a>
											</li>
											<li>
												<i class="fas fa-user"></i>
												<a href="adminusers" title="">회원</a>
											</li>
											<li>
												<i class="fas fa-users"></i>
												<a href="admingroup" title="">모임</a>
											</li>
											
											<li>
												<i class="fas fa-align-justify"></i>
												<a href="admincategory" title="">카테고리</a>
											</li>
											
											<li>
												<i class="fas fa-clipboard"></i>
												<a href="adminnotice" title="">공지사항</a>
											</li>
											
										</ul>
									</div>
									<!-- 관리자 메뉴 -->


									</aside>
								</div>
								<!-- sidebar -->
								<div class="col-lg-6">
									<div class="central-meta">
										<div class="frnds">


											<ul class="nav nav-tabs">
												<li class="nav-item"><c:choose>
														<c:when test="${type == 1 }">
															<a class="active" href="#frends" data-toggle="tab">일반
																회원</a>
															<span>${glistcount }</span>

														</c:when>
														<c:otherwise>
															<a href="#frends" data-toggle="tab">일반 회원</a>
															<span>${glistcount }</span>

														</c:otherwise>
													</c:choose></li>



												<li class="nav-item"><c:choose>
														<c:when test="${type == 2 }">
															<a class="active" href="#frends-req" data-toggle="tab">탈퇴
																예정 회원</a>
															<span>${jlistcount }</span>
														</c:when>
														<c:otherwise>
															<a href="#frends-req" data-toggle="tab">탈퇴 예정 회원</a>
															<span>${jlistcount }</span>
														</c:otherwise>
													</c:choose></li>



												<li class="nav-item"><c:choose>
														<c:when test="${type == 3 }">
															<a class="active" href="#taluser" data-toggle="tab">강제 탈퇴 회원</a>
															<span>${tlistcount }</span>
														</c:when>
														<c:otherwise>
															<a href="#taluser" data-toggle="tab">강제 탈퇴 회원</a>
															<span>${tlistcount }</span>
														</c:otherwise>
													</c:choose></li>
													
													<li class="nav-item"><c:choose>
														<c:when test="${type == 4 }">
															<a class="active" href="#stopuser" data-toggle="tab">정지 회원</a>
															<span>${stoplistcount }</span>
														</c:when>
														<c:otherwise>
															<a href="#stopuser" data-toggle="tab">정지 회원</a>
															<span>${stoplistcount }</span>
														</c:otherwise>
													</c:choose></li>
											</ul>
											<span id="searchDir"></span>
											<!-- Tab panes -->
											<div class="tab-content">



												<div class="tab-pane fade " id="searchResult">

													<ul class="nearby-contct">
													</ul>

												</div>


												<div class="tab-pane fade " id="frends">

													<ul class="nearby-contct">
														<c:forEach items="${gallList}" var="item">
															<li>
																<div class="nearly-pepls">
																	<figure>
																		<a id="check" data-toggle="modal"
																			data-target="#exampleModal" class="modalclick"
																			data-userkey='${item.userKey }'
																			data-userid='${item.userId }'
																			data-logintype='${item.logintype}'
																			data-location='${item.locationName}'
																			data-age='${item.userAge}'
																			data-gender='${item.gender}'
																			data-joindate='${item.userJoinDate}'><img
																			src="resources/images/resources/friend-avatar9.jpg"
																			alt=""></a>
																	</figure>
																	<div class="pepl-info">
																		<h4>
																			<a id="check" data-toggle="modal"
																				data-target="#exampleModal" title=""
																				class="modalclick" data-userkey='${item.userKey }'
																				data-userid='${item.userId }'
																				data-logintype='${item.logintype}'
																				data-location='${item.locationName}'
																				data-age='${item.userAge}'
																				data-gender='${item.gender}'
																				data-joindate='${item.userJoinDate}'>${item.userId }</a>
																		</h4>
																		<c:choose>
																			<c:when test="${item.logintype == 1}">
																				<span>카카오톡 가입 유저</span>
																			</c:when>
																			<c:otherwise>
																				<span>일반 가입 유저</span>
																			</c:otherwise>
																		</c:choose>

																		<c:choose>
																			<c:when test="${item.userStatus == 0}">
																				<span>정상</span>
																			</c:when>
																			<c:when test="${item.userStatus == 1}">
																				<span>탈퇴 예정</span>
																			</c:when>
																			<c:when test="${item.userStatus == 2}">
																				<span>강제 탈퇴</span>
																			</c:when>
																			<c:otherwise>
																				<span>정지</span>
																			</c:otherwise>
																		</c:choose>

																		<a href="javascript:deleteuser('${item.userId }');"
																			title="" class="add-butn more-action" data-ripple="">탈퇴</a>
																		<a href="#" title="" class="add-butn" data-ripple="">쪽지
																			보내기</a>
																	</div>
																</div>
															</li>

														</c:forEach>



													</ul>
													<div class="lodmore">
														<button class="btn-view btn-load-more"></button>
													</div>
												</div>
												
												
												<div class="tab-pane fade" id="frends-req">
													<ul class="nearby-contct">
														<c:forEach items="${jallList}" var="item">
															<li>
																<div class="nearly-pepls">
																	<figure>
																		<a id="check" data-toggle="modal"
																			data-target="#exampleModal" class="modalclick"
																			data-userkey='${item.userKey }'
																			data-userid='${item.userId }'
																			data-logintype='${item.logintype}'
																			data-location='${item.locationName}'
																			data-age='${item.userAge}'
																			data-gender='${item.gender}'
																			data-joindate='${item.userJoinDate}'><img
																			src="resources/images/resources/friend-avatar9.jpg"
																			alt=""></a>
																	</figure>
																	<div class="pepl-info">
																		<h4>
																			<a id="check" data-toggle="modal"
																				data-target="#exampleModal" title=""
																				class="modalclick" data-userkey='${item.userKey }'
																				data-userid='${item.userId }'
																				data-logintype='${item.logintype}'
																				data-location='${item.locationName}'
																				data-age='${item.userAge}'
																				data-gender='${item.gender}'
																				data-joindate='${item.userJoinDate}'>${item.userId }</a>
																		</h4>
																		<c:choose>
																			<c:when test="${item.logintype == 1}">
																				<span>카카오톡 가입 유저</span>
																			</c:when>
																			<c:otherwise>
																				<span>일반 가입 유저</span>
																			</c:otherwise>
																		</c:choose>

																		<c:choose>
																			<c:when test="${item.userStatus == 0}">
																				<span>정상</span>
																			</c:when>
																			<c:when test="${item.userStatus == 1}">
																				<span>탈퇴 예정</span>
																			</c:when>
																			<c:when test="${item.userStatus == 2}">
																				<span>강제 탈퇴</span>
																			</c:when>
																			<c:otherwise>
																				<span>정지</span>
																			</c:otherwise>
																		</c:choose>

																		<a href="#" title="" class="add-butn" data-ripple="">복구</a>
																	</div>
																</div>
															</li>

														</c:forEach>

													</ul>
													<button class="btn-view btn-load-more"></button>
												</div>
												
												
												
												<div class="tab-pane fade" id="taluser">
													<ul class="nearby-contct">
														<c:forEach items="${tallList}" var="item">
															<li>
																<div class="nearly-pepls">
																	<figure>
																		<a id="check" data-toggle="modal"
																			data-target="#exampleModal" class="modalclick"
																			data-userkey='${item.userKey }'
																			data-userid='${item.userId }'
																			data-logintype='${item.logintype}'
																			data-location='${item.locationName}'
																			data-age='${item.userAge}'
																			data-gender='${item.gender}'
																			data-joindate='${item.userJoinDate}'><img
																			src="resources/images/resources/friend-avatar9.jpg"
																			alt=""></a>
																	</figure>
																	<div class="pepl-info">
																		<h4>
																			<a id="check" data-toggle="modal"
																				data-target="#exampleModal" title=""
																				class="modalclick" data-userkey='${item.userKey }'
																				data-userid='${item.userId }'
																				data-logintype='${item.logintype}'
																				data-location='${item.locationName}'
																				data-age='${item.userAge}'
																				data-gender='${item.gender}'
																				data-joindate='${item.userJoinDate}'>${item.userId }</a>
																		</h4>
																		<c:choose>
																			<c:when test="${item.logintype == 1}">
																				<span>카카오톡 가입 유저</span>
																			</c:when>
																			<c:otherwise>
																				<span>일반 가입 유저</span>
																			</c:otherwise>
																		</c:choose>

																		<c:choose>
																			<c:when test="${item.userStatus == 0}">
																				<span>정상</span>
																			</c:when>
																			<c:when test="${item.userStatus == 1}">
																				<span>탈퇴 예정</span>
																			</c:when>
																			<c:when test="${item.userStatus == 2}">
																				<span>강제 탈퇴</span>
																			</c:when>
																			<c:otherwise>
																				<span>정지</span>
																			</c:otherwise>
																		</c:choose>

																		
																	</div>
																</div>
															</li>

														</c:forEach>

													</ul>
													<button class="btn-view btn-load-more"></button>
												</div>
												
												
												
												
												<div class="tab-pane fade" id="stopuser">
													<ul class="nearby-contct">
														<c:forEach items="${stopallList}" var="item">
															<li>
																<div class="nearly-pepls">
																	<figure>
																		<a id="check" data-toggle="modal"
																			data-target="#exampleModal" class="modalclick"
																			data-userkey='${item.userKey }'
																			data-userid='${item.userId }'
																			data-logintype='${item.logintype}'
																			data-location='${item.locationName}'
																			data-age='${item.userAge}'
																			data-gender='${item.gender}'
																			data-joindate='${item.userJoinDate}'><img
																			src="resources/images/resources/friend-avatar9.jpg"
																			alt=""></a>
																	</figure>
																	<div class="pepl-info">
																		<h4>
																			<a id="check" data-toggle="modal"
																				data-target="#exampleModal" title=""
																				class="modalclick" data-userkey='${item.userKey }'
																				data-userid='${item.userId }'
																				data-logintype='${item.logintype}'
																				data-location='${item.locationName}'
																				data-age='${item.userAge}'
																				data-gender='${item.gender}'
																				data-joindate='${item.userJoinDate}'>${item.userId }</a>
																		</h4>
																		<c:choose>
																			<c:when test="${item.logintype == 1}">
																				<span>카카오톡 가입 유저</span>
																			</c:when>
																			<c:otherwise>
																				<span>일반 가입 유저</span>
																			</c:otherwise>
																		</c:choose>

																		<c:choose>
																			<c:when test="${item.userStatus == 0}">
																				<span>정상</span>
																			</c:when>
																			<c:when test="${item.userStatus == 1}">
																				<span>탈퇴 예정</span>
																			</c:when>
																			<c:when test="${item.userStatus == 2}">
																				<span>강제 탈퇴</span>
																			</c:when>
																			<c:otherwise>
																				<span>정지</span>
																			</c:otherwise>
																		</c:choose>

																		<a href="#" title="" class="add-butn" data-ripple="">복구</a>
																	</div>
																</div>
															</li>

														</c:forEach>

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
											<h4 class="widget-title">신고 목록</h4>
											<ul class="followers" style="max-height: 400px;">
												<c:forEach items="${policeResult }" var="item">
													<li><span>${item.userid }</span>
														<p>총 ${item.count }번 신고</p>
														<div></div></li>
												</c:forEach>
											</ul>
										</div>
										<!-- who's following -->

									</aside>
								</div>
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


	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">회원 정보</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="widget">

						아이디
						<p></p>

						로그인 타입
						<p></p>

						지역
						<p></p>

						연령대
						<p></p>

						성별
						<p></p>

						관심사
						<p></p>

						가입날짜
						<p></p>

					</div>
					<!-- profile intro widget -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>

				</div>
			</div>
		</div>
	</div>

	<script src="resources/js/main.min.js"></script>

	<script src="resources/js/script.js"></script>
	<script>
		var type = "${type}";
		
		var page0, page1, page2, page3;

		//타입에 따라 열려있는 page가 다름
		if (type == 1) {

			showContent(1);
			page0 = "${page}";
			page1 = 1;
			page2 = 1;
			page3 = 1;
		} else if(type == 2){
			showContent(2);
			page0 = 1;
			page1 = "${page}";
			page2 = 1;
			page3 = 1;
		}else if(type == 3){
			showContent(3);
			page0 = 1;
			page1 = 1;
			page2 = "${page}";
			page3 = 1;
		}else {
			showContent(4);
			page0 = 1;
			page1 = 1;
			page2 = 1;
			page3 = "${page}";
		}

	

		//더보기 버튼 클릭 시
		$('.btn-load-more').click(function() {
			type = ($(this).index())+1;

			// type 1 : 일반 유저 목록 불러오기
			// type 2 : 탈퇴 예정 목록 불러오기
			// type 3 : 강제탈퇴 목록 불러오기
			// type 4 : 정지 목록 불러오기
			
			var data = {
				"type" : type,
				"page" : type == 1 ? ++page0 : type == 2 ? 
						++page1 : type == 3 ? 
						++page2 : ++page3
			};

			//ajax로 목록 불러오기
			$.ajax({
				method : "post",
				url : "adminusers",
				data : data,
				success : function(result) {
					console.log(result);

					var html = print(result);

					//일반회원 목록 더불러온거임
					if (type == 1) {

						$('#frends ul').append(html);

						//탈퇴예정회원 목록 더불러온거임
					} else if(type == 2){

						$('#frends-req ul').append(html);
					} else if(type == 3){

						$('#taluser ul').append(html);
					}else {

						$('#stopuser ul').append(html);
					}

				}

			});

		});

		//모달에 회원 상세정보 넣기
		$(document).on("click", "#check", function(event) {

			var userkey = $(this).data('userkey');
			var userId = $(this).data('userid');
			var logintype = $(this).data('logintype');
			var location = $(this).data('location');
			var age = $(this).data('age');
			var gender = $(this).data('gender');
			var joindate = $(this).data('joindate');

			$('.modal-body p:eq(0)').text(userId);
			$('.modal-body p:eq(1)').text(logintype == '1' ? '카카오톡' : '일반 유저');
			$('.modal-body p:eq(2)').text(location);
			$('.modal-body p:eq(3)').text(age * 10);

			$('.modal-body p:eq(4)').text(gender == 'M' ? '남' : '여');
			$('.modal-body p:eq(6)').text(getFormatDate(new Date(joindate)));

			//관심사 정보
			$.ajax({
				url : "adminusercategory",
				data : {
					"id" : userkey
				},
				method : "post",
				success : function(result) {

					var text1 = "";

					for (var j = 0; j < result.length; j++)
						text1 += result[j] + " ";
					$('.modal-body p:eq(5)').text(text1);
				}

			});

		});

		//유저 강제탈퇴시키기
		function deleteuser(id) {

			var delConfirm = confirm('해당 회원을 탈퇴시키겠습니까?');

			if (delConfirm) {

				//해당 유저 강제탈퇴시키기
				$.ajax({
					url : "AdmindeleteUser",
					data : {
						"id" : id
					},
					method : "post",
					success : function(result) {

						if (result == 1) {
							alert('강제탈퇴 되었습니다.');
							location.href = "adminusers";
						}
					}

				});

			}

		}
		//날짜 표시 형식
		function getFormatDate(date) {
			var year = date.getFullYear(); //yyyy
			var month = (1 + date.getMonth()); //M
			month = month >= 10 ? month : '0' + month; //month 두자리로 저장
			var day = date.getDate(); //d
			day = day >= 10 ? day : '0' + day; //day 두자리로 저장
			return year + '-' + month + '-' + day;
		}

		//검색
		var form = $("<form>").attr({
			"class" : "filterform",
			"action" : "#"
		});
		var input = $("<input>").attr({
			"class" : "filterinput",
			"type" : "text",
			"placeholder" : "아이디를 입력하세요..."
		});

		$(form).append(input).appendTo($("#searchDir"));
		$(form).submit(function() {
			return false;
		});

		$(input).keyup(function() {
			var text = $(this).val();

			if (text) {
				//검색어가 있을 경우 detail 버튼 숨기기
				$('.btn-load-more').css('display', 'none');

				//해당 검색어로 ajax 검색하기
				$.ajax({

					url : "AdminSearchUser",
					data : {
						"keyword" : text
					},
					method : "post",
					success : function(list) {
						console.log(list);

						if (list.length > 0) {
							var html1 = print(list);
							$('#searchResult .nearby-contct').html(html1);

						}
					}

				});

				showContent(0);

			} else {

				showContent(type);

				//검색어가 없을 경우 detail 버튼 보이기
				$('.btn-load-more').css('display', 'block');
			}

		});

		//어떤 탭 눌렀는지 확인
		$('.nav-item a').click(function() {
			if ($(this).text() == '일반 회원')
				type = 1;
			else if($(this).text() == '탈퇴 예정 회원')
				type = 2;
			else if($(this).text() == '강제 탈퇴 회원')
				type = 3;
			else 
				type = 4;

		});

		function showContent(position) {

			$('.tab-pane:eq(' + position + ')').addClass('active');
			$('.tab-pane:eq(' + position + ')').addClass('show');
			$('.tab-pane:eq(' + position + ')').siblings()
					.removeClass('active');
			$('.tab-pane:eq(' + position + ')').siblings().removeClass('show');

		}
		function print(result) {

			var html = "";
			for (var i = 0; i < result.length; i++) {

				html += '<li>';
				html += '<div class="nearly-pepls">';
				html += '<figure>';
				html += '	<a id="check" data-toggle="modal" data-target="#exampleModal"';
				html += 'class="modalclick"';
				
				html += ' data-userkey="'+result[i].userKey+'"';
				html += ' data-userid="'+result[i].userId+'"';
				html += ' data-logintype="'+result[i].logintype+'"';
				html += ' data-location="'+result[i].locationName+'"';
				html += ' data-age="'+result[i].userAge+'"';
				html += ' data-gender="'+result[i].gender+'"';
				html += ' data-joindate="'+result[i].userJoinDate+'"';
				html += '><img';
				html += ' src="resources/images/resources/friend-avatar9.jpg"';
				html += 'alt=""></a>';
				html += '</figure>';
				html += '<div class="pepl-info">';
				html += '<h4>';
				html += '<a id="check" data-toggle="modal" data-target="#exampleModal"';
				html += 'title=""';
				html += 'class="modalclick"';
				html += ' data-userkey="'+result[i].userKey+'"';
				html += ' data-userid="'+result[i].userId+'"';
				html += ' data-logintype="'+result[i].logintype+'"';
				html += ' data-location="'+result[i].locationName+'"';
				html += ' data-age="'+result[i].userAge+'"';
				html += ' data-gender="'+result[i].gender+'"';
				html += ' data-joindate="'+result[i].userJoinDate+'"';
				html += '>'
						+ result[i].userId + '</a>';
				html += '</h4>';
				if (result[i].logintype == 1)
					html += '<span>카카오톡 가입 유저</span>';
				else
					html += '<span>일반 가입 유저</span>';

				if (result[i].userStatus == 0) {
					html += '<span>정상</span>';
					html += '<a href="javascript:deleteuser('
							+ result[i].userId
							+ ');" title="" class="add-butn more-action"';
					html += 'data-ripple="">탈퇴</a> ';

					html += '<a href="#" title=""';
				html += 'class="add-butn" data-ripple="">쪽지 보내기</a>';
				} else if (result[i].userStatus == 1) {
					html += '<span>탈퇴 예정</span>';
					html += '<a href="#" title="" class="add-butn" data-ripple="">복구</a>';
				} else if (result[i].userStatus == 2) {
					html += '<span>강제 탈퇴</span>';
				} else {
					html += '<span>정지</span>';
					html += '<a href="#" title="" class="add-butn" data-ripple="">복구</a>';
				}

				html += '</div>';
				html += '</div>';
				html += '</li>';

			}

			return html;

		}
	</script>
</body>

</html>