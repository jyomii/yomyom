<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!-- Header -->
<jsp:include page="header.jsp" />


<!-- Header end -->
<style>
.carousel-inner {
	height: 50vh;
}

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

.forMemberCountBtnFour {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnFive {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnSix {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnSeven {
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

.calendarCellMy {
	background-color: black;
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

.min-width-h4 {
	margin-bottom: 0px !important;
}

.height-for-white {
	height: 70px !important;
}

.calendarBtn {
	cursor: pointer
}

#calendar td {
	cursor: pointer
}

.katalkbtn {
	background-color: #423630 !important;
	color: white !important;
}

.katalkbtn:hover {
	background-color: #594941 !important;
}

.katalkbtnw {
	color: #423630 !important;
}


.pickgradient {
	width: 100%;
	display: inline-block;
	background: linear-gradient(to right, rgba(0, 0, 0, 0) 0%,
		rgba(255, 255, 255, 0.1) 100%); /* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#a6000000',
		endColorstr='#00000000', GradientType=0); /* IE6-9 */
}

.d-block {
	top:-15vh;
	width: 100%;
	position: relative;
	z-index: -1;
	display: block;
}

.carousel-item.active img{
animation: crescendo 6s alternate infinite ease-in;

}

@keyframes crescendo {
  0%   {transform: scale(1);}
  100% {transform: scale(1.1);}
}
</style>
<!-- content -->
<section>
	<div class="feature-photo">


		<div id="carouselExampleCaptions" class="carousel slide"
			data-ride="carousel">
			<div class="carousel-inner">

				<c:forEach items="${bestgroup}" var="item" varStatus="status">


					<c:choose>
						<c:when test="${status.first eq true}">
							<div class="carousel-item active" style="overflow: hidden;">
								<c:choose>
									<c:when test="${empty item.groupCFile }">
										<div class="pickgradient">
											<img src="resources/images/resources/photo1.jpg"
												class="d-block" alt="...">
										</div>
									</c:when>
									<c:otherwise>
										<div class="pickgradient">
											<img class="d-block"
												src="<spring:url value='/image${item.groupCFile }'/>" />
										</div>
									</c:otherwise>
								</c:choose>

							<div class="g-post-classic-recommands"
								style="right: 5vh; text-align: right; width: auto; opacity: 0.8; position: absolute; top:3vh;">
								<h1 style="font-weight: bold;">BEST GROUPS :
									${item.groupName }</h1>
								<p>${item.groupInfo }</p>
							</div>
							</div>


						</c:when>
						<c:otherwise>
						<div class="carousel-item" style="overflow: hidden;">
								<c:choose>
									<c:when test="${empty item.groupCFile }">
										<div class="pickgradient">
											<img src="resources/images/resources/photo1.jpg"
												class="d-block" alt="...">
										</div>
									</c:when>
									<c:otherwise>
										<div class="pickgradient">
											<img class="d-block"
												src="<spring:url value='/image${item.groupCFile }'/>" />
										</div>
									</c:otherwise>
								</c:choose>

							<div class="g-post-classic-recommands"
								style="right: 5vh; text-align: right; width: auto; opacity: 0.8; position: absolute; top:3vh;">
								<h1 style="font-weight: bold;">BEST GROUPS :
									${item.groupName }</h1>
								<p>${item.groupInfo }</p>
							</div>
							</div>
						</c:otherwise>
						
						
					</c:choose>
				</c:forEach>
			</div>


			<a class="carousel-control-prev" href="#carouselExampleCaptions"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
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
										<c:forEach items="${dcategory }" var="item" varStatus="status">
											<li><a 
											 
											data-toggle="collapse"
												href="#collapseExample${status.index }" role="button"
												aria-expanded="false" aria-controls="collapseExample${status.index }"
												>${item.DCategoryName }</a>

												<div class="collapse" id="collapseExample${status.index }">
													<div class="card card-body">
														<ul class="naves">

															<c:forEach items="${scategory}" var="item2">

																<c:if test="${item.DCategoryKey ==  item2.DCategoryKey}">
																	<li><a href="${item2.SCategoryKey}">${item2.SCategoryName}</a></li>
																</c:if>
															</c:forEach>



														</ul>

													</div>
												</div></li>
										</c:forEach>


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
								<c:forEach items="${reList}" varStatus="status" var="item">
									<div class="g-post-classic nearby-contct">
										<figure>

											<c:choose>
												<c:when test="${empty item.groupCFile }">
													<img src="resources/images/resources/bloggrid-1.jpg">
												</c:when>
												<c:otherwise>

													<img alt="..."
														src="<spring:url value='/image${item.groupDFile }'/>" />
												</c:otherwise>
											</c:choose>

										</figure>
										<div class="g-post-meta">
											<div class="post-title">
												<h4>
													<a title="" href="#">${item.groupName }</a>
												</h4>
												<p>${item.groupInfo }</p>
												<span class="p-date">${item.lastDate} 마지막 활동 </span>
											</div>
											<div class="g-post-ranking">
												<a title="" class="likes"><i class="fa fa-heart-o"></i>회원수
													${item.memberCount } 명 </a>
											</div>
										</div>
									</div>
								</c:forEach>


							</div>

							<div class="central-meta">
								<div class="groups">
									<span><i class="fa fa-users"></i>모임 목록</span>
								</div>
								<ul class="nearby-contct">

									<c:forEach items="${groupList }" var="item">
										<li>
											<div class="nearly-pepls">
												<figure>
													<c:choose>
														<c:when test="${empty item.groupCFile }">
															<img src="resources/images/resources/group1.jpg" alt="">
														</c:when>
														<c:otherwise>

															<img
																src="<spring:url value='/image${item.groupDFile }'/>" />
														</c:otherwise>
													</c:choose>

												</figure>
												<div class="pepl-info">
													<h4>
														<a href="time-line.html" title="">${item.groupName }</a>
													</h4>
													<span>${item.groupInfo }</span>
												</div>
											</div>
										</li>
									</c:forEach>

								</ul>

							</div>
							<!-- photos -->
						</div>




						<!-- 그룹 페이지 위젯 오른쪽 -->
						<div class="col-lg-3">
							<aside class="sidebar static">

								<!-- 그룹 로그인 위젯 -->
								<c:if test="${empty id}">
									
								</c:if>
								<!-- 그룹 로그인 위젯 -->

								<!-- 그룹 나의 정보 위젯 -->
								<c:if test="${!empty id}">
									<div class="widget">
										<h4 class="widget-title">나의 정보</h4>
										<div class="your-page your-page-groupListDiv">

											<div class="page-meta">
												<a title="" class="underline"> <c:choose>
														<c:when test="${userInfo.logintype  == 0}">
													${userInfo.userId }
												</c:when>
														<c:otherwise>
												카카오톡 유저
												</c:otherwise>
													</c:choose>

												</a> <em> <i class="ti-bell"></i>정보수정
												</em>
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
								</c:if>
								<!-- 나의 정보 위젯 -->

								<!-- 그룹별 정모 나의 일정 위젯 -->
								<div class="widget calendarCenter">

									<h4 class="widget-title">나의 일정</h4>

									<div class="calendarDiv">
										<table id="calendar" class="calendarTable">
											<tr>
												<!-- label은 마우스로 클릭을 편하게 해줌 -->
												<th id="prevcal"><label><i
														class="fas fa-angle-left calendarBtn"></i></label></th>
												<th id="tbCalendarYM" colspan="5">yyyy년 m월</th>
												<th id="nextcal"><label><i
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
										<ul class="short-profile scheduleUl" id="shortschedule">
											<c:if test="${empty id}">
												<li><span>로그인 해주세요</span></li>
											</c:if>
											<c:if test="${!empty id}">
												<c:if test="${empty shortschedule}">
													<li><span>일정 없음</span></li>
												</c:if>
												<c:if test="${not empty shortschedule}">
													<c:forEach var="ss" items="${shortschedule }">
														<li><span>${ss.posttitle }</span>
															<p>
																모임명: ${ss.groupname }<br>시간: ${ss.startdate} <br>장소:
																${ss.location }
															</p></li>
													</c:forEach>
												</c:if>
											</c:if>
										</ul>
									</div>

								</div>
								<!-- 그룹별 정모 나의 일정 위젯 -->

							</aside>
						</div>
						<!-- 그룹 페이지 위젯 오른쪽 -->

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
			cell.innerHTML = "<span class='caldendarCell' id='day"+i+"'>" + i
					+ "</span>";//셀을 1부터 마지막 day까지 HTML 문법에 넣어줌
			cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
			if (cnt % 7 == 1) {/*일요일 계산*/
				//1주일이 7일 이므로 일요일 구하기
				//월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
				cell.innerHTML = "<span class='caldendarCell' id='day"+i+"'><font color=#F79DC2>"
						+ i + "</span>";
				//1번째의 cell에만 색칠
			}
			if (cnt % 7 == 0) {/* 1주일이 7일 이므로 토요일 구하기*/
				//월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
				cell.innerHTML = "<span class='caldendarCell' id='day"+i+"'><font color=skyblue>"
						+ i + "</span>";
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


<!-- 각 content에서 사용하는 script -->
<script>
	buildCalendar();

	$(function() {
		$('.carousel').on('slide.bs.carousel', function () {
			interval : 10000
		})
	});
</script>
