<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>      
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
	<title>모임 회원 상세 정보 페이지 forum.jsp</title>
    <link rel="icon" href="resources/images/fav.png" type="image/png" sizes="16x16"> 

    <link rel="stylesheet" href="resources/css/main.min.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/color.css">
    <link rel="stylesheet" href="resources/css/responsive.css">
	<!-- 제이쿼리 -->
	<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src = "resources/js/g_mem_detail.js"></script>
    <!-- 아이콘 -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<!-- 스타일 추가 -->
	<style>
		.user-active {
			list-style-type : none;
		}
		
		.user-active li {
			display : inline-block;
			margin : 0 10px;
		}
		
		.user-active {
			margin : 0;
			padding-inline-start : 0px !important;
		}
		
		.user-active i {
			padding-right : 8px;
		}
		
		.group-img {
			width : 40px;
			height : 40px;
			border-radius : 100%;
			box-sizing: border-box;
   			margin-right: 12px;
		}
		
		.forum-list th:last-child {
			text-align : center;
		}
		
		.table td {
			vertical-align : middle !important;
		}
		
		.comment-subject a, .comment-num {
			color : #8c8c8c !important;
			font-size : 9pt;
		}
		
		.comment-subject a::before {
			content : "원문 제목 : ";
		}
		
		.comment-num {
			color : #ed3939b5 !important;
		}
		
		.selected-menu {
			color : blue !important; /* 나중에 색깔좀 바꿔 찐파랑 뭐야; 촌스러워 */
		}
		
		.user-active li {
			color : #545454;
		}
		
		/* style.css에서 테이블에 대한 스타일 원본임 */
		/*
		.forum-list table tbody tr td {
			padding : 20px;
			text-align : center;
			width : 100%;
		}
		*/
		
		.forum-list table tbody tr td {
			padding : 20px;
		}
		
		.forum-list table tbody tr td:first-child {
			width : 67%;
		}
		
		.forum-list table tbody tr td:nth-child(2) {
			text-align : center;
		}
		
		.forum-list table tbody tr td:last-child {
			text-align : center;
			width : 23%;
		}
	</style>
