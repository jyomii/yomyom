<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<jsp:include page="header.jsp" />
<!-- top area -->

<section>
	<div class="gap gray-bg">
		<div class="container-fluid">
			<div class="row" id="page-contents">
				<div class="col-lg-12">
					<div class="row" id="page-contents">
						<div class="col-lg-3">
							
						</div>


						<!-- content  -->
						<div class="col-lg-6">
							<!-- 검색바 -->



							<!-- 결과 페이지 -->
							<div class="central-meta">
								<div class="groups">
									<span><i class="fa fa-users"></i>검색된 모임 목록</span>
								</div>
								<ul class="nearby-contct" id="searchGroup">
								<c:if test="${empty groupList }">
								<li>
											<div class="nearly-pepls">
												
												<div class="pepl-info">
													<p>검색된 결과가 없습니다.</p>
												</div>
											</div>
										</li>
								</c:if>
								<c:if test="${!empty groupList }">
									<c:forEach items="${groupList}" var="item">
										<li>
											<div class="nearly-pepls">
												<figure>
													<a> <c:choose>
															<c:when test="${empty item.groupDFile }">
																<img src="resources/images/resources/photo1.jpg" alt="">
															</c:when>
															<c:otherwise>
																<img
																	src="<spring:url value='/image${item.groupDFile }'/>" />
															</c:otherwise>
														</c:choose>
													</a>
												</figure>
												<div class="pepl-info">
													<h4>
														<a title="group_main.net?groupkey=${item.groupKey }">${item.groupName}</a>
													</h4>
													<span> ${item.categoryName }/ <c:choose>
															<c:when test="${item.ageKey == 0}">
                            연령대 제한 없음/
                        </c:when>
															<c:otherwise>
                            ${item.ageKey* 10}대/
                        </c:otherwise>
														</c:choose> <c:choose>
															<c:when test="${item.whereKey == 0}">
                            지역 없음/
                        </c:when>
															<c:otherwise>
                            ${item.locationName}/
                        </c:otherwise>
														</c:choose> ${item.memberCount }명
													</span> <input type="hidden" value="${item.groupKey }">
												</div>
											</div>
										</li>
									</c:forEach>
								</c:if>
								
								</ul>
								<div class="lodmore">
									<button class="btn-view btn-load-more"
									<c:if test="${groupListCount < 10}">
														 style="visibility:hidden;"
														</c:if>></button>
								</div>
							</div>
							
							
							
							
							<div class="central-meta">
								<div class="groups">
									<span><i class="fa fa-comments"></i>검색된 글 목록</span>
								</div>
								<ul class="nearby-contct" id="searchPost">
									<c:if test="${empty postList }">
									<li>
																<div class="nearly-pepls">
																	
																	<div class="pepl-info">
																		
																			<p>검색된 결과가 없습니다.</p>
																			
																			
																	
																	</div>
																</div>
															</li>
									
									</c:if>
									<c:if test="${!empty postList }">
										<c:forEach items="${postList}" var="item">
															<li>
																<div class="nearly-pepls">
																	
																	<div class="pepl-info">
																		<h4>
																			<a>${item.postTitle }</a>
																			
																		</h4>
																			<p>${item.postContent }</p>
																			<span>${item.groupName }</span>
																			
																	
																	</div>
																</div>
															</li>

														</c:forEach>
									</c:if>
								
								</ul>
								<div class="lodmore">
									<button class="btn-view btn-load-more"
									<c:if test="${postListCount < 10}">
														 style="visibility:hidden;"
														</c:if>
									></button>
								</div>
							</div>
						</div>




						<!-- 오른쪽 친구 bar -->
						<div class="col-lg-3">
							
						</div>
						<!-- sidebar -->
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- footer -->
<jsp:include page="footer.jsp" />
<!-- footer end -->


<script>

var postPage = 1;
var groupPage = 1;

//더보기 클릭 시 더 불러오기
$(document).on("click", ".btn-load-more", function(event) {

	 var type = $(".btn-load-more").index(this);

	
	if(type == 0)
		groupPage++;
	else
		postPage++;
	
	var text = '${text}';
	
	
	$.ajax({
		url : "moreSearchList",
		method: "post",
		data : {"page" : type == 0 ? groupPage : postPage,
				"type" : type,
				"text" : text},
		success : function(r){
			
			
			var more = (r.result.length < 3);
			
			if (r.result.length > 0) {
				var html1 = print(r.result,type);
				
			}
			
			if(more)
				if(type == 0)
				$('#searchGroup .btn-load-more').css('visibility','hidden');
				else
				$('#searchPost .btn-load-more').css('visibility','hidden');
			
	
		}
		
	});
	
});

	function print(result, type){
		
		var text = "";
		
		if(type == 0){
			for(var i = 0; i < result.length; i++){
			
				
				text += '<li>';
				text += '<div class="nearly-pepls">';
				text += '<figure>';
				text += '<a>';
				if(result[i].item.groupDFile == null)
				text += '<img src="resources/images/resources/photo1.jpg" alt="">';
				else
				text += "<img src= \'<spring:url value='/image"+result[i].groupDFile +"'/>\'/>";
				text += '</a>';
				text += '	</figure>';
				text += '<div class="pepl-info">';
				text += '<h4>';
				text += '<a title="" href="group_main.net?groupkey='+result[i].groupKey+'">'+result[i].groupName+'</a>';
				text += '</h4>';
				text += '	<span> '+result[i].categoryName+'/';
				if(result[i].ageKey == 0)
				text += '연령대 제한 없음/';
				else
				text += result[i].ageKey* 10+'대/';
				
				if(result[i].whereKey == 0)
					text += '지역 없음/';
					else
					text += result[i].whereKey+'/';
				
				text += result[i].memberCount+'명';
				text += '</span> <input type="hidden" value="'+result[i].groupKey+'">';
				text += '</div>';
				text += '</div>';
				text += '</li>';
			}
			
		}else{
			
			for(var i = 0; i < result.length; i++){
				
			text += '<li>';
			text += '<div class="nearly-pepls">';
			text += '<div class="pepl-info">';
			text += '<h4>';
			text += '<a>'+result[i].postTitle+'</a>';
			text += '</h4>';
			text += '<p>'+result[i].postContent+'</p>';
			text += '<span>'+result[i].groupName+'</span>';
			text += '</div>';
			text += '</div>';
			text += '</li>';
			
			}
		}
		
		console.log('check : ' +text);
			if(type == 0)
				$('#searchGroup').append(text);
			else
				$('#searchPost').append(text);
			
	
	}



</script>

</body>

</html>