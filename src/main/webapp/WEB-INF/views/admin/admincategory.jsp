<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../mainpage/header.jsp" />

<style>
.editing-interest form ol>li {
	width: 50%;
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
										<div class="editing-interest">
											<h5 class="f-title">
												<i class="ti-heart"></i>카테고리
											</h5>
											<p>모임의 카테고리 종류를 추가합니다.</p>
											<form class="CategorySetting">
												<label>카테고리: </label> <input type="text"
													placeholder="대분류:소분류 형식으로 입력하세요." 
													onkeypress="press()">
												<button class="addCategory" type="button">추가</button>

												<ol class="interest-added">
													<c:forEach items="${categorylist }" var="item">
														<li>
														<input type="hidden"
															value="${item.scategorykey }">
														<input
															type="hidden" value="${item.dcategorykey }"> <a
															title="">${item.dname } : ${item.sname }</a></li>

													</c:forEach>


												</ol>
												
											</form>
										</div>
									</div>

								</div>



								<!-- 요청 목록 -->
								<div class="col-lg-3">
									<aside class="sidebar static">
										<div class="widget">
											<h4 class="widget-title">요청 목록</h4>
											<ul class="followers">
											
											<c:forEach items="${listCategory }" var="item">
												<li>
												<input type="hidden" value="${item.dname }">
												<input type="hidden" value="${item.sname }">
												<span>
												
										
												<c:choose>
													<c:when test="${empty item.sname}">
													대분류 : ${item.dname }
													</c:when>
													<c:otherwise>
													${item.dname } : ${item.sname }
													</c:otherwise>
												</c:choose>
												
												
												</span>

													<p>${item.requestkey }번의 요청이 들어왔습니다.</p>
													<div></div>
													</li>
													
													
												
												</c:forEach>
												
												
											</ul>
										</div>
										

									</aside>
								</div>
									<!-- 요청 끝 -->
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



	<script src="resources/js/main.min.js"></script>
	<script src="resources/js/script.js"></script>
	<script>
		$('.CategorySetting').submit(function() {
			return false;
		});
		
		
		$('.followers li').click(function() {
			
			var index = $(this).index();
			
			var dname = $(this).children('input:eq(0)').val();
			var sname = $(this).children('input:eq(1)').val();
			
			
			$.ajax({
				url : "AdminInsertCategory",
				data : {"dname" : dname,
						"sname" : sname},
				method: "post",
				success : function(result){
					if(result > 0){
					$('.followers li:eq('+index+')').remove();	
					alert('추가되었습니다.');
					}
					}
				
			});
			
		//	alert(index);
			//alert($(this).children('input:eq(0)').val());
		//	alert($(this).children('input:eq(1)').val());
			

		});
		
		
		function press(){ 
			
			 if(window.event.keyCode == 13){
				 addCategory();
			 }
				 
		} 
		
		$('.addCategory').click(function() {

			addCategory();

		});
		
		
		//카테고리 추가
		function  addCategory(){
			var text = $('.addCategory').prev().val();

			if (text.indexOf(':') != -1) {
				var result = text.split(':');

				if (result.length == 2 &&  result[0] &&  result[1]) {
					//alert('대분류 :' + result[0]);
					//alert('소분류 :' + result[1]);
					
					$.ajax({
						url : "AdminAddCategory",
						data : {"dname" : result[0],
								"sname" : result[1]},
						method: "post",
						success : function(result){
							if(result == 1){
								alert("추가되었습니다.");
								location.href="admincategory";
							}else
								alert('이미 존재하는 카테고리입니다.');
						}
					});
				
					

				} else {
					alert("대분류:소분류 형식으로 작성해주세요.");
				}

			} else {
				alert("대분류:소분류 형식으로 작성해주세요.");
			}
			
		}

		
	</script>
</body>

</html>