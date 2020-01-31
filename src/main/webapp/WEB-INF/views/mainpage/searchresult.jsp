<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<jsp:include page="header.jsp" />
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
										<li><i class="ti-clipboard"></i> <a href="newsfeed.html"
											title="">News feed</a></li>
										<li><i class="ti-mouse-alt"></i> <a href="inbox.html"
											title="">Inbox</a></li>
										<li><i class="ti-files"></i> <a href="fav-page.html"
											title="">My pages</a></li>
										<li><i class="ti-user"></i> <a
											href="timeline-friends.html" title="">friends</a></li>
										<li><i class="ti-image"></i> <a
											href="timeline-photos.html" title="">images</a></li>
										<li><i class="ti-video-camera"></i> <a
											href="timeline-videos.html" title="">videos</a></li>
										<li><i class="ti-comments-smiley"></i> <a
											href="messages.html" title="">Messages</a></li>
										<li><i class="ti-bell"></i> <a href="notifications.html"
											title="">Notifications</a></li>
										<li><i class="ti-share"></i> <a href="people-nearby.html"
											title="">People Nearby</a></li>
										<li><i class="fa fa-bar-chart-o"></i> <a
											href="insights.html" title="">insights</a></li>
										<li><i class="ti-power-off"></i> <a href="landing.html"
											title="">로그아웃</a></li>
									</ul>
								</div>
								<!-- Shortcuts -->
							</aside>
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
														<a title="">${item.groupName}</a>
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
									<span><i class="fa fa-users"></i>검색된 글 목록</span>
								</div>
								<ul class="nearby-contct" id="searchPost">
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
							<aside class="sidebar static">
								<div class="widget friend-list stick-widget">
									<h4 class="widget-title">Friends</h4>
									<div id="searchDir"></div>
									<ul id="people-list" class="friendz-list">
										<li>
											<figure>
												<img src="resources/images/resources/friend-avatar.jpg"
													alt="">
												<span class="status f-online"></span>
											</figure>
											<div class="friendz-meta">
												<a href="time-line.html">bucky barnes</a> <i><a
													href="https://wpkixx.com/cdn-cgi/l/email-protection"
													class="__cf_email__"
													data-cfemail="c2b5abacb6a7b0b1adaea6a7b082a5afa3abaeeca1adaf">[email&#160;protected]</a></i>
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
													data-cfemail="2f4d4e5d414a5c6f48424e4643014c4042">[email&#160;protected]</a></i>
											</div>
										</li>
										<li>
											<figure>
												<img src="resources/images/resources/friend-avatar3.jpg"
													alt="">
												<span class="status f-off"></span>
											</figure>
											<div class="friendz-meta">
												<a href="time-line.html">jason borne</a> <i><a
													href="https://wpkixx.com/cdn-cgi/l/email-protection"
													class="__cf_email__"
													data-cfemail="90faf1e3fffef2d0f7fdf1f9fcbef3fffd">[email&#160;protected]</a></i>
											</div>
										</li>
										<li>
											<figure>
												<img src="resources/images/resources/friend-avatar4.jpg"
													alt="">
												<span class="status f-off"></span>
											</figure>
											<div class="friendz-meta">
												<a href="time-line.html">Cameron diaz</a> <i><a
													href="https://wpkixx.com/cdn-cgi/l/email-protection"
													class="__cf_email__"
													data-cfemail="f19b90829e9f93b1969c90989ddf929e9c">[email&#160;protected]</a></i>
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
													data-cfemail="88e2e9fbe7e6eac8efe5e9e1e4a6ebe7e5">[email&#160;protected]</a></i>
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
													data-cfemail="e882899b87868aa88f85898184c68b8785">[email&#160;protected]</a></i>
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
													data-cfemail="e58f84968a8b87a58288848c89cb868a88">[email&#160;protected]</a></i>
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
													data-cfemail="4b212a382425290b2c262a222765282426">[email&#160;protected]</a></i>
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
													data-cfemail="97f5f6e5f9f2e4d7f0faf6fefbb9f4f8fa">[email&#160;protected]</a></i>
											</div>
										</li>
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
											<ul>
												<li class="me">
													<div class="chat-thumb">
														<img src="resources/images/resources/chatlist1.jpg" alt="">
													</div>
													<div class="notification-event">
														<span class="chat-message-item"> Hi James! Please
															remember to buy the food for tomorrow! I’m gonna be
															handling the gifts and Jake’s gonna get the drinks </span> <span
															class="notification-date"><time
																datetime="2004-07-24T18:18" class="entry-date updated">Yesterday
																at 8:10pm</time></span>
													</div>
												</li>
												<li class="you">
													<div class="chat-thumb">
														<img src="resources/images/resources/chatlist2.jpg" alt="">
													</div>
													<div class="notification-event">
														<span class="chat-message-item"> Hi James! Please
															remember to buy the food for tomorrow! I’m gonna be
															handling the gifts and Jake’s gonna get the drinks </span> <span
															class="notification-date"><time
																datetime="2004-07-24T18:18" class="entry-date updated">Yesterday
																at 8:10pm</time></span>
													</div>
												</li>
												<li class="me">
													<div class="chat-thumb">
														<img src="resources/images/resources/chatlist1.jpg" alt="">
													</div>
													<div class="notification-event">
														<span class="chat-message-item"> Hi James! Please
															remember to buy the food for tomorrow! I’m gonna be
															handling the gifts and Jake’s gonna get the drinks </span> <span
															class="notification-date"><time
																datetime="2004-07-24T18:18" class="entry-date updated">Yesterday
																at 8:10pm</time></span>
													</div>
												</li>
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
													<i class="em em-blush"></i> <i class="em em-disappointed"></i>
													<i class="em em-worried"></i> <i
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
				text += '<a title="">'+result[i].groupName+'</a>';
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