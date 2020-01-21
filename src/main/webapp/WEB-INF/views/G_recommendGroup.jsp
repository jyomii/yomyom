<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<title>모임 추천 페이지 timeline-groups.jsp</title>
	<link rel="icon" href="resources/images/fav.png" type="image/png" sizes="16x16">
	
	<link rel="stylesheet" href="resources/css/main.min.css">
	<link rel="stylesheet" href="resources/css/style.css">
	<link rel="stylesheet" href="resources/css/color.css">
	<link rel="stylesheet" href="resources/css/responsive.css">
	<style>
		.segmented > a.selected {color : #fff; background : #b2b8bb;}
		
		.segmented > a.first {
		    border-top-left-radius: 5px;
		    border-bottom-left-radius: 5px;
		}    
		
		.segmented > a {
		    display: block;
		    float: left;
		    overflow: hidden;
		    height: 14px;
		    min-width: 37px;
		    margin-left: -1px;
		    padding: 7px 15px;
		    font-size: 13px;
		    color: #757271;
		    text-align: center;
		    text-decoration: none;
		    border: 1px solid #b2b7ba;
		}	
		
		.segmented > a.last, .segmented > span.last {
		    border-top-right-radius: 5px;
		    border-bottom-right-radius: 5px;
		}	    
	</style>
</head>
<body>
	<nav id="shoppingbag" class="mm-menu mm-offcanvas mm-right"
		aria-hidden="true">
		<div class="mm-panels">
			<div class="mm-panel mm-hasnavbar mm-opened" id="mm-11">
				<div class="mm-navbar">
					<a class="mm-title">General Setting</a>
				</div>
				<div class="">
					<form method="post">
					</form>
					<h4 class="panel-title">Account Setting</h4>
					<form method="post">
					</form>
				</div>
			</div>
		</div>
	</nav>
	<nav id="menu" class="res-menu mm-menu mm-offcanvas" aria-hidden="true">
		<div class="mm-panels">
			<div class="mm-panel mm-hasnavbar mm-opened" id="mm-1">
				<div class="mm-navbar">
					<a class="mm-title">Menu</a>
				</div>
				<ul class="mm-listview">
					<li><a class="mm-next mm-fullsubopen" href="#mm-2"
						aria-owns="mm-2" aria-haspopup="true"><span class="mm-sronly">Open
								submenu (Home)</span></a><span>Home</span></li>
					<li><a class="mm-next mm-fullsubopen" href="#mm-3"
						aria-owns="mm-3" aria-haspopup="true"><span class="mm-sronly">Open
								submenu (Time Line)</span></a><span>Time Line</span></li>
					<li><a class="mm-next mm-fullsubopen" href="#mm-4"
						aria-owns="mm-4" aria-haspopup="true"><span class="mm-sronly">Open
								submenu (Account Setting)</span></a><span>Account Setting</span></li>
					<li><a class="mm-next mm-fullsubopen" href="#mm-5"
						aria-owns="mm-5" aria-haspopup="true"><span class="mm-sronly">Open
								submenu (forum)</span></a><span>forum</span></li>
					<li><a class="mm-next mm-fullsubopen" href="#mm-6"
						aria-owns="mm-6" aria-haspopup="true"><span class="mm-sronly">Open
								submenu (Our Shop)</span></a><span>Our Shop</span></li>
					<li><a class="mm-next mm-fullsubopen" href="#mm-7"
						aria-owns="mm-7" aria-haspopup="true"><span class="mm-sronly">Open
								submenu (Our Blog)</span></a><span>Our Blog</span></li>
					<li><a class="mm-next mm-fullsubopen" href="#mm-8"
						aria-owns="mm-8" aria-haspopup="true"><span class="mm-sronly">Open
								submenu (Portfolio)</span></a><span>Portfolio</span></li>
					<li><a class="mm-next mm-fullsubopen" href="#mm-9"
						aria-owns="mm-9" aria-haspopup="true"><span class="mm-sronly">Open
								submenu (Support &amp; Help)</span></a><span>Support &amp; Help</span></li>
					<li><a class="mm-next mm-fullsubopen" href="#mm-10"
						aria-owns="mm-10" aria-haspopup="true"><span class="mm-sronly">Open
								submenu (More pages)</span></a><span>More pages</span></li>
					<li><a href="about.html" title="">about</a></li>
					<li><a href="about-company.html" title="">About Us2</a></li>
					<li><a href="contact.html" title="">contact</a></li>
					<li><a href="contact-branches.html" title="">Contact Us2</a></li>
					<li><a href="widgets.html" title="">Widgts</a></li>
				</ul>
			</div>
			<div class="mm-panel mm-hidden mm-hasnavbar" id="mm-2"
				aria-hidden="true">
				<div class="mm-navbar">
					<a class="mm-btn mm-prev" href="#mm-1" aria-owns="mm-1"
						aria-haspopup="true"><span class="mm-sronly">Close
							submenu (Home)</span></a><a class="mm-title" href="#mm-1" aria-hidden="true">Home</a>
				</div>
				<ul class="mm-listview">
					<li><a href="index-2.html" title="">Home Social</a></li>
					<li><a href="index2.html" title="">Home Social 2</a></li>
					<li><a href="index-company.html" title="">Home Company</a></li>
					<li><a href="landing.html" title="">Login page</a></li>
					<li><a href="logout.html" title="">Logout Page</a></li>
					<li><a href="newsfeed.html" title="">news feed</a></li>
				</ul>
			</div>
			<div class="mm-panel mm-hidden mm-hasnavbar" id="mm-3"
				aria-hidden="true">
				<div class="mm-navbar">
					<a class="mm-btn mm-prev" href="#mm-1" aria-owns="mm-1"
						aria-haspopup="true"><span class="mm-sronly">Close
							submenu (Time Line)</span></a><a class="mm-title" href="#mm-1"
						aria-hidden="true">Time Line</a>
				</div>
				<ul class="mm-listview">
					<li><a href="time-line.jsp" title="">timeline</a></li>
					<li><a href="timeline-friends.net" title="">timeline
							friends</a></li>
					<li><a href="timeline-groups.jsp" title="">timeline
							groups</a></li>
					<li><a href="timeline-pages.html" title="">timeline pages</a></li>
					<li><a href="timeline-photos.html" title="">timeline
							photos</a></li>
					<li><a href="timeline-videos.html" title="">timeline
							videos</a></li>
					<li><a href="fav-page.html" title="">favourit page</a></li>
					<li><a href="groups.html" title="">groups page</a></li>
					<li><a href="page-likers.html" title="">Likes page</a></li>
					<li><a href="people-nearby.html" title="">people nearby</a></li>


				</ul>
			</div>
			<div class="mm-panel mm-hidden mm-hasnavbar" id="mm-4"
				aria-hidden="true">
				<div class="mm-navbar">
					<a class="mm-btn mm-prev" href="#mm-1" aria-owns="mm-1"
						aria-haspopup="true"><span class="mm-sronly">Close
							submenu (Account Setting)</span></a><a class="mm-title" href="#mm-1"
						aria-hidden="true">Account Setting</a>
				</div>
				<ul class="mm-listview">
					<li><a href="create-fav-page.html" title="">create fav
							page</a></li>
					<li><a href="edit-account-setting.html" title="">edit
							account setting</a></li>
					<li><a href="edit-interest.html" title="">edit-interest</a></li>
					<li><a href="edit-password.html" title="">edit-password</a></li>
					<li><a href="edit-profile-basic.html" title="">edit
							profile basics</a></li>
					<li><a href="edit-work-eductation.html" title="">edit work
							educations</a></li>
					<li><a href="messages.html" title="">message box</a></li>
					<li><a href="inbox.html" title="">Inbox</a></li>
					<li><a href="notifications.html" title="">notifications
							page</a></li>
				</ul>
			</div>
			<div class="mm-panel mm-hidden mm-hasnavbar" id="mm-5"
				aria-hidden="true">
				<div class="mm-navbar">
					<a class="mm-btn mm-prev" href="#mm-1" aria-owns="mm-1"
						aria-haspopup="true"><span class="mm-sronly">Close
							submenu (forum)</span></a><a class="mm-title" href="#mm-1"
						aria-hidden="true">forum</a>
				</div>
				<ul class="mm-listview">
					<li><a href="forum.html" title="">Forum Page</a></li>
					<li><a href="forums-category.html" title="">Fourm Category</a></li>
					<li><a href="forum-open-topic.html" title="">Forum Open
							Topic</a></li>
					<li><a href="forum-create-topic.html" title="">Forum
							Create Topic</a></li>
				</ul>
			</div>
			<div class="mm-panel mm-hidden mm-hasnavbar" id="mm-6"
				aria-hidden="true">
				<div class="mm-navbar">
					<a class="mm-btn mm-prev" href="#mm-1" aria-owns="mm-1"
						aria-haspopup="true"><span class="mm-sronly">Close
							submenu (Our Shop)</span></a><a class="mm-title" href="#mm-1"
						aria-hidden="true">Our Shop</a>
				</div>
				<ul class="mm-listview">
					<li><a href="shop.html" title="">Shop Products</a></li>
					<li><a href="shop-masonry.html" title="">Shop Masonry
							Products</a></li>
					<li><a href="shop-single.html" title="">Shop Detail Page</a></li>
					<li><a href="shop-cart.html" title="">Shop Product Cart</a></li>
					<li><a href="shop-checkout.html" title="">Product Checkout</a></li>
				</ul>
			</div>
			<div class="mm-panel mm-hidden mm-hasnavbar" id="mm-7"
				aria-hidden="true">
				<div class="mm-navbar">
					<a class="mm-btn mm-prev" href="#mm-1" aria-owns="mm-1"
						aria-haspopup="true"><span class="mm-sronly">Close
							submenu (Our Blog)</span></a><a class="mm-title" href="#mm-1"
						aria-hidden="true">Our Blog</a>
				</div>
				<ul class="mm-listview">
					<li><a href="blog-grid-wo-sidebar.html" title="">Our Blog</a></li>
					<li><a href="blog-grid-right-sidebar.html" title="">Blog
							with R-Sidebar</a></li>
					<li><a href="blog-grid-left-sidebar.html" title="">Blog
							with L-Sidebar</a></li>
					<li><a href="blog-masonry.html" title="">Blog Masonry
							Style</a></li>
					<li><a href="blog-list-wo-sidebar.html" title="">Blog List
							Style</a></li>
					<li><a href="blog-list-right-sidebar.html" title="">Blog
							List with R-Sidebar</a></li>
					<li><a href="blog-list-left-sidebar.html" title="">Blog
							List with L-Sidebar</a></li>
					<li><a href="blog-detail.html" title="">Blog Post Detail</a></li>
				</ul>
			</div>
			<div class="mm-panel mm-hidden mm-hasnavbar" id="mm-8"
				aria-hidden="true">
				<div class="mm-navbar">
					<a class="mm-btn mm-prev" href="#mm-1" aria-owns="mm-1"
						aria-haspopup="true"><span class="mm-sronly">Close
							submenu (Portfolio)</span></a><a class="mm-title" href="#mm-1"
						aria-hidden="true">Portfolio</a>
				</div>
				<ul class="mm-listview">
					<li><a href="portfolio-2colm.html" title="">Portfolio 2col</a></li>
					<li><a href="portfolio-3colm.html" title="">Portfolio 3col</a></li>
					<li><a href="portfolio-4colm.html" title="">Portfolio 4col</a></li>
				</ul>
			</div>
			<div class="mm-panel mm-hidden mm-hasnavbar" id="mm-9"
				aria-hidden="true">
				<div class="mm-navbar">
					<a class="mm-btn mm-prev" href="#mm-1" aria-owns="mm-1"
						aria-haspopup="true"><span class="mm-sronly">Close
							submenu (Support &amp; Help)</span></a><a class="mm-title" href="#mm-1"
						aria-hidden="true">Support &amp; Help</a>
				</div>
				<ul class="mm-listview">
					<li><a href="support-and-help.html" title="">Support &amp;
							Help</a></li>
					<li><a href="support-and-help-detail.html" title="">Support
							&amp; Help Detail</a></li>
					<li><a href="support-and-help-search-result.html" title="">Support
							&amp; Help Search Result</a></li>
				</ul>
			</div>
			<div class="mm-panel mm-hidden mm-hasnavbar" id="mm-10"
				aria-hidden="true">
				<div class="mm-navbar">
					<a class="mm-btn mm-prev" href="#mm-1" aria-owns="mm-1"
						aria-haspopup="true"><span class="mm-sronly">Close
							submenu (More pages)</span></a><a class="mm-title" href="#mm-1"
						aria-hidden="true">More pages</a>
				</div>
				<ul class="mm-listview">
					<li><a href="careers.html" title="">Careers</a></li>
					<li><a href="career-detail.html" title="">Career Detail</a></li>
					<li><a href="404.html" title="">404 error page</a></li>
					<li><a href="404-2.html" title="">404 Style2</a></li>
					<li><a href="faq.html" title="">faq's page</a></li>
					<li><a href="insights.html" title="">insights</a></li>
					<li><a href="knowledge-base.html" title="">knowledge base</a></li>
				</ul>
			</div>
		</div>

	</nav>
	<!--<div class="se-pre-con"></div>-->
	<div id="mm-0" class="mm-page mm-slideout">
		<div class="theme-layout">

			<div class="responsive-header">
				<div
					class="mh-head first mm-sticky mh-btns-left mh-btns-right mh-sticky">
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
						<input placeholder="search"> <a href="#/"
							class="fa fa-search"></a>
					</form>
				</div>


			</div>
			<!-- responsive header -->

			<div class="topbar stick is_stuck"
				style="position: fixed; top: 0px; width: 1412px;">
				<div class="logo">
					<a title="" href="newsfeed.html"><img src="resources/images/logo.png"
						alt=""></a>
				</div>

				<div class="top-area">
					<ul class="main-menu">
						<li><a href="#" title="">모임</a>
							<ul>
								<!-- 임시 -->
								<li><a href="signGroup" title="">모임 가입</a></li>
								<li><a href="detailBoard" title="">모임 게시글</a></li>
								<li><a href="recommendG" title="">모임 추천</a></li>
								<li><a href="groupmain" title="">모임 메인</a></li>
								<li><a href="logout.html" title="">Logout Page</a></li>
								<li><a href="newsfeed.html" title="">news feed</a></li>
							</ul></li>
						<li><a href="#" title="">timeline</a>
							<ul>
								<li><a href="time-line.jsp" title="">timeline</a></li>
								<li><a href="timeline-friends.net" title="">timeline
										friends</a></li>
								<li><a href="timeline-groups.jsp" title="">timeline
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
									<button data-ripple="">
										<i class="ti-search"></i>
									</button>
								</form>
							</div></li>
						<li><a href="newsfeed.html" title="Home" data-ripple=""><i
								class="ti-home"></i></a></li>
						<li><a href="#" title="Notification" data-ripple=""> <i
								class="ti-bell"></i><span>20</span>
						</a>
							<div class="dropdowns ps-container ps-theme-default ps-active-y"
								data-ps-id="ce9b9242-861f-4a78-a123-74e14fc5496c">
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
								<div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;">
									<div class="ps-scrollbar-x" tabindex="0"
										style="left: 0px; width: 0px;"></div>
								</div>
								<div class="ps-scrollbar-y-rail"
									style="top: 0px; height: 292px; right: 0px;">
									<div class="ps-scrollbar-y" tabindex="0"
										style="top: 0px; height: 175px;"></div>
								</div>
							</div></li>
						<li><a href="#" title="Messages" data-ripple=""><i
								class="ti-comment"></i><span>12</span></a>
							<div class="dropdowns ps-container ps-theme-default ps-active-y"
								data-ps-id="020700db-9370-0f02-9dd2-2389c22bbf04">
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
								<div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;">
									<div class="ps-scrollbar-x" tabindex="0"
										style="left: 0px; width: 0px;"></div>
								</div>
								<div class="ps-scrollbar-y-rail"
									style="top: 0px; height: 292px; right: 0px;">
									<div class="ps-scrollbar-y" tabindex="0"
										style="top: 0px; height: 175px;"></div>
								</div>
							</div></li>
						<li><a href="#" title="Languages" data-ripple=""><i
								class="fa fa-globe"></i></a>
							<div class="dropdowns languages ps-container ps-theme-default"
								data-ps-id="6d19094b-e379-940f-0f5c-92d7c8a30da4">
								<a href="#" title=""><i class="ti-check"></i>English</a> <a
									href="#" title="">Arabic</a> <a href="#" title="">Dutch</a> <a
									href="#" title="">French</a>
								<div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;">
									<div class="ps-scrollbar-x" tabindex="0"
										style="left: 0px; width: 0px;"></div>
								</div>
								<div class="ps-scrollbar-y-rail" style="top: 0px; right: 0px;">
									<div class="ps-scrollbar-y" tabindex="0"
										style="top: 0px; height: 0px;"></div>
								</div>
							</div></li>
					</ul>
					<div class="user-img">
						<img src="resources/images/resources/admin.jpg" alt=""> <span
							class="status f-online"></span>
						<div class="user-setting">
							<a href="#" title=""><span class="status f-online"></span>online</a>
							<a href="#" title=""><span class="status f-away"></span>away</a>
							<a href="#" title=""><span class="status f-off"></span>offline</a>
							<a href="#" title=""><i class="ti-user"></i> view profile</a> <a
								href="#" title=""><i class="ti-pencil-alt"></i>edit profile</a>
							<a href="#" title=""><i class="ti-target"></i>activity log</a> <a
								href="#" title=""><i class="ti-settings"></i>account setting</a>
							<a href="#" title=""><i class="ti-power-off"></i>log out</a>
						</div>
					</div>
					<span class="ti-menu main-menu" data-ripple=""></span>
				</div>
			</div>
			<div
				style="position: relative; width: 1412px; height: 60px; display: block; vertical-align: baseline; float: none;"></div>
			<!-- topbar -->

			<section>
				<div class="feature-photo">
					<figure>
						<img src="resources/images/resources/timeline-1.jpg" alt="">
					</figure>
					<div class="add-btn">
						<span>1205 followers</span> <a href="#" title="" data-ripple="">Add
							Friend</a>
					</div>
					<form class="edit-phto">
						<i class="fa fa-camera-retro"></i> <label class="fileContainer">
							Edit Cover Photo <input type="file">
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
												class="fileContainer"> Edit Display Photo <input
												type="file">
											</label>
										</form>
									</figure>
								</div>
							</div>
							<div class="col-lg-10 col-sm-9">
								<div class="timeline-info">
									<ul>
										<li class="admin-name">
											<h5>고연희</h5> 
											<span>Group Admin</span>
										</li>
										<li>
											<a class="" href="timeline.net" title="" data-ripple="">time line</a>
											<a class="" href="timeline-photos.html" title="" data-ripple="">Photos</a>
											<a class="" href="timeline-videos.html" title="" data-ripple="">Videos</a>
											<a class="" href="timeline-friends.net" title="" data-ripple="">Friends</a>
											<a class="active" href="groups.html" title="" data-ripple="">Groups</a>
											<a class="" href="about.html" title="" data-ripple="">about</a>
											<a class="" href="#" title="" data-ripple="">more</a>
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
											<!-- Shortcuts -->
											<div class="widget">
												<h4 class="widget-title">Profile intro</h4>
												<ul class="short-profile">
													<li><span>about</span>
														<p>Hi, i am jhon kates, i am 32 years old and worked
															as a web developer in microsoft company.</p></li>
													<li><span>fav tv show</span>
														<p>Hi, i am jhon kates, i am 32 years old and worked
															as a web developer in microsoft company.</p></li>
													<li><span>favourit music</span>
														<p>Hi, i am jhon kates, i am 32 years old and worked
															as a web developer in microsoft company.</p></li>
												</ul>
											</div>
											<!-- profile intro widget -->
										</aside>
									</div>
									<!-- sidebar -->
									<!-- 모임 추천 -->
									<div class="col-lg-6">
										<div class="central-meta">
											<div class="groups">
												<span><i class="fa fa-users"></i>회원님이 관심 있어 할 만한 모임</span>
											</div>
										<!-- 	<div class = "btn_category">
												<button>지역별</button>
												<button>카테고리별</button>
											</div> -->
											<!-- 추가 -->
											<!-- <p class = "segmented">
												<a href = "https://naver.com" class = "first selected">카테고리별</a>
												<a href = "https://daum.net" class = "last">지역별</a>
											</p> -->
											<ul class="nearby-contct">
												<li>
													<div class="nearly-pepls">
														<figure>
															<a href="timeline.net" title=""><img
																src="resources/images/resources/group1.jpg" alt=""></a>
														</figure>
														<div class="pepl-info">
															<h4>
																<a href="timeline.net" title="">코딩수다 </a>
															</h4>
															<span>public group</span> <em>112명</em> <a href="#"
																title="" class="add-butn" data-ripple="">가입하기</a>
														</div>
													</div>
												</li>
												<li>
													<div class="nearly-pepls">
														<figure>
															<a href="timeline.net" title=""><img
																src="resources/images/resources/group2.jpg" alt=""></a>
														</figure>
														<div class="pepl-info">
															<h4>
																<a href="timeline.net" title="">I ♥ 오버워치</a>
															</h4>
															<span>Private group</span> <em>309명</em> <a href="#"
																title="" class="add-butn" data-ripple="">가입하기</a>
														</div>
													</div>
												</li>
												<li>
													<div class="nearly-pepls">
														<figure>
															<a href="timeline.net" title=""><img
																src="resources/images/resources/group3.jpg" alt=""></a>
														</figure>
														<div class="pepl-info">
															<h4>
																<a href="timeline.net" title="">PUBG 치킨 펐지 배틀그라운드</a>
															</h4>
															<span>Public group</span> <em>103명</em> <a
																href="#" title="" class="add-butn" data-ripple="">가입하기</a>
														</div>
													</div>
												</li>
												<li>
													<div class="nearly-pepls">
														<figure>
															<a href="timeline.net" title=""><img
																src="resources/images/resources/group4.jpg" alt=""></a>
														</figure>
														<div class="pepl-info">
															<h4>
																<a href="time-line.html" title="">마포구 프로 코딩러</a>
															</h4>
															<span>Public group</span> <em> 187명</em> <a
																href="#" title="" class="add-butn" data-ripple="">가입하기</a>
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
																<a href="time-line.html" title="">추리소설 처돌이</a>
															</h4>
															<span>Friends Group</span> <em>85명</em> <a
																href="#" title="" class="add-butn" data-ripple="">가입하기</a>
														</div>
													</div>
												</li>
												<li>
													<div class="nearly-pepls">
														<figure>
															<a href="time-line.html" title=""><img
																src="resources/images/resources/group6.jpg" alt=""></a>
														</figure>
														<div class="pepl-info">
															<h4>
																<a href="time-line.html" title="">인싸들의 배드민턴</a>
															</h4>
															<span>Public group</span> <em>110명</em> <a
																href="#" title="" class="add-butn" data-ripple="">가입하기</a>
														</div>
													</div>
												</li>
												<li>
													<div class="nearly-pepls">
														<figure>
															<a href="time-line.html" title=""><img
																src="resources/images/resources/group7.jpg" alt=""></a>
														</figure>
														<div class="pepl-info">
															<h4>
																<a href="time-line.html" title="">추리왕 닝겐</a>
															</h4>
															<span>Public Group</span> <em>81명</em> <a
																href="#" title="" class="add-butn" data-ripple="">가입하기</a>
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
																<a href="time-line.html" title="">LOL 나랑 롤자</a>
															</h4>
															<span>Public group</span> <em>55명</em> <a
																href="#" title="" class="add-butn" data-ripple="">가입하기</a>
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
									<!-- 우측 가입한 모임 리스트 -->
									<!-- centerl meta -->
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
									<!-- sidebar -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			
			<!-- footer -->
			<footer>
				<div class="container">
					<div class="row">
						<div class="col-lg-4 col-md-4">
							<div class="widget">
								<div class="foot-logo">
									<div class="logo">
										<a href="index-2.html" title=""><img src="resources/images/logo.png"
											alt=""></a>
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
									<li><a href="terms.html" title="">terms &amp;
											Conditions</a></li>
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
									<li><a href="https://www.microsoft.com/store/apps"
										title=""><i class="fa fa-windows"></i>Windows</a></li>
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
					<span>use night mode</span> <input type="checkbox" id="nightmode1">
					<label for="nightmode1" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Notifications</span> <input type="checkbox" id="switch22">
					<label for="switch22" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Notification sound</span> <input type="checkbox"
						id="switch33"> <label for="switch33" data-on-label="ON"
						data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>My profile</span> <input type="checkbox" id="switch44">
					<label for="switch44" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Show profile</span> <input type="checkbox" id="switch55">
					<label for="switch55" data-on-label="ON" data-off-label="OFF"></label>
				</div>
			</form>
			<h4 class="panel-title">Account Setting</h4>
			<form method="post">
				<div class="setting-row">
					<span>Sub users</span> <input type="checkbox" id="switch66">
					<label for="switch66" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>personal account</span> <input type="checkbox" id="switch77">
					<label for="switch77" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Business account</span> <input type="checkbox" id="switch88">
					<label for="switch88" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Show me online</span> <input type="checkbox" id="switch99">
					<label for="switch99" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Delete history</span> <input type="checkbox" id="switch101">
					<label for="switch101" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Expose author name</span> <input type="checkbox"
						id="switch111"> <label for="switch111" data-on-label="ON"
						data-off-label="OFF"></label>
				</div>
			</form>
		</div>
		<div class="strp-spinner-move" style="display: none;">
			<div class="strp-spinner" style="display: none;">
				<div class="strp-spinner-rotate"
					style="animation: 1s steps(80) 0s infinite normal none running strp-spinner-spin;">
					<div class="strp-spinner-frame"
						style="opacity: 0.01; transform: rotate(4.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.03; transform: rotate(9deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.04; transform: rotate(13.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.05; transform: rotate(18deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.06; transform: rotate(22.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.08; transform: rotate(27deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.09; transform: rotate(31.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.1; transform: rotate(36deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.11; transform: rotate(40.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.13; transform: rotate(45deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.14; transform: rotate(49.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.15; transform: rotate(54deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.16; transform: rotate(58.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.18; transform: rotate(63deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.19; transform: rotate(67.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.2; transform: rotate(72deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.21; transform: rotate(76.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.23; transform: rotate(81deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.24; transform: rotate(85.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.25; transform: rotate(90deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.26; transform: rotate(94.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.28; transform: rotate(99deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.29; transform: rotate(103.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.3; transform: rotate(108deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.31; transform: rotate(112.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.33; transform: rotate(117deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.34; transform: rotate(121.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.35; transform: rotate(126deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.36; transform: rotate(130.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.38; transform: rotate(135deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.39; transform: rotate(139.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.4; transform: rotate(144deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.41; transform: rotate(148.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.43; transform: rotate(153deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.44; transform: rotate(157.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.45; transform: rotate(162deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.46; transform: rotate(166.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.48; transform: rotate(171deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.49; transform: rotate(175.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.5; transform: rotate(180deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.51; transform: rotate(184.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.53; transform: rotate(189deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.54; transform: rotate(193.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.55; transform: rotate(198deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.56; transform: rotate(202.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.58; transform: rotate(207deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.59; transform: rotate(211.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.6; transform: rotate(216deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.61; transform: rotate(220.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.63; transform: rotate(225deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.64; transform: rotate(229.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.65; transform: rotate(234deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.66; transform: rotate(238.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.68; transform: rotate(243deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.69; transform: rotate(247.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.7; transform: rotate(252deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.71; transform: rotate(256.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.73; transform: rotate(261deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.74; transform: rotate(265.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.75; transform: rotate(270deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.76; transform: rotate(274.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.78; transform: rotate(279deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.79; transform: rotate(283.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.8; transform: rotate(288deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.81; transform: rotate(292.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.83; transform: rotate(297deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.84; transform: rotate(301.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.85; transform: rotate(306deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.86; transform: rotate(310.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.88; transform: rotate(315deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.89; transform: rotate(319.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.9; transform: rotate(324deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.91; transform: rotate(328.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.93; transform: rotate(333deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.94; transform: rotate(337.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.95; transform: rotate(342deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.96; transform: rotate(346.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.98; transform: rotate(351deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 0.99; transform: rotate(355.5deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
					<div class="strp-spinner-frame"
						style="opacity: 1; transform: rotate(360deg);">
						<div class="strp-spinner-line"
							style="background: rgb(84, 84, 84);"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="strp-window strp-measured strp-window-skin-strip">
			<div class="strp-pages"></div>
			<div class="strp-nav strp-nav-previous" style="display: none;">
				<div class="strp-nav-button" style="display: none;">
					<div class="strp-nav-button-background"></div>
					<div class="strp-nav-button-icon"></div>
				</div>
			</div>
			<div class="strp-nav strp-nav-next" style="display: none;">
				<div class="strp-nav-button" style="display: none;">
					<div class="strp-nav-button-background"></div>
					<div class="strp-nav-button-icon"></div>
				</div>
			</div>
			<div class="strp-close">
				<div class="strp-close-background"></div>
				<div class="strp-close-icon"></div>
			</div>
		</div>
		<div id="topcontrol" title="Scroll Back to Top"
			style="position: fixed; bottom: 10px; right: 5px; opacity: 0; cursor: pointer;">
			<i class="fa fa-angle-up"></i>
		</div>
	</div>
	<!-- side panel -->

	<script data-cfasync="false"
		src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="resources/js/main.min.js"></script>
	<script src="resources/js/script.js"></script>




	<div id="mm-blocker" class="mm-slideout"></div>
</body>
</html>