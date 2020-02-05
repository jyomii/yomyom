<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- Header -->
<jsp:include page="../mainpage/header.jsp" />


<link rel="stylesheet" href="resources/css/forWidget.css">
<!-- Header end -->
<style>

.text-end{
text-overflow:ellipsis;
white-space:nowrap;
word-wrap:normal;
width:100%;
overflow:hidden;
}
.carousel-inner {
	height: 50vh;
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
								<p class="text-end">${item.groupInfo }</p>
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
								<p class="text-end">${item.groupInfo }</p>
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
													<a title="이동" href="groupmain.net?groupkey=${item.groupKey }">${item.groupName }</a>
												</h4>
												<p class="text-end">${item.groupInfo }</p>
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
									<span><i class="fas fa-list"></i>모임 목록</span>
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
														<a href="groupmain.net?groupkey=${item.groupKey }" title="">${item.groupName }</a>
													</h4>
													<span class="text-end">${item.groupInfo }</span>
												</div>
											</div>
										</li>
									</c:forEach>

								</ul>

							</div>
							
							
							<div class="central-meta">
							<div class="groups">
							<span>	<i class="fa fa-comments"></i> 인기 글</span>
							</div>
							
							<div class="forum-list nearby-contct">
							<table class="table">
							
								<tbody>
								<c:forEach items="${bestboard }" var="item">
									<tr>
										<td>
										
											<a href="forums-category.html" title="">${item.postTitle } [${item.replyCount}]</a>
											<p class="text-end">${item.postContent }</p>
											<p><span>${item.groupNickname }</span>
											<span style="margin-left: 16px;">${item.groupName }</span>
											<span style="margin-left: 16px;">
											<script type="text/javascript">
											var date1 = '${item.postDate}';
											document.write(timeBefore(new Date(date1)));
											</script></span></p>
										</td>
										
										
									</tr>
								</c:forEach>	
								</tbody>
							</table>
						</div>
							</div>
							
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


<script src="resources/js/forWidget.js"></script>

<!-- 각 content에서 사용하는 script -->
<script>


	$(function() {
		$('.carousel').on('slide.bs.carousel', function () {
			interval : 10000
		})
	});
</script>