</head>
<body>
<div class="theme-layout">
	<section>
		<div class="gap100">
			<div class="container">
				<div class="row">
					<!-- 가운데 위젯 -->
					<div class="col-lg-9">
						<div class="forum-warper">
							<div class="post-filter-sec">
								<ul class = "user-active">
									<li class = "selected-menu"><a href = "/"><i class="fas fa-users"></i>가입한 모임</a></li>
									<li><a href = "/"><i class="fas fa-user-edit"></i>작성한 글</a></li>
									<li><a href = "/"><i class="fas fa-comments"></i>작성한 댓글</a></li>
								</ul>
							</div>
						</div>
						<form>
							<input type = "hidden" id = "userKey" name = "userKey" value = "${userKey}">
							<input type = "hidden" id = "groupKey" name = "groupKey" value = "${groupKey}">
						</form>
						<!-- 가입한 모임 리스트 -->
						<div class="forum-list">
							<table class="table table-responsive">
								<thead>
									<tr>
										<th scope="col">name</th>
										<th scope="col">member</th>
										<th scope="col">date</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var = "b" items = "${list}">
										<tr>
											<td>
												<img src="<spring:url value='/image${b.groupDFile}'/>" class = "group-img" alt = ""/>
												<!-- 주소 나중에 바꿔야함 -->
												<a href = "groupmain?groupkey=${b.groupKey}" title = "${b.groupName}">${b.groupName}</a>
											</td>	
											<td>${b.memberCount}명</td>
											<td>${b.groupDate}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div> 
					</div>
					<!-- 가운데 위젯 끝 -->

					<!-- 우측 위젯 -->
					<!-- 상엽씨가 만들어준 걸로 교체해 -->
					<div class="col-lg-3">
						<aside class="sidebar full-style">
							<div class="widget">
								<div class="singin">
									<h4 class="widget-title">Login</h4>
									<form method="post">
										<input type="text" placeholder="User Name">
										<input type="password" placeholder="Password">
										<div class="checkbox">
										  <label>
											<input type="checkbox" checked="checked"><i class="check-box"></i>
											 <span>Remember Me</span>
										  </label>
										</div>
										<button type="submit">Log In</button>
									</form>
								</div>	
							</div>
							<div class="widget">
								<h4 class="widget-title">Forum Statistics</h4>
								<ul class="forum-static">
									<li>
										<a href="#" title="">Forums</a>
										<span>13</span>
									</li>
									<li>
										<a href="#" title="">Registered Users</a>
										<span>50</span>
									</li>
									<li>
										<a href="#" title="">Topics</a>
										<span>14</span>
									</li>
									<li>
										<a href="#" title="">Replies</a>
										<span>32</span>
									</li>
									<li>
										<a href="#" title="">Topic Tags</a>
										<span>50</span>
									</li>
								</ul>
							</div>
							<div class="widget">
								<h4 class="widget-title">Recent Topics</h4>
								<ul class="recent-topics">
									<li>
										<a href="#" title="">The new Goddess of War trailer was launched at E3!</a>
										<span>2 hours, 16 minutes ago</span>
										<i>The Community</i>
									</li>
									<li>
										<a href="#" title="">The new Goddess of War trailer was launched at E3!</a>
										<span>2 hours, 16 minutes ago</span>
										<i>The Community</i>
									</li>
									<li>
										<a href="#" title="">The new Goddess of War trailer was launched at E3!</a>
										<span>2 hours, 16 minutes ago</span>
										<i>The Community</i>
									</li>
								</ul>
							</div>
							<div class="widget">
								<h4 class="widget-title">Featured Topics</h4>
								<ul class="feature-topics">
									<li>
										<i class="fa fa-star"></i>
										<a href="#" title="">What is your favourit season in summer?</a>
										<span>2 hours, 16 minutes ago</span>
									</li>
									<li>
										<i class="fa fa-star"></i>
										<a href="#" title="">The new Goddess of War trailer was launched at E3!</a>
										<span>2 hours, 16 minutes ago</span>
									</li>
									<li>
										<i class="fa fa-star"></i>
										<a href="#" title="">Summer is Coming! Picnic in the east boulevard park</a>
										<span>2 hours, 16 minutes ago</span>
									</li>
								</ul>
							</div>
						</aside>	
					</div>
					<!-- 우측 위젯 끝 -->
				</div>
			</div>
		</div>
	</section>

	<!-- 원트 웅앵 있어서 지워버림 푸터가 허전한 건 기분탓이 아니라 사실이야 -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4">
					<div class="widget">
						<div class="foot-logo">
							<div class="logo">
								<a href="index-2.html" title=""><img src="resources/images/logo.png" alt=""></a>
							</div>	
							<p>
								The trio took this simple idea and built it into the world’s leading carpooling platform.
							</p>
						</div>
						<ul class="location">
							<li>
								<i class="ti-map-alt"></i>
								<p>33 new montgomery st.750 san francisco, CA USA 94105.</p>
							</li>
							<li>
								<i class="ti-mobile"></i>
								<p>+1-56-346 345</p>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-4">
					<div class="widget">
						<div class="widget-title"><h4>follow</h4></div>
						<ul class="list-style">
							<li><i class="fa fa-facebook-square"></i> <a href="https://web.facebook.com/shopcircut/" title="">facebook</a></li>
							<li><i class="fa fa-twitter-square"></i><a href="https://twitter.com/login?lang=en" title="">twitter</a></li>
							<li><i class="fa fa-instagram"></i><a href="https://www.instagram.com/?hl=en" title="">instagram</a></li>
							<li><i class="fa fa-google-plus-square"></i> <a href="https://plus.google.com/discover" title="">Google+</a></li>
							<li><i class="fa fa-pinterest-square"></i> <a href="https://www.pinterest.com/" title="">Pintrest</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-4">
					<div class="widget">
						<div class="widget-title"><h4>Navigate</h4></div>
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
						<div class="widget-title"><h4>useful links</h4></div>
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
						<div class="widget-title"><h4>download apps</h4></div>
						<ul class="colla-apps">
							<li><a href="https://play.google.com/store?hl=en" title=""><i class="fa fa-android"></i>android</a></li>
							<li><a href="https://www.apple.com/lae/ios/app-store/" title=""><i class="ti-apple"></i>iPhone</a></li>
							<li><a href="https://www.microsoft.com/store/apps" title=""><i class="fa fa-windows"></i>Windows</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer><!-- footer -->
	<div class="bottombar">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<span class="copyright"><a target="_blank" href="https://www.templateshub.net">Templates Hub</a></span>
					<i><img src="resources/images/credit-cards.png" alt=""></i>
				</div>
			</div>
		</div>
	</div>
</div>
	<script src="resources/js/main.min.js"></script>
	<script src="resources/js/script.js"></script>
</body>	
</html> 