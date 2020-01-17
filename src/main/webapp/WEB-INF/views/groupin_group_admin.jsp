<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<!--타이틀-->
<title>GroupIN</title>
<link rel="icon" href="resources/images/fav.png" type="image/png"
	sizes="16x16">
<link rel="stylesheet" href="resources/css/main.min.css">
<link rel="stylesheet" href="resources/css/style1.css">
<link rel="stylesheet" href="resources/css/color.css">
<link rel="stylesheet" href="resources/css/responsive.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<style>
.forgroupname {
	list-style: none;
	padding-top: 20px;
}

.forgroupnamewidth {
	width: 30%;
	display: inline-block;
}

.forgroupnamewidth1 {
	width: 60%;
	display: inline-block;
}

.forgroupnameleft {
	float: left;
	list-style: none;
	margin-right: 20px;
}

.forlogintitle {
	margin-bottom: 10px !important;
}

.forSubmitBtnDiv {
	margin-top: 0px !important;
	margin-bottom: 10px;
}

.forLoginBtn {
	padding-left: 25px !important;
	padding-right: 25px !important;
	margin-left: 13%;
}

.forMemberCountBtnOne {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnTwo {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnThree {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forJoinBtn {
	margin-top: 0px !important;
	padding: 5px !important;
	float: right;
	font-size: 14px !important;
}

.forRegisterBtn {
	padding-left: 20px !important;
	padding-right: 20px !important;
	margin-left: 10%;
}

.forRememberIdDiv {
	margin-bottom: 0px !important;
	margin-top: 5px !important;
}

.forcheckbox {
	margin-top: 3px;
}

.calendarDiv {
	text-align: center;
	width: 95%;
	margin: 0 auto;
}

.calendarTable {
	width: 80%;
	margin: 0 auto;
}

.calendarBtn {
	cursor: pointer;
}

.calendarCell {
	cursor: pointer;
}

.calendarDiv td {
	border-radius: 13px;
}

.calendarCellSelected {
	background-color: #4F93CE;
	color: white !important;
}

.scheduleDiv {
	width: 80%;
	margin: 0 auto;
}

.scheduleUl {
	padding-left: 0px !important;
}

.card-header-bgcolor {
	background: white none repeat scroll 0 0 !important;
}

.schedule-span {
	margin-bottom: 7px;
	width: 70% !important;
}

.schedule-span1 {
	width: 35% !important;
}

.nearby-contct>li {
	padding: 15 px !important;
}

.paddingZero[aria-expanded="true"] {
	background: #088dcd;
	color: #fff;
	text-decoration: none;
}

.groupMember {
	display: inline-block;
	list-style: outside none none;
	margin-bottom: 0;
	padding: 0 25px 20px;
	width: 100%;
	max-height: 300px !important;
}

.groupMember li {
	display: inline-block;
	margin-bottom: 20px;
	position: relative;
	width: 100%;
}

.your-page-groupList li {
	margin-bottom: 3px !important;
}

.your-page-groupListDiv {
	min-height: 273px;
}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="resources/dist/js/datepicker.min.js"></script>
<script src="resources/dist/js/i18n/datepicker.en.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script>
	$(function() {
		$(".calendarDiv").on('click', 'td', function(event) {
			if ($(this).text() != "" || $(this).text().length() > 2) {
				$('td').removeClass('calendarCellSelected');
				$(this).addClass('calendarCellSelected');
			}
		})
		$(".forMemberCountBtnOne").click(function() {
			if ($("#collapseOne").hasClass("show")) {
				$('.i-changeOne').removeClass('fa-arrow-up');
				$('.i-changeOne').addClass('fa-arrow-down');
			} else {
				$('.i-changeOne').removeClass('fa-arrow-down');
				$('.i-changeOne').addClass('fa-arrow-up');
			}
		})
		$(".forMemberCountBtnTwo").click(function() {
			if ($("#collapseTwo").hasClass("show")) {
				$('.i-changeTwo').removeClass('fa-arrow-up');
				$('.i-changeTwo').addClass('fa-arrow-down');
			} else {
				$('.i-changeTwo').removeClass('fa-arrow-down');
				$('.i-changeTwo').addClass('fa-arrow-up');
			}
		})
		$(".forMemberCountBtnThree").click(function() {
			if ($("#collapseThree").hasClass("show")) {
				$('.i-changeThree').removeClass('fa-arrow-up');
				$('.i-changeThree').addClass('fa-arrow-down');
			} else {
				$('.i-changeThree').removeClass('fa-arrow-down');
				$('.i-changeThree').addClass('fa-arrow-up');
			}
		})
	})
</script>
<script type="text/javascript">
	//달력시작==================================================================
	var today = new Date();//오늘 날짜//내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
	var date = new Date();//today의 Date를 세어주는 역할
	function prevCalendar() {//이전 달
		// 이전 달을 today에 값을 저장하고 달력에 today를 넣어줌
		//today.getFullYear() 현재 년도//today.getMonth() 월  //today.getDate() 일 
		//getMonth()는 현재 달을 받아 오므로 이전달을 출력하려면 -1을 해줘야함
		today = new Date(today.getFullYear(), today.getMonth() - 1, today
				.getDate());
		buildCalendar(); //달력 cell 만들어 출력 
	}

	function nextCalendar() {//다음 달
		// 다음 달을 today에 값을 저장하고 달력에 today 넣어줌
		//today.getFullYear() 현재 년도//today.getMonth() 월  //today.getDate() 일 
		//getMonth()는 현재 달을 받아 오므로 다음달을 출력하려면 +1을 해줘야함
		today = new Date(today.getFullYear(), today.getMonth() + 1, today
				.getDate());
		buildCalendar();//달력 cell 만들어 출력
	}
	function buildCalendar() {//현재 달 달력 만들기
		var doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
		//이번 달의 첫째 날,
		//new를 쓰는 이유 : new를 쓰면 이번달의 로컬 월을 정확하게 받아온다.     
		//new를 쓰지 않았을때 이번달을 받아오려면 +1을 해줘야한다. 
		//왜냐면 getMonth()는 0~11을 반환하기 때문
		var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);
		//이번 달의 마지막 날
		//new를 써주면 정확한 월을 가져옴, getMonth()+1을 해주면 다음달로 넘어가는데
		//day를 1부터 시작하는게 아니라 0부터 시작하기 때문에 
		//대로 된 다음달 시작일(1일)은 못가져오고 1 전인 0, 즉 전달 마지막일 을 가져오게 된다
		var tbCalendar = document.getElementById("calendar");
		//날짜를 찍을 테이블 변수 만듬, 일 까지 다 찍힘
		var tbCalendarYM = document.getElementById("tbCalendarYM");
		//테이블에 정확한 날짜 찍는 변수
		//innerHTML : js 언어를 HTML의 권장 표준 언어로 바꾼다
		//new를 찍지 않아서 month는 +1을 더해줘야 한다. 
		tbCalendarYM.innerHTML = today.getFullYear() + "년 "
				+ (today.getMonth() + 1) + "월";

		/*while은 이번달이 끝나면 다음달로 넘겨주는 역할*/
		while (tbCalendar.rows.length > 2) {
			//열을 지워줌
			//기본 열 크기는 body 부분에서 2로 고정되어 있다.
			tbCalendar.deleteRow(tbCalendar.rows.length - 1);
			//테이블의 tr 갯수 만큼의 열 묶음은 -1칸 해줘야지 
			//30일 이후로 담을달에 순서대로 열이 계속 이어진다.
		}
		var row = null;
		row = tbCalendar.insertRow();
		//테이블에 새로운 열 삽입//즉, 초기화
		var cnt = 0;// count, 셀의 갯수를 세어주는 역할
		// 1일이 시작되는 칸을 맞추어 줌
		for (i = 0; i < doMonth.getDay(); i++) {
			/*이번달의 day만큼 돌림*/
			cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
			cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
		}
		/*달력 출력*/
		for (i = 1; i <= lastDate.getDate(); i++) {
			//1일부터 마지막 일까지 돌림
			cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
			cell.innerHTML = "<a href='#' class='caldendarCell'>" + i + "</a>";//셀을 1부터 마지막 day까지 HTML 문법에 넣어줌
			cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
			if (cnt % 7 == 1) {/*일요일 계산*/
				//1주일이 7일 이므로 일요일 구하기
				//월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
				cell.innerHTML = "<a href='#' class='caldendarCell'><font color=#F79DC2>"
						+ i + "</a>";
				//1번째의 cell에만 색칠
			}
			if (cnt % 7 == 0) {/* 1주일이 7일 이므로 토요일 구하기*/
				//월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
				cell.innerHTML = "<a href='#' class='caldendarCell'><font color=skyblue>"
						+ i + "</a>";
				//7번째의 cell에만 색칠
				row = calendar.insertRow();
				//토요일 다음에 올 셀을 추가
			}
			/*오늘의 날짜에 노란색 칠하기*/
			if (today.getFullYear() == date.getFullYear()
					&& today.getMonth() == date.getMonth()
					&& i == date.getDate()) {
				//달력에 있는 년,달과 내 컴퓨터의 로컬 년,달이 같고, 일이 오늘의 일과 같으면
				cell.bgColor = "#FAF58C";//셀의 배경색을 노랑으로 
			}
		}
	}
	//달력끝==================================================================
</script>
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
					<li><span>모임</span>
						<ul>
							<li><a href="index-2.html" title="">Home Social</a></li>
							<li><a href="index2.html" title="">Home Social 2</a></li>
							<li><a href="index-company.html" title="">Home Company</a></li>
							<li><a href="landing.html" title="">Login page</a></li>
							<li><a href="logout.html" title="">Logout Page</a></li>
							<li><a href="newsfeed.html" title="">news feed</a></li>
						</ul></li>
					<li><span>모임게시판</span>
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
					<li><span>또뭐있냐</span>
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
					<li><span>더보기</span>
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
		<!-- 헤더 지워도 됨 -->
		<div class="topbar stick">
			<div class="logo">
				<a title="" href="newsfeed.html"><img
					src="resources/images/logo.png" alt=""></a>
			</div>

			<div class="top-area">
				<ul class="main-menu">
					<li>
						<!-- 헤더메뉴 --> <a href="#" title="">모임</a>
						<ul>
							<li><a href="index-2.html" title="">Home Social</a></li>
							<li><a href="index2.html" title="">Home Social 2</a></li>
							<li><a href="index-company.html" title="">Home Company</a></li>
							<li><a href="landing.html" title="">Login page</a></li>
							<li><a href="logout.html" title="">Logout Page</a></li>
							<li><a href="newsfeed.html" title="">news feed</a></li>
						</ul>
					</li>
					<li><a href="#" title="">모임게시판</a>
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
					<li><a href="#" title="">모임게시판</a>
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
					<li><a href="#" title="">모임게시판</a>
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
		<!-- 헤더 지워도 됨 -->

		<!-- 그룹 페이지 상단 -->
		<section>
			<div class="feature-photo">
				<!-- 모임 대문 사진 -->
				<figure>
					<img src="resources/images/resources/timeline-1.jpg" alt="">
				</figure>
				<!-- 모임 대문 사진 -->
				<form class="edit-phto">
					<i class="fa fa-camera-retro"></i>
					<!-- 대문 사진 수정 버튼 -->
					<label class="fileContainer"> 대문 사진 수정 <input type="file" />
					</label>
				</form>
				<div class="container-fluid">
					<div class="row merged">
						<div class="col-lg-2 col-sm-3">
							<div class="user-avatar">
								<!-- 그룹 사진 -->
								<figure>
									<img src="resources/images/resources/user-avatar.jpg" alt="">
									<form class="edit-phto">
										<i class="fa fa-camera-retro"></i>
										<!-- 그룹 사진 수정 버튼 -->
										<label class="fileContainer"> 그룹 사진 수정하기 <input
											type="file" />
										</label>
										<!-- 그룹 사진 수정 버튼 -->
									</form>
								</figure>
								<!-- 그룹 사진 -->
							</div>
						</div>
						<div class="col-lg-10 col-sm-9">
							<div class="timeline-info">
								<div class="forgroupnamewidth">
									<!-- 그룹 이름 -->
									<ul>
										<li class="admin-name forgroupname">
											<h5>동선동 탁구모임 동.탁</h5>
										</li>
									</ul>
									<!-- 그룹 이름 -->
								</div>
								<div class="forgroupnamewidth1">
									<!-- 그룹 간단 정보 -->
									<ul>
										<li class="forgroupnameleft">지역: 성북구</li>
										<li class="forgroupnameleft">연령대: 무관</li>
										<li class="forgroupnameleft">카테고리: 운동>탁구</li>
										<li class="forgroupnameleft">회원수: 300명</li>
									</ul>
									<!-- 그룹 간단 정보 -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- 그룹 페이지 상단 -->

		<!-- 그룹 페이지 메인 -->
		<section>
			<div class="gap gray-bg">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">
							<div class="row" id="page-contents">

								<!-- 그룹 페이지 위젯 왼쪽 -->
								<div class="col-lg-3">
									<aside class="sidebar static">
										<!-- 그룹 게시판 위젯 -->
										<div class="widget">
											<h4 class="widget-title">게시판</h4>
											<ul class="naves">
												<li><i class="ti-clipboard"></i> <a
													href="newsfeed.html" title="">공지게시판</a></li>
												<li><i class="ti-mouse-alt"></i> <a href="inbox.html"
													title="">모임게시판</a></li>
												<li><i class="ti-files"></i> <a href="fav-page.html"
													title="">회비게시판</a></li>
											</ul>
										</div>
										<!-- 그룹 게시판 위젯 -->
										
										<!-- 모임 설정 게시판 위젯 -->
										<div class="widget">
											<h4 class="widget-title">모임 관리</h4>
											<ul class="naves">
												<li><i class="ti-info-alt"></i> <a
													href="edit-profile-basic.html" title="">모임 기본 설정</a></li>
												<li><i class="ti-mouse-alt"></i> <a
													href="edit-work-eductation.html" title="">모임 일정 관리</a></li>
												<li><i class="ti-heart"></i> <a
													href="edit-interest.html" title="">모임 회원 관리</a></li>
												<li><i class="ti-settings"></i> <a
													href="edit-account-setting.html" title="">모임 게시판 관리</a></li>
											</ul>
										</div>
										<!-- 모임 설정 게시판 위젯 -->

										<!-- 그룹 카톡방 위젯 -->
										<div class="widget">
											<div class="banner medium-opacity bluesh">
												<div
													style="background-image: url(resources/images/resources/baner-widgetbg.jpg)"
													class="bg-image"></div>
												<!--  <div class="baner-top">
													<span><img src="resources/images/book-icon.png"
														alt=""></span> <i class="fa fa-ellipsis-h"></i>
												</div>-->
												<div class="banermeta">
													<p>
														그룹 카카오톡<br>채팅방에<br>참여하세요!
													</p>
													<!--<span>like them all</span>-->
													<a href="#" title="" data-ripple="">카톡방 참여하기</a>
												</div>
											</div>
										</div>
										<!-- 그룹 카톡방 위젯 -->

										<!-- 그룹 가입 회원 목록 -->
										<div class="widget friend-list">
											<h4 class="widget-title">모임의 회원들</h4>
											<div id="searchDir"></div>
											<ul id="people-list" class="friendz-list">
												<li>
													<figure>
														<img src="resources/images/resources/friend-avatar.jpg"
															alt="">
														<span class="status f-online"></span>
													</figure>
													<div class="friendz-meta">
														<a href="time-line.html">이지연</a> <i><a
															href="https://wpkixx.com/cdn-cgi/l/email-protection"
															class="__cf_email__"
															data-cfemail="4136282f352433322e2d25243301262c20282d6f222e2c">모임장</a></i>
													</div>
												</li>
												<li>
													<figure>
														<img src="resources/images/resources/friend-avatar2.jpg"
															alt="">
														<span class="status f-away"></span>
													</figure>
													<div class="friendz-meta">
														<a href="time-line.html">고연희</a> <i><a
															href="https://wpkixx.com/cdn-cgi/l/email-protection"
															class="__cf_email__"
															data-cfemail="3a585b48545f497a5d575b535614595557"></a></i>
													</div>
												</li>
												<li>
													<figure>
														<img src="resources/images/resources/friend-avatar3.jpg"
															alt="">
														<span class="status f-off"></span>
													</figure>
													<div class="friendz-meta">
														<a href="time-line.html">조태석</a> <i><a
															href="https://wpkixx.com/cdn-cgi/l/email-protection"
															class="__cf_email__"
															data-cfemail="127873617d7c7052757f737b7e3c717d7f"></a></i>
													</div>
												</li>
												<li>
													<figure>
														<img src="resources/images/resources/friend-avatar4.jpg"
															alt="">
														<span class="status f-off"></span>
													</figure>
													<div class="friendz-meta">
														<a href="time-line.html">장연지</a> <i><a
															href="https://wpkixx.com/cdn-cgi/l/email-protection"
															class="__cf_email__"
															data-cfemail="620803110d0c0022050f030b0e4c010d0f"></a></i>
													</div>
												</li>
												<li>

													<figure>
														<img src="resources/images/resources/friend-avatar5.jpg"
															alt="">
														<span class="status f-online"></span>
													</figure>
													<div class="friendz-meta">
														<a href="time-line.html">나상엽</a> <i><a
															href="https://wpkixx.com/cdn-cgi/l/email-protection"
															class="__cf_email__"
															data-cfemail="0963687a66676b496e64686065276a6664"></a></i>
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
															data-cfemail="5b313a283435391b3c363a323775383436">[email&#160;protected]</a></i>
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
															data-cfemail="472d263428292507202a262e2b6924282a">[email&#160;protected]</a></i>
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
															data-cfemail="7a101b091514183a1d171b131654191517">[email&#160;protected]</a></i>
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
															data-cfemail="7c1e1d0e12190f3c1b111d1510521f1311">[email&#160;protected]</a></i>
													</div>
												</li>
											</ul>
										</div>
										<!-- 그룹 가입 회원 목록 -->

									</aside>
								</div>
								<!-- 그룹 페이지 위젯 왼쪽  -->

								<!-- 그룹 페이지 위젯 중간 -->
								<div class="col-lg-6">

									<div class="central-meta">
										<div class="onoff-options">
											<h5 class="f-title">
												<i class="ti-settings"></i>모임 기본 설정
											</h5>
											<p>모임의 기본 설정입니다</p>
											<form method="post">
												<div class="setting-row">
													<span>모임 공개 여부</span>
													<p>공개 / 비공개 설정</p>
													<input type="checkbox" id="switch00" /> <label
														for="switch00" data-on-label="ON" data-off-label="OFF"></label>
												</div>
												<div class="setting-row">
													<span>검색 허용 여부</span>
													<p>검색 허용 / 비허용 설정</p>
													<input type="checkbox" id="switch01" /> <label
														for="switch01" data-on-label="ON" data-off-label="OFF"></label>
												</div>
												<div class="setting-row">
													<span>Send me notifications</span>
													<p>Send me notification emails my friends like, share
														or message me</p>
													<input type="checkbox" id="switch02" /> <label
														for="switch02" data-on-label="ON" data-off-label="OFF"></label>
												</div>
												<div class="setting-row">
													<span>Text messages</span>
													<p>Send me messages to my cell phone</p>
													<input type="checkbox" id="switch03" /> <label
														for="switch03" data-on-label="ON" data-off-label="OFF"></label>
												</div>
												<div class="setting-row">
													<span>Enable tagging</span>
													<p>Enable my friends to tag me on their posts</p>
													<input type="checkbox" id="switch04" /> <label
														for="switch04" data-on-label="ON" data-off-label="OFF"></label>
												</div>
												<div class="setting-row">
													<span>Enable sound Notification</span>
													<p>You'll hear notification sound when someone sends
														you a private message</p>
													<input type="checkbox" id="switch05" checked="" /> <label
														for="switch05" data-on-label="ON" data-off-label="OFF"></label>
												</div>
												<div class="submit-btns">
													<button type="button" class="mtr-btn">
														<span>수정하기</span>
													</button>
													<button type="button" class="mtr-btn">
														<span>원래대로</span>
													</button>
												</div>
											</form>
										</div>
									</div>

								</div>
								<!-- 그룹 페이지 위젯 중간 -->

								<!-- 그룹 페이지 위젯 오른쪽 -->
								<div class="col-lg-3">
									<aside class="sidebar static">

										<!-- 그룹 로그인 위젯 -->
										<div class="widget">
											<h4 class="widget-title forlogintitle">로그인</h4>
											<div class="your-page">
												<div class="form-group">
													<input type="text" id="input" required="required" /> <label
														class="control-label" for="input">아이디</label><i
														class="mtrl-select"></i>
												</div>
												<div class="form-group">
													<input type="password" required="required" /> <label
														class="control-label" for="input">비밀번호</label><i
														class="mtrl-select"></i>
												</div>
												<div class="checkbox forRememberIdDiv">
													<label> <input type="checkbox" checked="checked"><i
														class="check-box forcheckbox"></i>아이디 저장
													</label>
												</div>

												<div class="submit-btns forSubmitBtnDiv">
													<button type="button" class="mtr-btn forLoginBtn">
														<span>수정하기</span>
													</button>
													<button type="button" class="mtr-btn forRegisterBtn">
														<span>원래대로</span>
													</button>
												</div>

											</div>
										</div>
										<!-- 그룹 로그인 위젯 -->

										<!-- 그룹 나의 정보 위젯 -->
										<div class="widget">
											<h4 class="widget-title">나의 정보</h4>
											<div class="your-page your-page-groupListDiv">
												<figure>
													<a href="#" title=""><img
														src="resources/images/resources/friend-avatar9.jpg" alt=""></a>
												</figure>
												<div class="page-meta">
													<a href="#" title="" class="underline">동선동탁구대장</a> <span><i
														class="ti-comment"></i>메세지 <em>9</em></span> <span><i
														class="ti-bell"></i>알림 <em>2</em></span>
												</div>
												<div class="page-likes">
													<ul class="nav nav-tabs likes-btn">
														<li class="nav-item"><a class="active" href="#link1"
															data-toggle="tab">나의모임정보</a></li>
														<li class="nav-item"><a class="" href="#link2"
															data-toggle="tab">가입모임목록</a></li>
													</ul>
													<!-- Tab panes -->
													<div class="tab-content">
														<div class="tab-pane active fade show" id="link1">
															<span><i class="ti-heart"></i>884</span> <a href="#"
																title="weekly-likes">35 new likes this week</a>
															<div class="users-thumb-list">
																<a href="#" title="Anderw" data-toggle="tooltip"> <img
																	src="resources/images/resources/userlist-1.jpg" alt="">
																</a> <a href="#" title="frank" data-toggle="tooltip"> <img
																	src="resources/images/resources/userlist-2.jpg" alt="">
																</a> <a href="#" title="Sara" data-toggle="tooltip"> <img
																	src="resources/images/resources/userlist-3.jpg" alt="">
																</a> <a href="#" title="Amy" data-toggle="tooltip"> <img
																	src="resources/images/resources/userlist-4.jpg" alt="">
																</a> <a href="#" title="Ema" data-toggle="tooltip"> <img
																	src="resources/images/resources/userlist-5.jpg" alt="">
																</a> <a href="#" title="Sophie" data-toggle="tooltip"> <img
																	src="resources/images/resources/userlist-6.jpg" alt="">
																</a> <a href="#" title="Maria" data-toggle="tooltip"> <img
																	src="resources/images/resources/userlist-7.jpg" alt="">
																</a>
															</div>
														</div>
														<div class="tab-pane fade" id="link2">
															<div>
																<ul class="your-page-groupList">
																	<li>동.탁</li>
																	<li>동.탁</li>
																	<li>동.탁</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- 나의 정보 위젯 -->

										<!-- 그룹별 정모 나의 일정 위젯 -->
										<div class="widget calendarCenter">
											<h4 class="widget-title">나의 일정</h4>

											<div class="calendarDiv">
												<table id="calendar" class="calendarTable">
													<tr>
														<!-- label은 마우스로 클릭을 편하게 해줌 -->
														<th><label onclick="prevCalendar()"><i
																class="fas fa-angle-left calendarBtn"></i></label></th>
														<th id="tbCalendarYM" colspan="5">yyyy년 m월</th>
														<th><label onclick="nextCalendar()"><i
																class="fas fa-angle-right calendarBtn"></i></label></th>
													</tr>
													<tr>
														<th align="center">일</th>
														<th align="center">월</th>
														<th align="center">화</th>
														<th align="center">수</th>
														<th align="center">목</th>
														<th align="center">금</th>
														<th align="center">토</th>
													</tr>
												</table>
											</div>
											<div class="scheduleDiv">
												<hr>
												<ul class="short-profile scheduleUl">
													<li><span>17회 동.탁 모임</span>
														<p>
															시간: 오후6시<br>장소: 동선탁구장
														</p></li>
													<li><span>성북구 친목 송년회</span>
														<p>
															시간: 오후10시<br>장소: 술집
														</p></li>
													<li><span>일정 없음</span></li>
												</ul>
											</div>

										</div>
										<!-- 그룹별 정모 나의 일정 위젯 -->

									</aside>
								</div>
								<!-- 그룹 페이지 위젯 오른쪽 -->

							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 그룹 페이지 메인 -->

		<!-- 그룹 페이지 푸터 -->
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
	<script>
		buildCalendar();
	</script>
	<script data-cfasync="false"
		src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="resources/js/main.min.js"></script>
	<script src="resources/js/script1.js"></script>
</body>

</html>