<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Winku Social Network Toolkit</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="icon" href="resources/images/fav.png" type="image/png" sizes="16x16">

<link rel="stylesheet" href="resources/css/main.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/color.css">
<link rel="stylesheet" href="resources/css/responsive.css">
<style>
.edit-phto {
	position: unset;
}

.tab-content li:hover{
cursor: pointer;
}
.tab-content ul{

list-style: none;}

.tabcontentClick{
	background: #088dcd;
	color:white;
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
								<div class="col-lg-3"></div>
								<!-- sidebar -->
								<div class="col-lg-6">
									<div class="central-meta">
										<div class="editing-info">
											<h5 class="f-title">
												<i class="ti-info-alt"></i> 모임 생성
											</h5>
											<form id="insertGroup" method="post" action="insertGroup" enctype="multipart/form-data"> 

												
												<div class="form-group">


													<input type="text" name="groupName" id="input" required="required" /> <label
														class="control-label" for="input">모임 이름</label><i
														class="mtrl-select"></i>
												</div>



												<div class="form-group">
													<textarea rows="4" id="textarea" name="groupInfo" required="required"></textarea>
													<label class="control-label" for="textarea">모임 소개글</label><i
														class="mtrl-select"></i>
												</div>
												
												
												
												<div class="form-group">
												
												
													<label style="width:100%;">연령대<select name="ageKey">
							
														<option value="0" selected="selected">전체</option>
														<option value="1">10대</option>
														<option value="2">20대</option>
														<option value="3">30대</option>
														<option value="4">40대</option>
														<option value="5">50대</option>
														<option value="6">60대</option>
													</select>
													</label>
													
													<label style="width:100%;"> 지역 <select name="whereKey">
												<option value="0" selected="selected">전체</option>
												<option value="1">서울특별시</option>
												<option value="2">서울특별시 종로구</option>
												<option value="3">서울특별시 중구</option>
												<option value="4">서울특별시 용산구</option>
												<option value="5">서울특별시 성동구</option>
												<option value="6">서울특별시 광진구</option>
												<option value="7">서울특별시 동대문구</option>
												<option value="8">서울특별시 중랑구</option>
												<option value="9">서울특별시 성북구</option>
												<option value="10">서울특별시 강북구</option>
												<option value="11">서울특별시 도봉구</option>
												<option value="12">서울특별시 노원구</option>
												<option value="13">서울특별시 은평구</option>
												<option value="14">서울특별시 서대문구</option>
												<option value="15">서울특별시 마포구</option>
												<option value="16">서울특별시 양천구</option>
												<option value="17">서울특별시 강서구</option>
												<option value="18">서울특별시 구로구</option>
												<option value="19">서울특별시 금천구</option>
												<option value="20">서울특별시 영등포구</option>
												<option value="21">서울특별시 동작구</option>
												<option value="22">서울특별시 관악구</option>
												<option value="23">서울특별시 서초구</option>
												<option value="24">서울특별시 강남구</option>
												<option value="25">서울특별시 송파구</option>
												<option value="26">서울특별시 강동구</option>
												<option value="27">부산광역시</option>
												<option value="28">부산광역시 중구</option>
												<option value="29">부산광역시 서구</option>
												<option value="30">부산광역시 동구</option>
												<option value="31">부산광역시 영도구</option>
												<option value="32">부산광역시 부산진구</option>
												<option value="33">부산광역시 동래구</option>
												<option value="34">부산광역시 남구</option>
												<option value="35">부산광역시 북구</option>
												<option value="36">부산광역시 해운대구</option>
												<option value="37">부산광역시 사하구</option>
												<option value="38">부산광역시 금정구</option>
												<option value="39">부산광역시 강서구</option>
												<option value="40">부산광역시 연제구</option>
												<option value="41">부산광역시 수영구</option>
												<option value="42">부산광역시 사상구</option>
												<option value="43">부산광역시 기장군</option>
												<option value="44">대구광역시</option>
												<option value="45">대구광역시 중구</option>
												<option value="46">대구광역시 동구</option>
												<option value="47">대구광역시 서구</option>
												<option value="48">대구광역시 남구</option>
												<option value="49">대구광역시 북구</option>
												<option value="50">대구광역시 수성구</option>
												<option value="51">대구광역시 달서구</option>
												<option value="52">대구광역시 달성군</option>
												<option value="53">인천광역시</option>
												<option value="54">인천광역시 중구</option>
												<option value="55">인천광역시 동구</option>
												<option value="56">인천광역시 미추홀구</option>
												<option value="57">인천광역시 연수구</option>
												<option value="58">인천광역시 남동구</option>
												<option value="59">인천광역시 부평구</option>
												<option value="60">인천광역시 계양구</option>
												<option value="61">인천광역시 서구</option>
												<option value="62">인천광역시 강화군</option>
												<option value="63">인천광역시 옹진군</option>
												<option value="64">광주광역시</option>
												<option value="65">광주광역시 동구</option>
												<option value="66">광주광역시 서구</option>
												<option value="67">광주광역시 남구</option>
												<option value="68">광주광역시 북구</option>
												<option value="69">광주광역시 광산구</option>
												<option value="70">대전광역시</option>
												<option value="71">대전광역시 동구</option>
												<option value="72">대전광역시 중구</option>
												<option value="73">대전광역시 서구</option>
												<option value="74">대전광역시 유성구</option>
												<option value="75">대전광역시 대덕구</option>
												<option value="76">울산광역시</option>
												<option value="77">울산광역시 중구</option>
												<option value="78">울산광역시 남구</option>
												<option value="79">울산광역시 동구</option>
												<option value="80">울산광역시 북구</option>
												<option value="81">울산광역시 울주군</option>
												<option value="82">세종특별자치시</option>
												<option value="83">세종특별자치시 세종특별자치시</option>
												<option value="84">경기도</option>
												<option value="85">경기도 수원시장안구</option>
												<option value="86">경기도 수원시권선구</option>
												<option value="87">경기도 수원시팔달구</option>
												<option value="88">경기도 수원시영통구</option>
												<option value="89">경기도 성남시수정구</option>
												<option value="90">경기도 성남시중원구</option>
												<option value="91">경기도 성남시분당구</option>
												<option value="92">경기도 의정부시</option>
												<option value="93">경기도 안양시만안구</option>
												<option value="94">경기도 안양시동안구</option>
												<option value="95">경기도 부천시</option>
												<option value="96">경기도 광명시</option>
												<option value="97">경기도 평택시</option>
												<option value="98">경기도 동두천시</option>
												<option value="99">경기도 안산시상록구</option>
												<option value="100">경기도 안산시단원구</option>
												<option value="101">경기도 고양시덕양구</option>
												<option value="102">경기도 고양시일산동구</option>
												<option value="103">경기도 고양시일산서구</option>
												<option value="104">경기도 과천시</option>
												<option value="105">경기도 구리시</option>
												<option value="106">경기도 남양주시</option>
												<option value="107">경기도 오산시</option>
												<option value="108">경기도 시흥시</option>
												<option value="109">경기도 군포시</option>
												<option value="110">경기도 의왕시</option>
												<option value="111">경기도 하남시</option>
												<option value="112">경기도 용인시처인구</option>
												<option value="113">경기도 용인시기흥구</option>
												<option value="114">경기도 용인시수지구</option>
												<option value="115">경기도 파주시</option>
												<option value="116">경기도 이천시</option>
												<option value="117">경기도 안성시</option>
												<option value="118">경기도 김포시</option>
												<option value="119">경기도 화성시</option>
												<option value="120">경기도 광주시</option>
												<option value="121">경기도 양주시</option>
												<option value="122">경기도 포천시</option>
												<option value="123">경기도 여주시</option>
												<option value="124">경기도 연천군</option>
												<option value="125">경기도 가평군</option>
												<option value="126">경기도 양평군</option>
												<option value="127">강원도</option>
												<option value="128">강원도 춘천시</option>
												<option value="129">강원도 원주시</option>
												<option value="130">강원도 강릉시</option>
												<option value="131">강원도 동해시</option>
												<option value="132">강원도 태백시</option>
												<option value="133">강원도 속초시</option>
												<option value="134">강원도 삼척시</option>
												<option value="135">강원도 홍천군</option>
												<option value="136">강원도 횡성군</option>
												<option value="137">강원도 영월군</option>
												<option value="138">강원도 평창군</option>
												<option value="139">강원도 정선군</option>
												<option value="140">강원도 철원군</option>
												<option value="141">강원도 화천군</option>
												<option value="142">강원도 양구군</option>
												<option value="143">강원도 인제군</option>
												<option value="144">강원도 고성군</option>
												<option value="145">강원도 양양군</option>
												<option value="146">충청북도</option>
												<option value="147">충청북도 청주시상당구</option>
												<option value="148">충청북도 청주시서원구</option>
												<option value="149">충청북도 청주시흥덕구</option>
												<option value="150">충청북도 청주시청원구</option>
												<option value="151">충청북도 충주시</option>
												<option value="152">충청북도 제천시</option>
												<option value="153">충청북도 보은군</option>
												<option value="154">충청북도 옥천군</option>
												<option value="155">충청북도 영동군</option>
												<option value="156">충청북도 증평군</option>
												<option value="157">충청북도 진천군</option>
												<option value="158">충청북도 괴산군</option>
												<option value="159">충청북도 음성군</option>
												<option value="160">충청북도 단양군</option>
												<option value="161">충청남도</option>
												<option value="162">충청남도 천안시동남구</option>
												<option value="163">충청남도 천안시서북구</option>
												<option value="164">충청남도 공주시</option>
												<option value="165">충청남도 보령시</option>
												<option value="166">충청남도 아산시</option>
												<option value="167">충청남도 서산시</option>
												<option value="168">충청남도 논산시</option>
												<option value="169">충청남도 계룡시</option>
												<option value="170">충청남도 당진시</option>
												<option value="171">충청남도 금산군</option>
												<option value="172">충청남도 부여군</option>
												<option value="173">충청남도 서천군</option>
												<option value="174">충청남도 청양군</option>
												<option value="175">충청남도 홍성군</option>
												<option value="176">충청남도 예산군</option>
												<option value="177">충청남도 태안군</option>
												<option value="178">전라북도</option>
												<option value="179">전라북도 전주시완산구</option>
												<option value="180">전라북도 전주시덕진구</option>
												<option value="181">전라북도 군산시</option>
												<option value="182">전라북도 익산시</option>
												<option value="183">전라북도 정읍시</option>
												<option value="184">전라북도 남원시</option>
												<option value="185">전라북도 김제시</option>
												<option value="186">전라북도 완주군</option>
												<option value="187">전라북도 진안군</option>
												<option value="188">전라북도 무주군</option>
												<option value="189">전라북도 장수군</option>
												<option value="190">전라북도 임실군</option>
												<option value="191">전라북도 순창군</option>
												<option value="192">전라북도 고창군</option>
												<option value="193">전라북도 부안군</option>
												<option value="194">전라남도</option>
												<option value="195">전라남도 목포시</option>
												<option value="196">전라남도 여수시</option>
												<option value="197">전라남도 순천시</option>
												<option value="198">전라남도 나주시</option>
												<option value="199">전라남도 광양시</option>
												<option value="200">전라남도 담양군</option>
												<option value="201">전라남도 곡성군</option>
												<option value="202">전라남도 구례군</option>
												<option value="203">전라남도 고흥군</option>
												<option value="204">전라남도 보성군</option>
												<option value="205">전라남도 화순군</option>
												<option value="206">전라남도 장흥군</option>
												<option value="207">전라남도 강진군</option>
												<option value="208">전라남도 해남군</option>
												<option value="209">전라남도 영암군</option>
												<option value="210">전라남도 무안군</option>
												<option value="211">전라남도 함평군</option>
												<option value="212">전라남도 영광군</option>
												<option value="213">전라남도 장성군</option>
												<option value="214">전라남도 완도군</option>
												<option value="215">전라남도 진도군</option>
												<option value="216">전라남도 신안군</option>
												<option value="217">경상북도</option>
												<option value="218">경상북도 포항시남구</option>
												<option value="219">경상북도 포항시북구</option>
												<option value="220">경상북도 경주시</option>
												<option value="221">경상북도 김천시</option>
												<option value="222">경상북도 안동시</option>
												<option value="223">경상북도 구미시</option>
												<option value="224">경상북도 영주시</option>
												<option value="225">경상북도 영천시</option>
												<option value="226">경상북도 상주시</option>
												<option value="227">경상북도 문경시</option>
												<option value="228">경상북도 경산시</option>
												<option value="229">경상북도 군위군</option>
												<option value="230">경상북도 의성군</option>
												<option value="231">경상북도 청송군</option>
												<option value="232">경상북도 영양군</option>
												<option value="233">경상북도 영덕군</option>
												<option value="234">경상북도 청도군</option>
												<option value="235">경상북도 고령군</option>
												<option value="236">경상북도 성주군</option>
												<option value="237">경상북도 칠곡군</option>
												<option value="238">경상북도 예천군</option>
												<option value="239">경상북도 봉화군</option>
												<option value="240">경상북도 울진군</option>
												<option value="241">경상북도 울릉군</option>
												<option value="242">경상남도</option>
												<option value="243">경상남도 창원시의창구</option>
												<option value="244">경상남도 창원시성산구</option>
												<option value="245">경상남도 창원시마산합포구</option>
												<option value="246">경상남도 창원시마산회원구</option>
												<option value="247">경상남도 창원시진해구</option>
												<option value="248">경상남도 진주시</option>
												<option value="249">경상남도 통영시</option>
												<option value="250">경상남도 사천시</option>
												<option value="251">경상남도 김해시</option>
												<option value="252">경상남도 밀양시</option>
												<option value="253">경상남도 거제시</option>
												<option value="254">경상남도 양산시</option>
												<option value="255">경상남도 의령군</option>
												<option value="256">경상남도 함안군</option>
												<option value="257">경상남도 창녕군</option>
												<option value="258">경상남도 고성군</option>
												<option value="259">경상남도 남해군</option>
												<option value="260">경상남도 하동군</option>
												<option value="261">경상남도 산청군</option>
												<option value="262">경상남도 함양군</option>
												<option value="263">경상남도 거창군</option>
												<option value="264">경상남도 합천군</option>
												<option value="265">제주특별자치도</option>
												<option value="266">제주특별자치도 제주시</option>
												<option value="267">제주특별자치도 서귀포시</option>

										</select>
										</label>
												
												</div>
												

												
												<div class="form-group">
												<label>모임 카테고리</label>
												<input type="hidden" id="category" name="categoryKey">
													<div class="d-flex flex-row mt-2">
									<ul class="nav nav-tabs nav-tabs--vertical nav-tabs--left">
										<c:forEach items="${dcategory}" var="list" varStatus="status">
											<li class="nav-item"><c:choose>
													<c:when test="${status.count == 1}">
														<a href="#${list.DCategoryKey}" class="nav-link active"
															data-toggle="tab">${list.DCategoryName }</a>
													</c:when>
													<c:otherwise>
														<a href="#${list.DCategoryKey}" class="nav-link"
															data-toggle="tab">${list.DCategoryName }</a>
													</c:otherwise>
												</c:choose></li>

										</c:forEach>


									</ul>


									<div class="tab-content">
										<c:forEach items="${dcategory}" var="list" varStatus="status">


											<c:choose>
												<c:when test="${status.count == 1}">
													<div class="tab-pane fade show active"
														id="${list.DCategoryKey}">
												</c:when>
												<c:otherwise>
													<div class="tab-pane fade show" id="${list.DCategoryKey}">
												</c:otherwise>
											</c:choose>


											<ul class="${list.DCategoryKey}">
												<c:forEach items="${scategory}" var="item">

													<c:if test="${list.DCategoryKey ==  item.DCategoryKey}">
														<li><input type="hidden" value="${item.SCategoryKey}">${item.SCategoryName}</li>
													</c:if>
												</c:forEach>
											</ul>
									</div>

									</c:forEach>
								</div>
								
												</div>








												<div  class="form-group">
												<label>모임 이미지</label>
												<div class="row">
													<div class="feature-photo col-lg-3">
														<figure>
															<img 
															
															 src="resources/images/resources/user-avatar.jpg"
																alt="">
														</figure>


														<div class="edit-phto">
															<i class="fa fa-camera-retro"></i> <label
																class="fileContainer"> 대표 사진 추가 <input
																name="files" type="file" 	accept="image/gif, image/jpeg, image/png" />
															</label>
														</div>



													</div>

													<div class="feature-photo col-lg-9">
														<figure>
															<img src="resources/images/resources/timeline-1.jpg"
																alt="">
														</figure>


														<div class="edit-phto">
															<i class="fa fa-camera-retro"></i> <label
																class="fileContainer"> 커버 사진 추가 <input name="files"
																type="file" 	accept="image/gif, image/jpeg, image/png"/>
															</label>
														</div>



													</div>

												</div>
												</div>


												<h5 class="f-title ext-margin">
													<i class="fa fa-sliders"></i> 모임 설정
												</h5>

												<div class="onoff-options">


													<div class="setting-row">
														<span>공개 여부</span>
														<p>검색 결과에 모임 정보를 표출합니다.</p>
														<input type="checkbox" id="switch01" name="groupPrivate"/> <label
															for="switch01" data-on-label="ON" data-off-label="OFF"></label>
													</div>
													<div class="setting-row">
														<span>원데이 클래스 여부</span>
														<p>주기적으로 회비를 납입하는 모임입니다.</p>
														<input name ="groupType" type="checkbox" id="switch02" /> <label
															for="switch02" data-on-label="ON" data-off-label="OFF"></label>
													</div>



												</div>
												<div class="submit-btns">
													<button type="reset" class="mtr-btn">
														<span>취소</span>
													</button>
													<button type="submit" class="mtr-btn">
														<span>생성</span>
													</button>
												</div>
											</form>
										</div>
									</div>
								</div>
								<!-- centerl meta -->

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


	<script src="resources/js/main.min.js"></script>
	
	<script src="resources/js/script.js"></script>
	<script>
	
	var checkGname = false;
	var checkCategory = false;
	
	//카테고리 등록
	$('.tab-content li').click(function(){
		
		checkCategory = true;
		//카테고리 값 저장해놓기
		$('#category').val($(this).children('input').val());
		
		$('.tab-content li').removeClass('tabcontentClick');
		$(this).addClass('tabcontentClick');
	
	});
	
	
	//모임 이름 확인
	$('input[name="groupName"]').keyup(function(){
		
		var reg_hanengnum = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]{3,20}$/;

		var name = $(this).val();
		var label = $(this).next();
	
		
		if(reg_hanengnum.test(name)){
	
			
			$.ajax({
				url : "checkGroupName",
				data : {"name" : name},
				method: "post",
				success : function(result){
					
					if(result == 1){
						checkGname = false;
						label.css('color','red');
						label.text('이미 사용중인 모임명입니다.');
					}else{
						checkGname = true;
						label.css('color','#088dcd');
						label.text('사용가능한 모임명입니다.');
					}
					
				}
				
			});
			
			
		}else
			$(this).next().text('한글,영어,숫자로 3~20글자 이하로 작성해주세요.');
	});
	
	
	
	//소개글 확인
	$('textarea[name="groupInfo"]').keyup(function(){
		
		var info = $(this).val();
		var label = $(this).next();
		
		label.text(info.length + "/"+100);
		
		if(info.length > 100)
			label.css('color','red');
		else
			label.css('color','#088dcd');
		
	});
	
	
	
	
	//이미지 셋팅
	$('input[name="files"]:eq(0)').on('change',function(){
		
		  readURL(this,0);
		
	});
	
	
	//이미지 셋팅
	$('input[name="files"]:eq(1)').on('change',function(){
		
		  readURL(this,1);
		
	});
	
	
	function readURL(input,sort) {
        if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
                $('figure:eq('+sort+') img').attr('src', e.target.result);
            }

          reader.readAsDataURL(input.files[0]);
        }
    }


	//reset
	$('.submit-btns button:eq(0)').click(function(){
		
		$('input[name="groupName"]').next().text("모임 이름");
		$('input[name="groupName"]').next().css('color','#088dcd');
		$('textarea[name="groupInfo"]').next().text("모임 소개글");
		$('textarea[name="groupInfo"]').next().css('color','#088dcd');
		
		 $('figure:eq(0) img').attr('src', "resources/images/resources/user-avatar.jpg");
		 $('figure:eq(1) img').attr('src', "resources/images/resources/timeline-1.jpg");
		 
		 $('select').val("0");
	});
	
	
	
	//submit
	$("#insertGroup").submit(function(){
	
		//이름체크
		if(!checkGname){
			alert('그룹 이름을 확인해주세요.');
			$('input[name="groupName"]').focus();
			
			return false;
		}
		
		//카테고리 체크
		if(!checkCategory){
			alert('카테고리를 확인해주세요.');
			
			return false;
		}
		
		
	});
	</script>
</body>

</html>