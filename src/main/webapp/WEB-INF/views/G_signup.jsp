<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<jsp:include page = "mainpage/header.jsp"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
	<title>모임 가입 페이지 </title>
    
	<!-- 제이쿼리 -->
	<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- 스타일 추가 -->
	<style>
		.avatar {
			border-radius : 100%;
		}
		
		.profile-img {
			display : inline-block !important;
			float: left;
    		margin-right: 25px;
		}
		
		.profile-img img {
			width : 80px;
		}
		
		.form-group.half {
			display : inline-block;
		}
		
		.nick-status {
			font-size : 9pt;
		}
		
		.form-group .control-label {
			font-size : 10pt;
		}
	</style>
	<script>
		$(function () {
			$('#nickname').keyup(function(){
				// 형식에 맞든 안 맞든 첫 메시지가 계속 뜨기 때문에 keyup 이벤트 발생할 때마다 메시지 비운다.
				$('.nick-status').empty();	
				
				var reg = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]{2,10}$/;
				var nick = $('#nickname').val();
				if (reg.test(nick)) {	// 정규표현식에 맞을 때 
					console.log('### keyup 테스트 ### ' + nick);
					$.ajax({
						type : "POST",
						url : "groupNickCheck",
						data : {nickname : nick, groupkey : $('input[name=groupkey]').val()},
						cache : false,
						success : function (data) {
							console.log('data = ' + data + ', isNaN(data) = ' + isNaN(data));
							if (data == 1) {
								$('.nick-status').css('color', 'red').text('이미 존재하는 닉네임입니다.');
							} else {
								$('.nick-status').css('color', 'blue').text('사용 가능한 닉네임입니다.');
							}
						},
						error : function(request, status, error) {
							console.log("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error);
						}
					}); // ajax end
				} else {
					if ($(this).val().length == 1) {
						$('.nick-status').css('color', 'lightgray').text('한글, 영어, 숫자로 2~10글자만 작성해주세요.');
					} else if ($(this).val().length == 11) {
						var input = '';
						input = $(this).val().substr(0, $(this).val().length-1);
						console.log('input = ' + input);
						$(this).val(input);
						$('.nick-status').css('color', 'lightgray').text('한글, 영어, 숫자로 2~10글자만 작성해주세요.');
					}
				}
			}); // keyup end
			
			$('#uploadfile').on('change', view);
			
			function view (e) {
				// 선택한 그림의 File 객체를 취득
				var file = e.target.files[0]; // File 객체 리스트에서 첫 번째 File 객체를 가져온다.
				
				// file.type : 파일의 형식 (MIME 타입 - 예) text/html)
				if (!file.type.match('image.*')) {	// 파일 타입이 image인지 확인한다.
					alert('확장자는 이미지 확장자만 가능합니다.');
					return;
				}

				// 파일을 읽기 위한 객체 생성
				var reader = new FileReader();
				
				// DataURL 형식으로 파일을 읽어온다.
				// 읽어온 결과는 reader 객체의 result 속성에 저장된다.
				reader.readAsDataURL(file);
				
				// 읽기에 성공했을 때 실행되는 이벤트 핸들러
				reader.onload = function(e) {
					// result : 읽기 결과가 저장된다.
					// reader.result 또는 e.target.result
					$('#upImg').attr('src', e.target.result);
				} // reader.onload end
			}; // view end
		});	// function end
	</script>
