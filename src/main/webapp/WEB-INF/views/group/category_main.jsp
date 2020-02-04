<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!-- Header -->
<jsp:include page="../mainpage/header.jsp" />


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
											<img src="resources/images/group_default2.jpg"
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
											<img src="resources/images/group_default2.jpg"
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
																	<li><a href="CateogryMain?categorykey=${item2.SCategoryKey}">${item2.SCategoryName}</a></li>
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
													<img src="resources/images/group_default2.jpg">
												</c:when>
												<c:otherwise>

													<img alt="..."
														src="<spring:url value='/image${item.groupCFile }'/>" />
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
														<c:when test="${empty item.groupDFile }">
															<img src="resources/images/group_default.png" alt="">
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
								<jsp:include page="../group/group_rightWidget.jsp" />
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
<jsp:include page="../mainpage/footer.jsp" />
<!-- footer end -->



<!-- 각 content에서 사용하는 script -->
<script>
	buildCalendar();

	$(function() {
		$('.carousel').on('slide.bs.carousel', function () {
			interval : 10000
		})
	});
</script>
