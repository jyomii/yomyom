<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>      
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   
<jsp:include page = "mainpage/header.jsp"/>
	<title>모임 회원 상세 정보 페이지 forum.jsp</title>
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
	
</div>
<jsp:include page="mainpage/footer.jsp" />