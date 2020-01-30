<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../mainpage/header.jsp" />
<style>

.newpst-input {
 
    width: 100%;
}

.mesages-lists {
   
    padding-top: 0px;

}

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

.editing-interest form ol > li{
 width:50%;
 float: left;      

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
									<div class="inbox-lists">
									<h5 class="f-title"><i class="ti-heart"></i>공지사항</h5>
								
												<div class="inbox-action">
													<ul>
														<li><label><input type="checkbox" name="select-all" id="select_all" /> 전체 선택</label></li>
														<li><a class="delete-email" title=""><i class="fa fa-trash-o"></i> 삭제</a></li>
														<li><a href="adminnotice" title=""><i class="fa fa-refresh"></i> 새로고침</a></li>
													</ul>
												</div>
												<div class="mesages-lists">
													
													<div class="central-meta item"
														style="display: inline-block;">
														<div class="new-postbox">
			
															<div class="newpst-input">
																<form method="post" action="newNotice">
																<input type="hidden" name="newNotice">
																	<textarea rows="2" placeholder="새로운 공지사항을 입력하세요."></textarea>
																	<div class="attachments">
																		<ul>
																			
																			<li>
																				<button type="submit">추가</button>
																			</li>
																		</ul>
																	</div>
																</form>
															</div>
														</div>
													</div>
												
													<ul id="message-list" class="message-list">
													
													<c:forEach items="${notice }" var="item">
														<li class="unread">
														
															<input value="${item.mgKey }" class="select-message" type="checkbox" />
															<span class="star-this starred"><i class="fa fa-star-o"></i></span>

															<h3 class="sender-name">관리자</h3>
															
															<span class="make-important"><i class="fa fa-thumb-tack"></i></span>

															<p>
											`				${item.mgContent}
															</p>
														</li>
													</c:forEach>
														
														
														
														
													
													<div class="lodmore">
														<button class="btn-view btn-load-more"
														
														<c:if test="${noticeCount < 10}">
														 style="visibility:hidden;"
														</c:if>
														></button>
													</div>
														
													</ul>
													
													
												</div>
											</div><!-- Inbox lists -->
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
									<a href="index-2.html" title=""><img src="resources/images/logo.png"
										alt=""></a>
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
					<h5 class="modal-title" id="exampleModalLabel">모임 이름</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="widget">
						<ul class="short-profile">
							<li><span>모임 소개글</span>
								<p>Hi, i am jhon kates, i am 32 years old and worked as a
									web developer in microsoft company.</p></li>
							<li><span>카테고리</span>
								<p>게임</p></li>
							<li><span>연령대</span>
								<p>10대</p></li>
								<li><span>공개 여부</span>
								<p>N</p></li>
						</ul>
					</div>
					<!-- profile intro widget -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>
					
				</div>
			</div>
		</div>
	</div>
	
	<script src="resources/js/main.min.js"></script>
	<script src="resources/js/script.js"></script>
	<script>
	
	var page = 1;
	
	
	//삭제버튼 눌렀을 경우
	$('.delete-email').click(function(){
		
		var array = new Array();
		
		$('.select-message:checked').each(function(index, item){
			var check = $(this).val();
			array.push(check);
		});
		
		$.ajax({
			url : "deleteNotice",
			method : "post",
			data : {"key" : array},
			success : function(result){
				console.log('삭제되었습니다.');
			}
			
		});
		
	});
	
	$('.newpst-input form').submit(function(){
		
		var str = $(".newpst-input form textarea").val();

		
		str = str.replace(/(?:\r\n|\r|\n)/g, '<br />');

		console.log(str);
		
		$(".newpst-input form input").val(str);
		return true;
		
	});
	
	
	$('.btn-load-more').click(function(){
		
		page++;
		
		$.ajax({
			url : "moreNotice",
			method : "get",
			data : {"page" : page},
			success : function(result){
				var text = "";
				
				for(var i =0; i < result.length; i ++){
					
					text += '<li class="unread">';
					text += '<input value="${mgKey }" class="select-message" type="checkbox" />';
					text += '<span class="star-this starred"><i class="fa fa-star-o"></i></span>';
					text += '<h3 class="sender-name">관리자</h3>';
					text += '<span class="make-important"><i class="fa fa-thumb-tack"></i></span>';
					text += '<p>';
					text += result[i].mgContent;
					text += '</p>';
					text += '</li>';
			
				
				}
				
				
				$('.lodmore').before(text);
				
			}
			
		});
		
	});
	
	</script>
</body>

</html>