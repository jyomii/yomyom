<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../mainpage/header.jsp" />
<style>
.modal-backdrop {
	z-index: -1;
}

.modal.fade.show {
	background: rgba(0, 0, 0, 0.5);
}

#exampleModal .modal-dialog {
	-webkit-transform: translate(0, -50%);
	-o-transform: translate(0, -50%);
	transform: translate(0, -50%);
	top: 50%;
	margin: 0 auto;
}

a.add-butn.more-action {
	right: 89px;
}
</style>


		<section>
			<div class="gap gray-bg">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">
							<div class="row" id="page-contents">
								<div class="col-lg-3">
									<aside class="sidebar static">
										<div class="widget">
										<h4 class="widget-title">관리자 메뉴</h4>
										<ul class="naves">
											<li>
												<i class="ti-clipboard"></i>
												<a href="admin" title="">통계</a>
											</li>
											<li>
												<i class="fas fa-user"></i>
												<a href="adminusers" title="">회원</a>
											</li>
											<li>
												<i class="fas fa-users"></i>
												<a href="admingroup" title="">모임</a>
											</li>
											
											<li>
												<i class="fas fa-align-justify"></i>
												<a href="admincategory" title="">카테고리</a>
											</li>
											
											<li>
												<i class="fas fa-clipboard"></i>
												<a href="adminnotice" title="">공지사항</a>
											</li>
											
										</ul>
									</div>
									<!-- 관리자 메뉴 -->


									</aside>
								</div>
								<!-- sidebar -->
								<div class="col-lg-6">
									<div class="central-meta">
										<div class="frnds">


											<ul class="nav nav-tabs">
												<li class="nav-item"><a class="active" href="#frends"
													data-toggle="tab">전체 모임</a> <span>${d_listCount}</span></li>
												<li class="nav-item"><a class="" href="#frends-req"
													data-toggle="tab">승인 요청</a><span>${r_listCount}</span></li>


											</ul>
											<span id="searchDir"></span>
											<!-- Tab panes -->
											<div class="tab-content">

												<div class="tab-pane active fade show " id="frends">
													<ul class="nearby-contct">
														<c:forEach items="${defaultGroup}" var="item">
															<li>
    <div class="nearly-pepls">
        <figure>
            <a>
                <c:choose>
                    <c:when test="${empty item.groupDFile }">
                        <img src="resources/images/resources/photo1.jpg" alt=""></c:when>
                        <c:otherwise>
                            <img src="<spring:url value='/image${item.groupDFile }'/>"/>
                        </c:otherwise>
                    </c:choose>
                </a>
            </figure>
            <div class="pepl-info">
                <h4>
                    <a title="">${item.groupName}</a>
                </h4>
                <span>
                    ${item.categoryName }/
                    <c:choose>
                        <c:when test="${item.ageKey == 0}">
                            연령대 제한 없음/
                        </c:when>
                        <c:otherwise>
                            ${item.ageKey* 10}대/
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${item.whereKey == 0}">
                            지역 없음/
                        </c:when>
                        <c:otherwise>
                            ${item.locationName}/
                        </c:otherwise>
                    </c:choose>
                    ${item.memberCount }명
                </span>
                <a href="#" title="" class="add-butn more-action negative" data-ripple="">모임 해산</a>
                <a href="#"  title="" class="add-butn usermessage" data-toggle="modal" data-target="#exampleModal"
                							data-userKey='${item.userKey }'
											
                >쪽지
                    																		보내기</a>
                <input type="hidden" value="${item.groupKey }"></div>
            </div>
        </li>
														</c:forEach>
														

													</ul>
													<div class="lodmore">
														<button class="btn-view btn-load-more"
															<c:if test="${d_listCount < 10}">
														 style="visibility:hidden;"
														</c:if>
														></button>
													</div>
												</div>
												<div class="tab-pane fade" id="frends-req">
													<ul class="nearby-contct">
														<c:forEach items="${requestGroup}" var="item">
															<li>
															<div class="nearly-pepls">
															<figure>
																	<a>
															<c:choose>
															<c:when test="${empty item.groupDFile }">
															<img
																		src= "resources/images/resources/photo1.jpg"
																		alt="">
															</c:when>
															<c:otherwise>
															<img src= "<spring:url value='/image${item.groupDFile }'/>"
																		/>
														
															</c:otherwise>
																
																
																</c:choose>
																</a>
																</figure>
																<div class="pepl-info">
																	<h4>
																		<a 
																			title="">${item.groupName}</a>
																	</h4>
																	<span>
																	
																	${item.categoryName }/
																	<c:choose>
																		<c:when test="${item.ageKey == 0}">
																			연령대 제한 없음/ 
																		</c:when>
																		<c:otherwise>
																			${item.ageKey* 10}대/ 
																		</c:otherwise>
																	</c:choose>
																	
																	<c:choose>
																		<c:when test="${item.whereKey == 0}">
																			지역 없음/ 
																		</c:when>
																		<c:otherwise>
																		${item.locationName}/
																		</c:otherwise>
																	</c:choose>
																	
																	${item.memberCount }명
																	
																	</span> <a href="#" title=""
																		class="add-butn more-action negative" data-ripple="">거부</a>
																	<a style="color:white;"" class="add-butn accept" data-ripple="">
																	승인
																		</a>
																		<input type="hidden" value="${item.groupKey }">
																</div>
															</div>
														</li>
														</c:forEach>
														

													</ul>
													<button class="btn-view btn-load-more"
													<c:if test="${r_listCount < 10}">
														 style="visibility:hidden;"
														</c:if>
													></button>
												</div>
											</div>
										</div>
									</div>

								</div>
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


	
	
		<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">모임장에게 쪽지보내기</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form method="post">
				<div class="modal-body">
					
								<div class="form-group">
								<input name="mgReceive" type="hidden">
								<textarea rows="4" placeholder="쪽지 내용을 입력하세요." required="required" name="mgContent"></textarea>
								</div>
				</div>
				<div class="modal-footer">
				<button type="submit" class="btn btn-primary"
						>전송</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>

				</div>
				</form>
			</div>
		</div>
	</div>
	
	

	<script src="resources/js/main.min.js"></script>
	<script src="resources/js/script.js"></script>
	<script type="text/javascript">
	
	
	$('.accept').click(function(){
		//모임 승인
		var key = $(this).next().val();
		
		$.ajax({
			
			url : "acceptGroup",
			data : {"key" : key},
			method: "post",
			success : function(result){
				if(result == 1){
					alert('승인되었습니다.');
					location.href="admingroup";
				}
			}
			
			
		});
		
	});
	
	
	//모달에 쪽지를 받을 회원키 넣기
	$(document).on("click", ".usermessage", function(event) {

		var userkey = $(this).data('userkey');
		$('.modal-body input:eq(0)').val(userkey);

	});
	
	
	//쪽지보내기
	$('#exampleModal form').submit(function(){
		
		var data = $(this).serialize();
		
		$.ajax({
			
			url : "SendUserMessage",
			data : data,
			method: "post",
			success : function(result){
				
				if(result == 1)
					alert('쪽지를 전송하였습니다.');
			}
			
			
		});
		
		return false;
		
	});
	
	
	var page = 1;
	//더보기 클릭 시 모임목록 가져오기
	$('.btn-load-more').click(function(){
		page++;
		var type = ($(this).index());
		
		$.ajax({
			url : "moreGroupList",
			method: "post",
			data : {"page" : page,
					"type" : type},
			success : function(result){
				
				var more = (result.length < 10);
				
				if (result.length > 0) {
					var html1 = print(result,type);
					
					
					
					if(type == 0){
					$('#frends ul').append(html1);
					if(more)
						$('#frends .btn-load-more').css('visibility','hidden');
					}
					else{
					$('#frends-req ul').append(html1);
					if(more)
						$('#frends-req .btn-load-more').css('visibility','hidden');
					}
					
				}
				
		
			}
			
		});
		
	});
	
	
	function print(list, type){

		var html = "";
		for (var i = 0; i < list.length; i++) {
			
			

			html += '<li>';
			html += '<div class="nearly-pepls">';
			html += '<figure>';
			html += '<a>';
		
			if(list[i].groupDFile == null)
			html += '<img src= "resources/images/resources/photo1.jpg" alt="">';
			else
			html += "<img src= \'<spring:url value='/image"+list[i].groupDFile +"'/>\'/>";
			                                            
			html += '</a></figure>';
			
			
			html += '<div class="pepl-info">';
			html += '<h4>';
			html += '<a title="">'+list[i].groupName+'</a>';
			html += '</h4><span>'+list[i].categoryName+'/';
			
			
			if(list[i].ageKey == 0)
				html +='연령대 제한 없음/';
			else
				html += (list[i].ageKey*10)+'대/';
				
			if(list[i].whereKey == 0)	
				html +='지역 없음/';
			else
				html += list[i].locationName+'/';
			
			html += list[i].memberCount +'명';
			
			
			html += '</span>';
			
			if(type == 1){
				//승인예정 모임
				html += '<a href="#" title=""';
				html +=	' class="add-butn more-action negative" data-ripple="">거부</a>';
				
				html += '<a style="color:white;" class="add-butn accept" data-ripple="">';
				html += '승인';
				html += '</a>';
				html += '	<input type="hidden" value="'+list[i].groupKey+'">';
			}else{
				
				html+=' <a href="#" title="" class="add-butn more-action negative" data-ripple="">모임 해산</a>';
				html+='  <a href="#"  title="" class="add-butn usermessage" data-toggle="modal" data-target="#exampleModal"';
	            html+=' data-userKey="'+list[i].userKey+'"';
												
	            html+='   >쪽지 보내기</a>';
	            html+= '<input type="hidden" value="'+list[i].groupKey+'">';
	           
			}
	
			
			html += '</div></div></li>';
			
		}

		return html;

	}
	
	
	//승인 거부 및 모임 해산
	$(document).on("click", ".negative", function(event) {

		console.log('check');
		var key = $(this).next().next().val();
		console.log(key);
		$.ajax({
			
			url : "negativeGroup",
			data : {"key" : key},
			method: "post",
			success : function(result){
				if(result == 1){
					alert('모임이 해산되었습니다.');
					location.href="admingroup";
				}
			}
			
			
		});

	});
	
	
	
	
	

	</script>
</body>

</html>