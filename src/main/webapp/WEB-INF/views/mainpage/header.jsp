<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>GroupIN with together, GroupIN</title>
<link rel="icon" href="resources/images/fav.png" sizes="16x16">
<link rel="stylesheet" href="resources/css/main.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/color.css">
<link rel="stylesheet" href="resources/css/responsive.css">

<script src="resources/js/main.min.js"></script>
<script src="resources/js/script.js"></script>
</head>
<body>
	<!--<div class="se-pre-con"></div>-->
	<div class="theme-layout">




		<!-- 작아졌을때 나오는 헤더 (반응형) -->
		<div class="responsive-header">
			<div class="mh-head first Sticky">
				<span class="mh-btns-left"> <a class="" href="#menu"><i
						class="fa fa-align-justify"></i></a>
				</span> <span class="mh-text"> <a href="newsfeed.html" title="">
						<img src="resources/images/logo2.png" alt="">
				</a>
				</span> <span class="mh-btns-right"> <a class="fa fa-sliders"
					href="#shoppingbag"></a>
				</span>
			</div>
			<div class="mh-head second">
				<form class="mh-form">
					<input type="text" placeholder="search" /> <a href="#/"
						class="fa fa-search"></a>
				</form>
			</div>
			<nav id="menu" class="res-menu">
				<ul>
					<li><span>카테고리</span>
						<ul>
							<li><a href="index-2.html" title="">Home Social</a></li>
							<li><a href="index2.html" title="">Home Social 2</a></li>
							<li><a href="index-company.html" title="">Home Company</a></li>
							<li><a href="landing.html" title="">Login page</a></li>
							<li><a href="logout.html" title="">Logout Page</a></li>
							<li><a href="newsfeed.html" title="">news feed</a></li>
						</ul></li>
					<li><span>이 달의 모임</span>
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
					<li><span>마이페이지</span>
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
					<li><span>홍보게시판</span>
						<ul>
							<li><a href="forum.html" title="">Forum Page</a></li>
							<li><a href="forums-category.html" title="">Fourm
									Category</a></li>
							<li><a href="forum-open-topic.html" title="">Forum Open
									Topic</a></li>
							<li><a href="forum-create-topic.html" title="">Forum
									Create Topic</a></li>
						</ul></li>
					<li><span>뭐넣냐</span>
						<ul>
							<li><a href="shop.html" title="">Shop Products</a></li>
							<li><a href="shop-masonry.html" title="">Shop Masonry
									Products</a></li>
							<li><a href="shop-single.html" title="">Shop Detail Page</a></li>
							<li><a href="shop-cart.html" title="">Shop Product Cart</a></li>
							<li><a href="shop-checkout.html" title="">Product
									Checkout</a></li>
						</ul></li>
				</ul>
			</nav>
		</div>
		<!-- 작아졌을때나오는 header(반응형) 끝 -->


		<!-- 기존 화면 header 시작 -->
		<div class="topbar stick">
			<!-- 로고 -->
			<div class="logo">
				<a title="" href="newsfeed.html"> <img
					src="resources/images/logo.png" alt=""></a>
			</div>
			<!-- //로고 -->

				<!-- 카테고리 -->
			<div class="top-area">
				<ul class="main-menu">
					<li><a href="#" title="" onclick="allMenu(); return false;">카테고리</a></li>
					<li><a href="#" title="">베스트 모임</a></li>
					<li><a href="prboard" title="">홍보 게시판</a></li>
					<li><a href="#" title="">모임 만들기</a></li>
				</ul>

				<!-- 전체카테고리 -->
				<div id="all-menu" class="all-menu">
					<div class="inner">
						<dl>
							<dt>중분류1</dt>
							<dd>
								<a href="">소분류1</a>
							</dd>
							<dd>
								<a href="">소분류2</a>
							</dd>
							<dd>
								<a href="">소분류3</a>
							</dd>
							<dd>
								<a href="">소분류4</a>
							</dd>
							<dd>
								<a href="">소분류5</a>
							</dd>
						</dl>
						<dl>
							<dt>중분류2</dt>
							<dd>
								<a href="">소분류1</a>
							</dd>
							<dd>
								<a href="">소분류2</a>
							</dd>
							<dd>
								<a href="">소분류3</a>
							</dd>
							<dd>
								<a href="">소분류4</a>
							</dd>
							<dd>
								<a href="">소분류5</a>
							</dd>
							<dd>
								<a href="">소분류5</a>
							</dd>
							<dd>
								<a href="">소분류5</a>
							</dd>
							<dd>
								<a href="">소분류5</a>
							</dd>
							<dd>
								<a href="">소분류5</a>
							</dd>
						</dl>
						<dl>
							<dt>중분류3</dt>
							<dd>
								<a href="">소분류1</a>
							</dd>
							<dd>
								<a href="">소분류2</a>
							</dd>
							<dd>
								<a href="">소분류3</a>
							</dd>
							<dd>
								<a href="">소분류4</a>
							</dd>
							<dd>
								<a href="">소분류5</a>
							</dd>
						</dl>
						<dl>
							<dt>중분류4</dt>
							<dd>
								<a href="">소분류1</a>
							</dd>
							<dd>
								<a href="">소분류2</a>
							</dd>
							<dd>
								<a href="">소분류3</a>
							</dd>
							<dd>
								<a href="">소분류4</a>
							</dd>
							<dd>
								<a href="">소분류5</a>
							</dd>
						</dl>
						<dl>
							<dt>중분류5</dt>
							<dd>
								<a href="">소분류1</a>
							</dd>
							<dd>
								<a href="">소분류2</a>
							</dd>
							<dd>
								<a href="">소분류3</a>
							</dd>
							<dd>
								<a href="">소분류4</a>
							</dd>
							<dd>
								<a href="">소분류5</a>
							</dd>
							<dd>
								<a href="">소분류5</a>
							</dd>
							<dd>
								<a href="">소분류5</a>
							</dd>
							<dd>
								<a href="">소분류5</a>
							</dd>
						</dl>
					</div>
				</div>
				<!-- //전체카테고리 -->


			</div>
			<!-- //카테고리 -->

			<!-- 우측메뉴 -->
			<div class="right-menu">
				<ul class="setting-area">
					<li>
						<div class="box-search">
							<select name="searchType" id="searchType">
								<option value="all">전체</option>
								<option value="title">제목</option>
								<option value="Content">본문</option>
								<option value="reg_id">작성자</option>
							</select>
							<form method="post" class="form-search">
								<input type="text" name="keyword" id="keyword" placeholder="">
								<button data-ripple>
									<i class="ti-search" id="btnSearch"></i>
								</button>
							</form>
						</div>
					</li>
				</ul>

				<div class="user-img">

					<div class="nomember">
						<a href="login"><img src="resources/images/default.png" alt=""></a>
					</div>
					<c:if test="$!{empty id}">
						<img src="resources/images/resources/book-icon.jpg" alt="">
						<div class="user-setting">
							<a href="/mypage" title=""><i class="ti-pencil-alt"></i>마이페이지</a>
							<a href="/kokoalogout" title=""><i class="ti-power-off"></i>로그아웃</a>
						</div>
					</c:if>
					<c:if test="${id=='admin'}">
						<img src="resources/images/resources/admin.jpg" alt="">
						<div class="user-setting">
							<a href="/mypage" title=""><i class="ti-pencil-alt"></i>관리자페이지</a>
							<a href="/kokoalogout" title=""><i class="ti-power-off"></i>로그아웃</a>
						</div>
					</c:if>
				</div>
			</div>
		</div>
		<!-- 기존 화면 header 끝 -->


		<c:url var="getBoardListURL" value="/board/getBoardList"></c:url>
		<script>
			function allMenu() {
				if ($('#all-menu').css('display') == 'none') {
					$('#all-menu').show();
				} else {
					$('#all-menu').hide();
				}
			}
			$(function() {
				$(document).on('click', '#btnSearch', function(e) {
					e.preventDefault();
					var url = "${getBoardList}";
					url = url + "?searchType=" + $('#searchType').val();
					url = url + "&keyword=" + $('#keyword').val();
					location.href = url;
					console.log(url);
				});
			})
		</script>