<div class="theme-layout">
	
	<section>
		<div class="gap gray-bg">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="row" id="page-contents">
							<div class="col-lg-3">
								<aside class="sidebar static">
									<div class="widget">
										<h4 class="widget-title">Recent Activity</h4>
										<ul class="activitiez">
											<li>
												<div class="activity-meta">
													<i>10 hours Ago</i>
													<span><a title="" href="#">Commented on Video posted </a></span>
													<h6>by <a href="time-line.html">black demon.</a></h6>
												</div>
											</li>
											<li>
												<div class="activity-meta">
													<i>30 Days Ago</i>
													<span><a title="" href="#">Posted your status. “Hello guys, how are you?”</a></span>
												</div>
											</li>
											<li>
												<div class="activity-meta">
													<i>2 Years Ago</i>
													<span><a title="" href="#">Share a video on her timeline.</a></span>
													<h6>"<a href="#">you are so funny mr.been.</a>"</h6>
												</div>
											</li>
										</ul>
									</div>
									<div class="widget stick-widget">
										<h4 class="widget-title">Edit info</h4>
										<ul class="naves">
											<li>
												<i class="ti-info-alt"></i>
												<a href="edit-profile-basic.html" title="">Basic info</a>
											</li>
											<li>
												<i class="ti-mouse-alt"></i>
												<a href="edit-work-eductation.html" title="">Education & Work</a>
											</li>
											<li>
												<i class="ti-heart"></i>
												<a href="edit-interest.html" title="">My interests</a>
											</li>
											<li>
												<i class="ti-settings"></i>
												<a href="edit-account-setting.html" title="">account setting</a>
											</li>
											<li>
												<i class="ti-lock"></i>
												<a href="edit-password.html" title="">change password</a>
											</li>
										</ul>
									</div><!-- settings widget -->										
								</aside>
							</div><!-- sidebar -->
							
							<!-- 모임 가입 폼 -->
							<div class="col-lg-6">
								<div class="central-meta">
									<div class="editing-info">
										<h5 class="f-title"><i class="ti-info-alt"></i>모임 가입</h5>
										
										<!-- 사진 때문에 enctype 추가 -->
										<form method = "post" enctype = "multipart/form-data" action = "joinGroupAction">
											<input type = "hidden" name = "groupKey" value = "${groupkey}">
											<input type = "hidden" name = "userKey" value = "${userkey}">
											<!-- 프사 -->
											<div class = "profile-img">
												<label>
													<input type = "file" id = "uploadfile" name = "uploadfile" accept = "image/gif, image/jpeg, image/png" style = "display : none">
													<img src = "resources/images/default.png" id = "upImg" alt = "default" class = "avatar">
												</label>
											</div>
											<!-- 반쪽짜리 -->
											<!-- 닉네임 -->
											<div class="form-group half">
											  <input type = "text" id = "nickname" name = "groupNickname" required = "required"/>
											  <label class="control-label" for="nickname">닉네임</label><i class="mtrl-select"></i>
											  <span class = "nick-status"></span>
											</div>
											<!-- 효율적으로 코드 좀 짜보쟈 -->
											<c:if test = "${quest1 ne null}">
												<div class="form-group">	
												  <input type = "text" id = "answer1" name = "answer1" required = "required"/>
												  <label class="control-label" for="answer1">${quest1}</label><i class="mtrl-select"></i>
												</div>
											</c:if>
											<c:if test = "${quest2 ne null}">
												<div class="form-group">	
												  <input type = "text" id = "answer2" name = "answer2" required = "required"/>
												  <label class="control-label" for="answer2">${quest2}</label><i class="mtrl-select"></i>
												</div>
											</c:if>
											<c:if test = "${quest3 ne null}">
												<div class="form-group">	
												  <input type = "text" id = "answer3" name = "answer3" required = "required"/>
												  <label class="control-label" for="answer3">${quest3}</label><i class="mtrl-select"></i>
												</div>
											</c:if>
											<c:if test = "${quest4 ne null}">
												<div class="form-group">	
												  <input type = "text" id = "answer4" name = "answer4" required = "required"/>
												  <label class="control-label" for="answer4">${quest4}</label><i class="mtrl-select"></i>
												</div>
											</c:if>
											<c:if test = "${quest5 ne null}">
												<div class="form-group">	
												  <input type = "text" id = "answer5" name = "answer5" required = "required"/>
												  <label class="control-label" for="answer5">${quest5}</label><i class="mtrl-select"></i>
												</div>
											</c:if>
											<c:if test = "${introuduce ne null}">
												<div class="form-group">	
												  <textarea rows = "4" id = "introduce" name = "introduce" required = "required"></textarea>
												  <label class="control-label" for="introduce">${introduce}</label><i class="mtrl-select"></i>
												</div>
											</c:if>
											<div class="submit-btns">
												<button type="reset" class="mtr-btn"><span>취소</span></button>
												<button type="submit" class="mtr-btn"><span>가입</span></button>
											</div>
										</form>
										<!-- 모임 가입 끝 -->
									</div>
								</div>	
							</div><!-- centerl meta -->
							<!-- 모임 가입 끝 -->
							
							<div class="col-lg-3">
								<aside class="sidebar static">
									<div class="widget">
											<h4 class="widget-title">Your page</h4>	
											<div class="your-page">
												<figure>
													<a title="" href="#"><img alt="" src="resources/images/resources/friend-avatar9.jpg"></a>
												</figure>
												<div class="page-meta">
													<a class="underline" title="" href="#">My page</a>
													<span><i class="ti-comment"></i>Messages <em>9</em></span>
													<span><i class="ti-bell"></i>Notifications <em>2</em></span>
												</div>
												<div class="page-likes">
													<ul class="nav nav-tabs likes-btn">
														<li class="nav-item"><a data-toggle="tab" href="#link1" class="active">likes</a></li>
														 <li class="nav-item"><a data-toggle="tab" href="#link2" class="">views</a></li>
													</ul>
													<!-- Tab panes -->
													<div class="tab-content">
													  <div id="link1" class="tab-pane active fade show">
														<span><i class="ti-heart"></i>884</span>
														  <a title="weekly-likes" href="#">35 new likes this week</a>
														  <div class="users-thumb-list">
														  	<a data-toggle="tooltip" title="" href="#" data-original-title="Anderw">
																<img alt="" src="resources/images/resources/userlist-1.jpg">  
															</a>
															<a data-toggle="tooltip" title="" href="#" data-original-title="frank">
																<img alt="" src="resources/images/resources/userlist-2.jpg">  
															</a>
															<a data-toggle="tooltip" title="" href="#" data-original-title="Sara">
																<img alt="" src="resources/images/resources/userlist-3.jpg">  
															</a>
															<a data-toggle="tooltip" title="" href="#" data-original-title="Amy">
																<img alt="" src="resources/images/resources/userlist-4.jpg">  
															</a>
															<a data-toggle="tooltip" title="" href="#" data-original-title="Ema">
																<img alt="" src="resources/images/resources/userlist-5.jpg">  
															</a>
															<a data-toggle="tooltip" title="" href="#" data-original-title="Sophie">
																<img alt="" src="resources/images/resources/userlist-6.jpg">  
															</a>
															<a data-toggle="tooltip" title="" href="#" data-original-title="Maria">
																<img alt="" src="resources/images/resources/userlist-7.jpg">  
															</a>  
														  </div>
													  </div>
													  <div id="link2" class="tab-pane fade">
														  <span><i class="ti-eye"></i>445</span>
														  <a title="weekly-likes" href="#">440 new views this week</a>
														  <div class="users-thumb-list">
														  	<a data-toggle="tooltip" title="" href="#" data-original-title="Anderw">
																<img alt="" src="resources/images/resources/userlist-1.jpg">  
															</a>
															<a data-toggle="tooltip" title="" href="#" data-original-title="frank">
																<img alt="" src="resources/images/resources/userlist-2.jpg">  
															</a>
															<a data-toggle="tooltip" title="" href="#" data-original-title="Sara">
																<img alt="" src="resources/images/resources/userlist-3.jpg">  
															</a>
															<a data-toggle="tooltip" title="" href="#" data-original-title="Amy">
																<img alt="" src="resources/images/resources/userlist-4.jpg">  
															</a>
															<a data-toggle="tooltip" title="" href="#" data-original-title="Ema">
																<img alt="" src="resources/images/resources/userlist-5.jpg">  
															</a>
															<a data-toggle="tooltip" title="" href="#" data-original-title="Sophie">
																<img alt="" src="resources/images/resources/userlist-6.jpg">  
															</a>
															<a data-toggle="tooltip" title="" href="#" data-original-title="Maria">
																<img alt="" src="resources/images/resources/userlist-7.jpg">  
															</a>  
														  </div>
													  </div>
													</div>
												</div>
											</div>
										</div>
									<div class="widget stick-widget">
										<h4 class="widget-title">Who's follownig</h4>
										<ul class="followers">
											<li>
												<figure><img src="resources/images/resources/friend-avatar2.jpg" alt=""></figure>
												<div class="friend-meta">
													<h4><a href="time-line.html" title="">Kelly Bill</a></h4>
													<a href="#" title="" class="underline">Add Friend</a>
												</div>
											</li>
											<li>
												<figure><img src="resources/images/resources/friend-avatar4.jpg" alt=""></figure>
												<div class="friend-meta">
													<h4><a href="time-line.html" title="">Issabel</a></h4>
													<a href="#" title="" class="underline">Add Friend</a>
												</div>
											</li>
											<li>
												<figure><img src="resources/images/resources/friend-avatar6.jpg" alt=""></figure>
												<div class="friend-meta">
													<h4><a href="time-line.html" title="">Andrew</a></h4>
													<a href="#" title="" class="underline">Add Friend</a>
												</div>
											</li>
											<li>
												<figure><img src="resources/images/resources/friend-avatar8.jpg" alt=""></figure>
												<div class="friend-meta">
													<h4><a href="time-line.html" title="">Sophia</a></h4>
													<a href="#" title="" class="underline">Add Friend</a>
												</div>
											</li>
											<li>
												<figure><img src="resources/images/resources/friend-avatar3.jpg" alt=""></figure>
												<div class="friend-meta">
													<h4><a href="time-line.html" title="">Allen</a></h4>
													<a href="#" title="" class="underline">Add Friend</a>
												</div>
											</li>
										</ul>
									</div><!-- who's following -->
								</aside>
							</div><!-- sidebar -->
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
	<div class="side-panel">
			<h4 class="panel-title">General Setting</h4>
			<form method="post">
				<div class="setting-row">
					<span>use night mode</span>
					<input type="checkbox" id="nightmode1"/> 
					<label for="nightmode1" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Notifications</span>
					<input type="checkbox" id="switch22" /> 
					<label for="switch22" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Notification sound</span>
					<input type="checkbox" id="switch33" /> 
					<label for="switch33" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>My profile</span>
					<input type="checkbox" id="switch44" /> 
					<label for="switch44" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Show profile</span>
					<input type="checkbox" id="switch55" /> 
					<label for="switch55" data-on-label="ON" data-off-label="OFF"></label>
				</div>
			</form>
			<h4 class="panel-title">Account Setting</h4>
			<form method="post">
				<div class="setting-row">
					<span>Sub users</span>
					<input type="checkbox" id="switch66" /> 
					<label for="switch66" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>personal account</span>
					<input type="checkbox" id="switch77" /> 
					<label for="switch77" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Business account</span>
					<input type="checkbox" id="switch88" /> 
					<label for="switch88" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Show me online</span>
					<input type="checkbox" id="switch99" /> 
					<label for="switch99" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Delete history</span>
					<input type="checkbox" id="switch101" /> 
					<label for="switch101" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Expose author name</span>
					<input type="checkbox" id="switch111" /> 
					<label for="switch111" data-on-label="ON" data-off-label="OFF"></label>
				</div>
			</form>
		</div><!-- side panel -->		
	
	<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="resources/js/main.min.js"></script>
	<script src="resources/js/script.js"></script>
	<script src="resources/js/map-init.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8c55_YHLvDHGACkQscgbGLtLRdxBDCfI"></script>

</body>	

</html>