<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>      
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>       
<jsp:include page = "mainpage/header.jsp"/>
<!-- 게시글 페이지 - 글제목, 작성자, 내용, 댓글, 비밀댓글, 글 좋아요 개수, 댓글 개수 -->    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    
	<title>게시글 페이지</title>
	
    <!-- 댓글 등록 아이콘 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <!-- 자물쇠 아이콘 -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!-- 제이쿼리 -->
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<!-- <script src = "resources/js/comment.js"></script>  -->
  	<script>

  	var commentType = 0;
  	var data = '';
  	var type = '';
  	var url = '';

  	//답댓 클릭 시
  	function commentReply(commentNo) {
  		$('input[name=commentType]').val(1);
  		$('input[name=commentNum]').val(commentNo);
  		$('.post-comt-box textarea').css('background', '#088dcd1a').focus();
  		console.log('답댓 달 댓글의 번호 = ' + commentNo);
  	};	// reply end

  	// 댓글 삭제 클릭 시
  	function deleteReply(num) {
  		var answer = confirm('댓글을 삭제하시겠습니까?');
  		if (answer) {
  			$.ajax({
  				url : 'deleteReply',
  				type : 'post',
  				data : {commentnum : num},
  				dataType : 'json',
  				cache : false,
  				success : function(data) {
  					
  				},
  				error : function(request, status, error) {
  					console.log("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error);
  				}
  			});
  		}
  		return false;	
  	}

  	$(function(){
  		console.log('groupkey = ' + $('#detailGroupKey').val());
  		console.log('postkey = ' + $('#detailPostKey').val());
  		
  		$(document).on('keyup', '.post-comt-box textarea', function() {
  			$('.post-comt-box textarea').css('background', '#088dcd1a');
  		});
  		
  		/* 비밀댓글 설정 */
  		var lock = false;	// 기본 unlock
  		$(document).on('click', '.post-comt-box i', function() {
  			if (!lock) {	// 비댓
  				console.log('비댓');
  				$('input[name=commentshow]').val('1');
  				$(this).removeClass('fa-unlock').addClass('fa-lock').css('color', '#ed3939b5');
  				$('textarea').css('background', '#e1c2c2b5');
  			} else {	// 공댓
  				console.log('공댓');
  				$('input[name=commentshow]').val('0');
  				$(this).removeClass('fa-lock').addClass('fa-unlock').css('color', 'black');
  				$('textarea').css('background', '#f3f3f3');
  			}
  			lock = !lock;
  		});
  		
  		// ## 댓글 전송 시 먼저 실행될 함수 ##
  		$(document).on('submit', $('#ReplyAction'), function() {
  			val = $('input[name=commentType]').val();
  			console.log('비댓여부 = ' + $('input[name=commentshow]').val())
  			console.log('댓글인지 대댓인지 = ' + val);
  			switch (val) {
  			case "0":
  				console.log('여긴 와?')
  				/* 글에 댓글 */
  				data = 'postKey=' + $('#detailPostKey').val() + '&groupKey=' + $('#detailGroupKey').val() + '&content=' + $('.post-comt-box textarea').val() 
  					+ '&commentshow=' + $('input[name=commentshow]').val();
  				console.log('submit data = ' + data);
  				url = 'postReply';
  				replyAction(data, url);
  				break;
  			case "1":
  				/* 댓글에 댓글 */
  				data = 'postKey=' + $('#detailPostKey').val() + '&groupKey=' + $('#detailGroupKey').val() + '&content=' + $('.post-comt-box textarea').val() 
  					+ '&commentshow=' + $('input[name=commentshow]').val() + '&commentnum=' + $('input[name=commentNum]').val();
  				console.log('submit data = ' + data);
  				url = 'commentReply';
  				replyAction(data, url);
  				break;
  			}
  		}); // submit end
  		
  		// ## 댓글 타입에 따른 ajax ##
  		function replyAction(data, url) {
  			doc = '';
  			console.log('url = ' + url);
  			console.log('data = ' + data);
  			$.ajax({
  				type : "POST",
  				url : url,
  				data : data,
  				dataType : 'json',
  				cache : false,
  				success : function(data) {
  					console.log(data);
  					
  					$('.coment-area').empty();
  					$('.comment ins').text('');
  					$('.comment ins').text(data.listcount);
  					
  					// 댓글 존재
  					if (data.listcount != 0) {
  						doc += '<ul class = we-comet>';
  						$(data.comment).each(function(index, item) {
  							doc += '<li>';
  							doc += '	<div class="comet-avatar">';
  							if (item.profileFile == null) {
  								doc += "		<img src= 'resources/images/default.png' class = 'group-img' alt = ''/>";
  							} else {
  								doc += "		<img src= \"<spring:url value='/image" + item.profileFile + "'/>\" class = 'group-img' alt = ''/>";
  							}
  							doc += '	</div>';
  							doc += '	<div class="we-comment">';
  							doc += '		<div class="coment-head">';
  							doc += '			<h5><a href="javascript:memDetail(' + item.groupKey + ',' + item.userKey + ')" title="">' + item.groupNickname + '</a></h5>';
  							doc += '			<span>' + item.commentDate + '</span>';
  							doc += '			<a class="we-reply" href="javascript:commentReply(' + item.commnetNum + ')" title="Reply"><i class="fa fa-reply"></i></a>';
  							doc += '			<a class="update" href="javascript:commentUpdate(' + item.commnetNum + ')" title="Delete"><i class="fas fa-eraser"></i></i></a>';
  							doc += '			<a class="delete" href="javascript:commentDelete(' + item.commnetNum + ')" title="Update"><i class="far fa-trash-alt"></i></a>';
  							doc += '		</div>';
  							doc += '		<p>' + item.commentContent + '</p>';
  							doc += '	</div>';
  							doc += '</li>';
  						}); // each end
  					} else { // 댓글 없음
  						doc += '<li>';
  						doc += '	<div style = "text-align : center">등록된 댓글이 없습니다.</div>';
  						doc += '</li>';
  					}
  					
  					doc += '<li>';
  					doc += '	<a href = "#" title = "" class = "showmore underline">more comments</a>';
  					doc += '</li>';
  					doc += '<li class = "post-comment">';
  					doc += '	<div class="comet-avatar">';
  					doc += "		<img src= \"<spring:url value='/image" + data.profileFile + "'/>\" class = 'group-img' alt = ''/>";// 여기 이미지 가져오는 객체 이름 바꿔야 함
  					doc += '	</div>';
  					doc += '	<div class="post-comt-box">';
  					doc += '		<form method = "post" id = "ReplyAction" onSubmit = "return false;">';
  					doc += '			<textarea placeholder="Post your comment"></textarea>';
  					doc += '			<button type = "button" class = "secretbtn"><i class="fas fa-unlock" aria-hidden="true"></i></button>';
  					doc += '			<button type = "submit" class = "glyphicon glyphicon-send"></button>';
  					doc += '		</form>';
  					doc += '	</div>';
  					doc += '</li>';
  					doc += '</ul>';
  					$('.coment-area').append(doc);
  				},
  				error : function(request, status, error) {
  					console.log("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error);
  				}
  			}); // ajax end
  		} // function postReply end
  	}); // ready end


  	</script>
    <style>
    	.ySub {
    		display : inline-block; 
    		position : relative; 
    		width : 100%
    	}
    	b {
    		color : #c58d78
    	}
    	.post-comt-box form button {
    		width : 40px; 
    		height : 40px; 
    		color : black
    	}
    	.post-comt-box i {
    		float : right;
    		box-sizing : border-box;
    		margin-right : 10px;
    	}
    	.post-comt-box i:hover {
    		cursor : pointer
    	}
    	.secretbtn {
    		top : 1px !important;
    		right : 30px !important;
    	}
    	button[type=submit] {
    		color : #088dcd !important;
    	}
    	.we-comment .secretbtn {
    		color : #ed3939;
    		background : none;
    		border : none;
    	}
    	.group-img {
			width : 45px !important;
			height : 45px !important;
			box-sizing: border-box;
   			margin-right: 12px;
		}
		.we-video-info > ul li span ins {
			top : -6px !important;
		}
		
		.coment-head a {
			padding-right : 10px;
		}
		
		textarea:hover {
			background : #088dcd1a;
		}
		
		.we-comment>p {
			margin-top : 3px !important;
		}
		
		.fas.fa-heart {
			color : #ff0f0fd6;
		}
		
		.far.fa-heart {
			color : #ff0f0fd6;
		}
		
		.fas.fa-heart ins {
			color : #ff0f0fd6;
		}
		
		.far.fa-heart ins {
			color : #ff0f0fd6;
		}
		
		.friend-name span a {
		    margin-left: 5px;
		    margin-right: 3px;
		}
    </style>
    
    <script>
    	function memDetail(groupKey, userKey) {
    		var f = document.memDetail;		// 폼 name
    		f.groupkey.value = groupKey;	// input 태그 중 name이 groupKey인 값에 대해서 groupkey를 넘긴다.
    		f.userkey.value = userKey;		// input 태그 중 name이 userKey인 값에 대해서 userkey를 넘긴다.
    		f.action = "G_mem_detail.net";	// 이동할 페이지
    		f.method = "post";				// POST 방식으로 데이터 전송
    		f.submit();						// 폼 전송
    	};
    	
    	$(function(){
    		/* 비밀댓글, 댓글 등록 버튼과 겹치지 않게 하기 위한 textarea 라인 당 글자수 제한 */
    		$('textarea').keyup(function(){
    			var len = $(this).val().length;
    			var str = $(this).val();
    			
    			if (str % 32 == 0) {
    				//var b = $(this).val(str + '\n');
    				//$(this).html(b.html.replace(/\n/g, '<br/>'));
    			}
    		});
    		
    		var submit = '';
    		
    		// 하트 눌렀을 때
    		$('.like i').click(function() {
    			var isLiked = $('#isLiked').val();
    			if (isLiked == 1) {	// 좋아요 했다가 취소할 것임
    				submit = 'status=' + isLiked + '&postKey=' + $('#detailPostKey').val() + '&groupKey=' + $('#detailGroupKey').val();
    				likes(submit);
    			} else {	// 좋아요 이제 할 것임
    				submit = 'status=' + isLiked + '&postKey=' + $('#detailPostKey').val() + '&groupKey=' + $('#detailGroupKey').val();
    				likes(submit);
    			}
    		});
    		
    		function likes(data) {
    			$.ajax({
    				url : "changeLike",
    				data : data,
    				type : "POST",
    				success : function(data) {
    					switch (data.result) {
    					case 0 :
    						// 좋아요 취소 상태
    						$('.like i').removeClass('fas fa-heart').addClass('far fa-heart');
    						$('#isLiked').val(data.result);
    						// ins 태그는 val() 안 먹힌다.
    						$('.like ins').text('');
    						$('.like ins').text(data.likeCount);
    						break;
    					case 1 :
    						// 좋아요 상태
    						$('.like i').removeClass('far fa-heart').addClass('fas fa-heart');
    						$('#isLiked').val(data.result);
    						$('.like ins').text('');
    						$('.like ins').text(data.likeCount);
    						break;
    					case -1 :
    						// 좋아요 취소 실패
    						alert('좋아요 작업 실패했습니다. 다시 시도해주세요.');
    						break;
    					case -2 : 
    						// 좋아요 실패
    						alert('로그인 후 이용해주세요.');
    						location.href = 'login';
    						break;
    					case -3 :
    						// 로그인 x
    						alert('로그인 후 이용해주세요.');
    						location.href = 'login';
    						break;
    					}
    				},
    				error : function(request, status, error) {
    					console.log("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error);
    				}
    			}); // ajax end
    		};	// likes end
    	})
    </script>
    
    <!-- 그룹 페이지 상단 -->
	<section>
		<input type="hidden" id="thisGroupKey" value="${groupkey }"> 
		<input type="hidden" id="UserKey" value="1"> <!-- ## 나중에 수정 ## -->
		<div class="feature-photo">
			<!-- 현재 모임의 대표사진 -->
			<figure>
				<!-- # 추가해야됨 # -->
				<%-- <img id="groupPageImg" src = "<spring:url value='/image${groupdfile }'/>" alt = "" /> --%>
				<img id="groupPageImg" src="resources/images/resources/timeline-1.jpg" alt="">
			</figure>
			<!-- **********모임 대문 사진 수정*********** -->
			<form class = "edit-phto" id = "groupMainImgForm"
				  enctype = "multipart/form-data" action = "group_mainImgUpdate.net" method = "post">
				  
				<input type = "hidden" name = "groupKey" value = "${groupKey}"><i class="fa fa-camera-retro"></i>
				<!-- 대문 사진 수정 버튼 -->
				<label class="fileContainer">
					대문 사진 수정 
				<input type="file" name = "groupMainImgUpload"/>
				</label>
			</form>
			<!-- **********모임 대문 사진 수정*********** -->
			
			<div class="container-fluid height-for-white">
				<div class="row merged">
					<div class="col-lg-2 col-sm-3">
						<div class="user-avatar">
							<!-- 그룹 사진 -->
							<figure>
								<!-- # 수정해야 됨 # -->
								<!-- <img id="groupImg" src="<spring:url value='/image${groupcfile }'/>" /> -->
								<img id="groupImg" src="resources/images/resources/user-avatar.jpg" alt="">
								<!-- **********모임 사진 수정*********** -->
								<form class="edit-phto" id="groupImgForm"
									  enctype="multipart/form-data" action="group_ImgUpdate.net" method="post">
									<input type="hidden" name="groupkey" id="hiddenGroupKey" value="${groupkey}">  
									<i class="fa fa-camera-retro"></i>
									<!-- 그룹 사진 수정 버튼 -->
									<label class="fileContainer"> 그룹 사진 수정하기 
										<input type="file" name="groupImgUpload" />
									</label>
									<!-- 그룹 사진 수정 버튼 -->
								</form>
								<!-- **********모임 사진 수정*********** -->
							</figure>
							<!-- 그룹 사진 -->
						</div>
					</div>
					<div class="col-lg-10 col-sm-9">
						<div class="timeline-info">
							<div class="forgroupnamewidth">
								<!-- 그룹 이름 -->
								<ul>
									<li class="admin-name forgroupname">
										<h5>${groupname}</h5>
									</li>
								</ul>
								<!-- 그룹 이름 -->
							</div>
							<div class="forgroupnamewidth1">
								<!-- 그룹 간단 정보 -->
								<ul>
									<li class="forgroupnameleft">지역: ${groupswhere }&nbsp;${groupdwhere }</li>
									<li class="forgroupnameleft">연령대: ${groupage } 대</li>
									<li class="forgroupnameleft">카테고리: ${groupdcategory }&nbsp;>&nbsp;${groupscategory }</li>
									<li class="forgroupnameleft">회원수: ${groupmembers }명</li>
								</ul>
								<!-- 그룹 간단 정보 -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 그룹 페이지 상단 -->
	
	<section>
		<div class="gap gray-bg">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="row" id="page-contents">
							<!-- ## 여기 부분 메인 페이지에 맞게 수정해야 됨 ## -->
							<!-- 왼쪽 위젯 -->
							<div class="col-lg-3">
								<aside class="sidebar static">
									<div class="widget">
											<h4 class="widget-title">Socials</h4>
											<ul class="socials">
												<li class="facebook">
													<a title="" href="#"><i class="fa fa-facebook"></i> <span>facebook</span> <ins>45 likes</ins></a>
												</li>
												<li class="twitter">
													<a title="" href="#"><i class="fa fa-twitter"></i> <span>twitter</span><ins>25 likes</ins></a>
												</li>
												<li class="google">
													<a title="" href="#"><i class="fa fa-google"></i> <span>google</span><ins>35 likes</ins></a>
												</li>
											</ul>
										</div>
									<div class="widget">
										<h4 class="widget-title">Shortcuts</h4>
										<ul class="naves">
											<li>
												<i class="ti-clipboard"></i>
												<a href="newsfeed.html" title="">News feed</a>
											</li>
											<li>
												<i class="ti-mouse-alt"></i>
												<a href="inbox.html" title="">Inbox</a>
											</li>
											<li>
												<i class="ti-files"></i>
												<a href="fav-page.html" title="">My pages</a>
											</li>
											<li>
												<i class="ti-user"></i>
												<a href="timeline-friends.net" title="">friends</a>
											</li>
											<li>
												<i class="ti-image"></i>
												<a href="timeline-photos.html" title="">images</a>
											</li>
											<li>
												<i class="ti-video-camera"></i>
												<a href="timeline-videos.html" title="">videos</a>
											</li>
											<li>
												<i class="ti-comments-smiley"></i>
												<a href="messages.html" title="">Messages</a>
											</li>
											<li>
												<i class="ti-bell"></i>
												<a href="notifications.html" title="">Notifications</a>
											</li>
											<li>
												<i class="ti-share"></i>
												<a href="people-nearby.html" title="">People Nearby</a>
											</li>
											<li>
												<i class="fa fa-bar-chart-o"></i>
												<a href="insights.html" title="">insights</a>
											</li>
											<li>
												<i class="ti-power-off"></i>
												<a href="landing.html" title="">Logout</a>
											</li>
										</ul>
									</div><!-- Shortcuts -->
									<div class="widget">
										<h4 class="widget-title">Recent Activity</h4>
										<ul class="activitiez">
											<li>
												<div class="activity-meta">
													<i>10 hours Ago</i>
													<span><a href="#" title="">Commented on Video posted </a></span>
													<h6>by <a href="newsfeed.html">black demon.</a></h6>
												</div>
											</li>
											<li>
												<div class="activity-meta">
													<i>30 Days Ago</i>
													<span><a href="newsfeed.html" title="">Posted your status. “Hello guys, how are you?”</a></span>
												</div>
											</li>
											<li>
												<div class="activity-meta">
													<i>2 Years Ago</i>
													<span><a href="#" title="">Share a video on her timeline.</a></span>
													<h6>"<a href="newsfeed.html">you are so funny mr.been.</a>"</h6>
												</div>
											</li>
										</ul>
									</div><!-- recent activites -->
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
							<!-- 왼쪽 위젯 끝 -->
							
							<!-- 가운데 -->
							<div class="col-lg-6">
								<div class="loadMore">
									<div class="central-meta item">
										<div class="user-post">
											<div class="friend-info">
												<!-- ---------------------------------------- -->
												<!-- 유저 클릭하면 모임 회원 상세 정보 페이지로 넘어가게 하기 위한 폼 -->
												<form name = "memDetail">
													<input type = "hidden" name = "userkey" value = "">
													<input type = "hidden" name = "groupkey" value = "">
												</form>
												<!-- ---------------------------------------- -->
												
												<!-- ---------------------------------------- -->
												<!-- 댓글을 달았을 때 사용할 key -->
												<input type = "hidden" id = "detailGroupKey" name = "groupkey" value = "${groupkey}">
												<input type = "hidden" id = "detailPostKey" name = "postkey" value = "${postkey}">
												<!-- ---------------------------------------- -->
												
												<figure>
													<!-- 작성자 -->
													<a href = "javascript:memDetail(${groupkey},${post.userKey})">
														<c:if test = "${post.profileFile == null}">
															<img src="resources/images/default.png" class = "group-img" alt = ""/>
														</c:if>
														<c:if test = "${post.profileFile != null}">
															<img src="<spring:url value='/image${post.profileFile}'/>" class = "group-img" alt = ""/>
														</c:if>
													</a>
												</figure>
												<div class="friend-name">
													<ins>${post.postTitle}</ins>
													<span>
														<b>${post.groupNickname}</b> | published : ${post.postDate}
														<c:if test = "${loginuser == post.userKey}">
														<a class = "update" href = "javascript:updateReply(${c.commnetNum})" title = "Update"><i class="fas fa-eraser"></i></a>	
														<a class = "delete" href = "javascript:deleteReply(${c.commnetNum})" title = "Delete"><i class="far fa-trash-alt"></i></a>
														</c:if>
													</span>
												</div>
												<div class="description">
														<p>
															${post.postContent}
														</p>
												</div>
												<div class="post-meta">
													<div class="we-video-info">
														<ul>
															<!-- 조회수 -->
															<li>
																<span class="views" data-toggle="tooltip" title="views">
																	<i class="fa fa-eye"></i>
																	<ins>${post.postReadcount}</ins>
																</span>
															</li>
															<!-- 댓글수 -->
															<li>
																<span class="comment" data-toggle="tooltip" title="Comments">
																	<i class="far fa-comment-dots"></i> <!-- 빈 말풍선 -->
																	<!-- <i class="fas fa-comment-dots"></i> --> <!-- 말풍선 -->
																	<ins>${post.replyCount}</ins>
																</span>
															</li>
															<!-- 좋아요수 -->
															<li>
																<span class="like" data-toggle="tooltip" title="like">
																	<input type = "hidden" id = "isLiked" value = "${isLiked}">
																	<!-- 현재 회원이 좋아요 눌렀을 경우 -->
																	<c:if test = "${isLiked == 1}">
																	<i class="fas fa-heart"></i> <!-- 하트 -->
																	</c:if>
																	<!-- 현재 회원이 좋아요 안 눌렀을 경우 -->
																	<c:if test = "${isLiked == 0}">
																	<i class="far fa-heart"></i><!-- 빈하트 -->
																	</c:if>	
																	<ins>${post.postlike}</ins>
																</span>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="coment-area">
												<ul class="we-comet">
													<%-- 비댓 쿼리
													<!-- 댓글 -->
													<c:forEach var = "c" items = "${comment}">
														
														<c:if test = "${comment.commentshow == 0}">
															<li>
																<div class="comet-avatar">
																	<img src="<spring:url value='/image${c.profileFile}'/>" class = "group-img" alt = ""/>
																</div>
																<div class="we-comment">
																	<div class="coment-head">
																		<h5><a href="javascript:memDetail(${groupKey},${c.userKey})" title="">${c.groupNickname}</a></h5>
																		<span>${c.commentDate}</span>
																		<a class="we-reply" href="javascript:reply(${c.commnetNum})" title="Reply"><i class="fa fa-reply"></i></a>
																	</div>
																	<p>${c.commentContent}</p>
																</div>
															</li>
														</c:if>
														
														<c:if test = "${comment.commentshow == 1}">
															<c:if test = "${userKey == comment.userKey}"> <!-- 세션에 담긴 아이디가 댓글 작성자랑 일치하면 보여지는 -->
															
															</c:if>
															<c:if test = "${id == post.userKey }">	<!-- 세션에 담긴 아이디가 게시글 작성자랑 일치하면 보여지는 -->
															
															</c:if>
															<!-- 둘다 아닐 경우 -->
															비밀댓글입니다.
														</c:if>
													</c:forEach>
													 --%>
													 
													<!-- 댓글 -->
													<c:forEach var = "c" items = "${comment}">
														<!-- ************************************************ -->
														<!-- 전체공개 댓글 - 그냥 조건 없이 쫙 뽑는다. -->
														<c:if test = "${c.commentshow == 0}">
														<li>
															<div class="comet-avatar">
																<!-- 회원 프사 없을 경우 -->
																<c:if test = "${c.profileFile == null}">
																<img src="resources/images/default.png" class = "group-img" alt = ""/>
																</c:if>
																<!-- 회원 프사 있을 경우 -->
																<c:if test = "${c.profileFile != null}">
																<img src="<spring:url value='/image${c.profileFile}'/>" class = "group-img" alt = ""/>
																</c:if>
															</div>
															<div class="we-comment">
																<div class="coment-head">
																	<h5><a href="javascript:memDetail(${groupkey},${c.userKey})" title="">${c.groupNickname}</a></h5>
																	<span>${c.commentDate}</span>
																	<a class = "we-reply" href = "javascript:commentReply(${c.commnetNum})" title = "Reply">
																		<i class="fa fa-reply"></i>
																	</a>
																	<!-- 댓쓴 본인이어야만 수정/삭제 보이게 -->
																	<c:if test = "${loginuser == c.userKey}">
																	<a class = "update" href = "javascript:updateReply(${c.commnetNum})" title = "Update">
																		<i class="fas fa-eraser"></i>
																	</a>	
																	<a class = "delete" href = "javascript:deleteReply(${c.commnetNum})" title = "Delete">
																		<i class="far fa-trash-alt"></i>
																	</a>
																	</c:if>
																</div>
																<p>${c.commentContent}</p>
															</div>
														</li>
														</c:if>
														<!-- ************************************************ -->
														<!-- 비밀공개 댓글 - 로그인한 사람이 글쓴이거나 댓쓴이여야 보인다. -->
														<c:if test = "${c.commentshow == 1}">
															<!-- ## 로그인한 유저가 글쓴이거나 댓쓴이일 때 ## -->
															<c:if test = "${loguser == c.userKey || loginuser == post.userKey}">
															<li>
																<div class="comet-avatar">
																	<!-- 회원 프사 없을 경우 -->
																	<c:if test = "${c.profileFile == null}">
																	<img src="resources/images/default.png" class = "group-img" alt = ""/>
																	</c:if>
																	<!-- 회원 프사 있을 경우 -->
																	<c:if test = "${c.profileFile != null}">
																	<img src="<spring:url value='/image${c.profileFile}'/>" class = "group-img" alt = ""/>
																	</c:if>
																</div>
																<div class="we-comment">
																	<div class="coment-head">
																		<h5><a href="javascript:memDetail(${groupkey},${c.userKey})" title="">${c.groupNickname}</a></h5>
																		<span>${c.commentDate}</span>
																		<a class = "we-reply" href = "javascript:commentReply(${c.commnetNum})" title = "Reply">
																			<i class="fa fa-reply"></i>
																		</a>
																		<!-- 댓쓴 본인이어야만 수정/삭제 보이게 -->
																		<c:if test = "${loginuser == c.userKey}">
																		<a class = "update" href = "javascript:updateReply(${c.commnetNum})" title = "Update">
																			<i class="fas fa-eraser"></i>
																		</a>	
																		<a class = "delete" href = "javascript:deleteReply(${c.commnetNum})" title = "Delete">
																			<i class="far fa-trash-alt"></i>
																		</a>
																		</c:if>
																	</div>
																	<p>${c.commentContent}</p>
																</div>
															</li>
															</c:if>
															
															<!-- ## 로그인한 유저가 글쓴이거나 댓쓴이가 아닐 때 ## -->
															<li>
																<div class="comet-avatar">
																	<!-- 회원 프사 없을 경우 -->
																	<c:if test = "${c.profileFile == null}">
																	<img src="resources/images/default.png" class = "group-img" alt = ""/>
																	</c:if>
																	<!-- 회원 프사 있을 경우 -->
																	<c:if test = "${c.profileFile != null}">
																	<img src="<spring:url value='/image${c.profileFile}'/>" class = "group-img" alt = ""/>
																	</c:if>
																</div>
																<div class="we-comment">
																	<div class="coment-head">
																		<h5><a href="javascript:memDetail(${groupkey},${c.userKey})" title="">${c.groupNickname}</a></h5>
																		<span>${c.commentDate}</span>
																	</div>
																	<button type = "button" class = "secretbtn"><i class="fas fa-lock" aria-hidden="true"></i></button>
																	<p style = "display : inline-block">비밀 댓글 입니다.</p>
																</div>
															</li>
														</c:if>
														<!-- ************************************************ -->
														
													</c:forEach>
													<!-- 댓글 -->
													
													<!-- 비댓 샘플 -->
													<li>
														<div class="comet-avatar">
															<img src="resources/images/resources/d.png" alt="">
														</div>
														<div class="we-comment">
															<div class="coment-head">
																<h5><a href="time-line.html" title="">허거걱</a></h5>
																<span>1 week ago</span>
																<a class="we-reply" href="#" title="Reply"><i class="fa fa-reply"></i></a>
															</div>
															<button type = "button" class = "secretbtn"><i class="fas fa-lock" aria-hidden="true"></i></button>
															<p style = "display : inline-block">비밀 댓글 입니다.</p>
														</div>
													</li>
			
													
													
													<!-- 댓글 더보기 -->
													<!-- <li>
														<a href="#" title="" class="showmore underline">more comments</a>
													</li> -->
													
													<!-- 댓글 등록 부분 -->
													<li class="post-comment">
														<div class="comet-avatar">
															<!-- 현재 로그인한 회원의 프사가 있는지에 따라 사진 지정하는 부분 -->
															<c:if test = "${mem.profileFile == null}">
															<img src="resources/images/default.png" class = "group-img" alt = ""/>
															</c:if>
															<c:if test = "${mem.profileFile != null}">
															<img src="<spring:url value='/image${mem.profileFile}'/>" class = "group-img" alt = ""/>
															</c:if>
														</div>
														<div class="post-comt-box">
															<!-- 댓글 등록 -->
															<form method = "post" id = "ReplyAction" onSubmit = "return false;">
																<!-- 답댓일 경우 원문댓글의 댓글번호 저장 -->
																<input type = "hidden" name = "commentNum" value = "">
																<!-- 비밀댓글(1), 전체공개 댓글(0) -->
																<input type = "hidden" name = "commentshow" value = "">
																<input type = "hidden" name = "commentType" value = "0">
																
																<!-- 댓글 입력부분 -->
																<textarea placeholder="Post your comment"></textarea>
																
																<!-- 기본적으로 전체공개 댓글 -->
																<button type = "button" class = "secretbtn"><i class="fas fa-unlock" aria-hidden="true"></i></button>
																<button type = "submit" class = "glyphicon glyphicon-send"></button>
															</form>	
														</div>
													</li>
													
												</ul>
											</div>
										</div>
									</div>
									<!-- 상세 게시글 끝 -->
								</div>
							</div><!-- centerl meta -->
							<!-- 가운데 끝 -->
							
						<!-- 그룹 페이지 위젯 오른쪽 -->
						<div class="col-lg-3">
							<aside class="sidebar static">

								<!-- 그룹 로그인 위젯 -->
								<div class="widget">
									<h4 class="widget-title forlogintitle">로그인</h4>
									<div class="your-page">
										<div class="form-group">
											<input type="text" id="input" required="required" /> <label
												class="control-label" for="input">아이디</label><i
												class="mtrl-select"></i>
										</div>
										<div class="form-group">
											<input type="password" required="required" /> <label
												class="control-label" for="input">비밀번호</label><i
												class="mtrl-select"></i>
										</div>
										<div class="checkbox forRememberIdDiv">
											<label> <input type="checkbox" checked="checked"><i
												class="check-box forcheckbox"></i>아이디 저장
											</label>
										</div>

										<div class="submit-btns forSubmitBtnDiv">
											<button type="button" class="mtr-btn forLoginBtn">
												<span>로그인</span>
											</button>
											<button type="button" class="mtr-btn forRegisterBtn">
												<span>회원가입</span>
											</button>
										</div>

									</div>
								</div>
								<!-- 그룹 로그인 위젯 -->

								<!-- 그룹 나의 정보 위젯 -->
								<div class="widget">
									<h4 class="widget-title">나의 정보</h4>
									<div class="your-page your-page-groupListDiv">
										<figure>
											<a href="#" title=""><img
												src="resources/images/resources/friend-avatar9.jpg" alt=""></a>
										</figure>
										<div class="page-meta">
											<a href="#" title="" class="underline">동선동탁구대장</a> <span><i
												class="ti-comment"></i>메세지 <em>9</em></span> <span><i
												class="ti-bell"></i>알림 <em>2</em></span>
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
								<!-- 나의 정보 위젯 -->

								<!-- 그룹별 정모 나의 일정 위젯 -->
								<div class="widget calendarCenter">
									<input type="hidden" id="gclc" value="${groupcalendarlistCount}">
									<c:forEach var="gcl" items="${groupcalendarlist }">
											<input type="hidden" id="cal${gcl.rownum}" value="${gcl.startdate }">
									</c:forEach>
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
											<c:if test="${empty shortschedule}">
											<li><span>일정 없음</span></li>
											</c:if>
											<c:if test="${not empty shortschedule}">
											<c:forEach var="ss" items="${shortschedule }">
												<li><span>${ss.posttitle }</span>
												<p>
													모임명: ${ss.groupname }<br>시간: ${ss.startdate} <br>장소: ${ss.location }
												</p></li>
											</c:forEach>
											</c:if>
										</ul>
									</div>

								</div>
								<!-- 그룹별 정모 나의 일정 위젯 -->

							</aside>
						</div>
						<!-- 그룹 페이지 위젯 오른쪽 -->
						</div>	
					</div>
				</div>
			</div>
		</div>	
	</section>
<jsp:include page="mainpage/footer.jsp" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
function memDetail (userkey, groupkey) {
	var f = document.memDetail;		// 폼 name
	f.userkey.value = userkey;		// input 태그 중 name이 groupkey인 값에 대해서 userkey를 넘긴다.
	f.groupkey.value = groupkey;	// input 태그 중 name이 groupkey인 값에 대해서 groupkey를 넘긴다.
	f.action = "G_mem_detail.net";	// 이동할 페이지
	f.method = "post";				// POST 방식으로 데이터 전송
	f.submit();		
}
</script>
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
			cell.innerHTML = "<span class='caldendarCell' id='day"+i+"'>" + i + "</span>";//셀을 1부터 마지막 day까지 HTML 문법에 넣어줌
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
<script>
$(function() {
	buildCalendar();
	var mycalendarlistcount = $('#gclc').val();
	for(var i = 1; i<=mycalendarlistcount;i++){
		var temp = $('#cal'+i).val();
		$('#day'+temp).parent().addClass('calendarCellMy');
	}
	
	$("#calendar").on('click', '#prevcal', function(event) {
		var userkey = $('#UserKey').val();
		prevCalendar();
		var date = $('#tbCalendarYM').text();
		ajaxcallist(userkey,date);
		$('#shortschedule').empty();
		$('#shortschedule').append('<li><span>날짜를 선택하세요</span></li>');
		
    })
    
    $("#calendar").on('click', '#nextcal', function(event) {
    	var userkey = $('#UserKey').val();
    	nextCalendar();
    	var date = $('#tbCalendarYM').text();
    	ajaxcallist(userkey,date);
    	$('#shortschedule').empty();
    	$('#shortschedule').append('<li><span>날짜를 선택하세요</span></li>');
    })
    
    
	$(".nearby-contct").on('click', '.gmtljoinbtn', function(event) {
		var userkey = $('#UserKey').val();
        var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#hiddenGroupKey').val();
        ajaxJoinBtn(postkey, groupkey, userkey, n);
        $(this).removeClass('gmtljoinbtn');
        $(this).addClass('gmtlcancelbtn');
        $(this).children().html('취소하기');
    })

    $(".nearby-contct").on('click', '.gmtlcancelbtn', function(event) {
        var userkey = $('#UserKey').val();
        var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#hiddenGroupKey').val();
        ajaxJoinCancelBtn(postkey, groupkey, userkey, n);
        $(this).removeClass('gmtlcancelbtn');
        $(this).addClass('gmtljoinbtn');
        $(this).children().html('참여하기');
    })
	$(".calendarDiv").on('click', 'td', function(event) {
        if ($(this).text() != "" || $(this).text().length() > 2) {
            $('td').removeClass('calendarCellSelected');
            $(this).addClass('calendarCellSelected');
            var userkey = $('#UserKey').val(); 
            var date = $('#tbCalendarYM').text();
            var day = $(this).text();
            if($(this).hasClass('calendarCellMy')){
            	ajaxcal(userkey,date,day);
            }else{
            	$('#shortschedule').empty();
            	$('#shortschedule').append('<li><span>일정이 없습니다</span></li>');
            }
        }
    })
    
    
    
    $(".forMemberCountBtnOne").click(function() {
    	var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#hiddenGroupKey').val();
        ajax(postkey, groupkey, n);
        if ($("#collapseOne").hasClass("show")) {
            $('.i-changeOne').removeClass('fa-arrow-up');
            $('.i-changeOne').addClass('fa-arrow-down');
        } else {
            $('.i-changeOne').removeClass('fa-arrow-down');
            $('.i-changeOne').addClass('fa-arrow-up');
        }
    })
    $(".forMemberCountBtnTwo").click(function() {
    	var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#hiddenGroupKey').val();
        ajax(postkey, groupkey, n);
        if ($("#collapseTwo").hasClass("show")) {
            $('.i-changeTwo').removeClass('fa-arrow-up');
            $('.i-changeTwo').addClass('fa-arrow-down');
        } else {
            $('.i-changeTwo').removeClass('fa-arrow-down');
            $('.i-changeTwo').addClass('fa-arrow-up');
        }
    })
    $(".forMemberCountBtnThree").click(function() {
        var postkey = $(this).next().val();
        var n = $(this).next().next().val();
        var groupkey = $('#hiddenGroupKey').val();
        ajax(postkey, groupkey, n);
        if ($("#collapseThree").hasClass("show")) {
            $('.i-changeThree').removeClass('fa-arrow-up');
            $('.i-changeThree').addClass('fa-arrow-down');
        } else {
            $('.i-changeThree').removeClass('fa-arrow-down');
            $('.i-changeThree').addClass('fa-arrow-up');
        }
    })

    //=======================================================
    $('input[type=file]:eq(0)').on('change', function() {
        $('#groupMainImgForm').submit();
    });
    $('input[type=file]:eq(1)').on('change', function() {
        $('#groupImgForm').submit();
    });


    //===== Search Filter =====//
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter(searchDir, list) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter($("#searchDir"), $("#people-list"));
        });
    }(jQuery));

    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter1(searchDir1, list1) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir1);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list1).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list1).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list1).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter1($("#searchDir1"), $("#people-list1"));
        });
    }(jQuery));

    //===========================================================================

    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter2(searchDir2, list2) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir2);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list2).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list2).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list2).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter2($("#searchDir2"), $("#people-list2"));
        });
    }(jQuery));

    //===========================================================================

    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter3(searchDir3, list3) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir3);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list3).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list3).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list3).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter3($("#searchDir3"), $("#people-list3"));
        });
    }(jQuery));

    //===========================================================================
    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter4(searchDir4, list4) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir4);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list4).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list4).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list4).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter4($("#searchDir4"), $("#people-list4"));
        });
    }(jQuery));

    //===========================================================================
    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter5(searchDir5, list5) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir5);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list5).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list5).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list5).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter5($("#searchDir5"), $("#people-list5"));
        });
    }(jQuery));

    //===========================================================================
    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter6(searchDir6, list6) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir6);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list6).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list6).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list6).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter6($("#searchDir6"), $("#people-list6"));
        });
    }(jQuery));

    //===========================================================================
    //===== Search Filter =====//나상엽추가===============================================
    (function($) {
        // custom css expression for a case-insensitive contains()
        jQuery.expr[':'].Contains = function(a, i, m) {
            return (a.textContent || a.innerText || "").toUpperCase()
                .indexOf(m[3].toUpperCase()) >= 0;
        };

        function listFilter7(searchDir7, list7) {
            var form = $("<form>").attr({
                    "class": "filterform",
                    "action": "#"
                }),
                input = $("<input>").attr({
                    "class": "filterinput",
                    "type": "text",
                    "placeholder": "회원 찾기"
                });
            $(form).append(input).appendTo(searchDir7);

            $(input).change(
                function() {
                    var filter = $(this).val();
                    if (filter) {
                        $(list7).find(
                                "li:not(:Contains(" + filter + "))")
                            .slideUp();
                        $(list7).find("li:Contains(" + filter + ")")
                            .slideDown();
                    } else {
                        $(list7).find("li").slideDown();
                    }
                    return false;
                }).keyup(function() {
                $(this).change();
            });
        }

        //search friends widget
        $(function() {
            listFilter7($("#searchDir7"), $("#people-list7"));
        });
    }(jQuery));

    //===========================================================================

    function ajax(postkey, groupkey, n) {
        output = "";
        var data = "postkey=" + postkey + "&groupkey=" + groupkey;
        var empty = "people-list" + n;
        $.ajax({
            type: "post",
            url: "group_main_ajax.net",
            data: data,
            dataType: "json",
            cache: false,
            success: function(data) {
                $("#" + empty).empty();
                output = "";
                $(data.groupcalendarmemberlist).each(
                    function(index, item) {
                        output += "<li><figure>";
                        output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                        output += "</figure><div class='friendz-meta'>";
                        output += "<a href='time-line.html'></a>" + item.groupnickname;
                        output += "<i class='__cf_email__'>모임장</i></div></li>";
                    })
                $("#" + empty).append(output);
            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end
    function ajaxJoinBtn(postkey, groupkey, userkey, n) {
        output = "";
        var data = "postkey=" + postkey + "&groupkey=" + groupkey + "&userkey=" + userkey;
        var empty = "people-list" + n;
        $.ajax({
            type: "post",
            url: "group_main_ajaxJoin.net",
            data: data,
            dataType: "json",
            cache: false,
            success: function(data) {
                $("#" + empty).empty();
                $(".currentperson"+n).empty();
                $(".currentperson"+n).html(data.currentperson);
                output = "";
                $(data.groupcalendarmemberlist).each(
                    function(index, item) {
                        output += "<li><figure>";
                        output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                        output += "</figure><div class='friendz-meta'>";
                        output += "<a href='time-line.html'></a>" + item.groupnickname;
                        output += "<i class='__cf_email__'>모임장</i></div></li>";
                    })
                $("#" + empty).append(output);
            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end

    function ajaxJoinCancelBtn(postkey, groupkey, userkey, n) {
        output = "";
        var data = "postkey=" + postkey + "&groupkey=" + groupkey + "&userkey=" + userkey;
        var empty = "people-list" + n;
        $.ajax({
            type: "post",
            url: "group_main_ajaxJoinCancel.net",
            data: data,
            dataType: "json",
            cache: false,
            success: function(data) {
                $("#" + empty).empty();
                output = "";
                $(".currentperson"+n).empty();
                $(".currentperson"+n).html(data.currentperson);
                $(data.groupcalendarmemberlist).each(
                    function(index, item) {
                        output += "<li><figure>";
                        output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                        output += "</figure><div class='friendz-meta'>";
                        output += "<a href='time-line.html'></a>" + item.groupnickname;
                        output += "<i class='__cf_email__'>모임장</i></div></li>";
                    })
                $("#" + empty).append(output);
            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end
    function ajaxCalendarList(userkey) {
        output = "";
        var data = "postkey=" + postkey + "&groupkey=" + groupkey + "&userkey=" + userkey;
        var empty = "people-list" + n;
        $.ajax({
            type: "post",
            url: "group_main_ajaxJoinCancel.net",
            data: data,
            dataType: "json",
            cache: false,
            success: function(data) {
                $("#" + empty).empty();
                output = "";
                $(".currentperson"+n).empty();
                $(".currentperson"+n).html(data.currentperson);
                $(data.groupcalendarmemberlist).each(
                    function(index, item) {
                        output += "<li><figure>";
                        output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                        output += "</figure><div class='friendz-meta'>";
                        output += "<a href='time-line.html'></a>" + item.groupnickname;
                        output += "<i class='__cf_email__'>모임장</i></div></li>";
                    })
                $("#" + empty).append(output);
            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end
    function ajaxcallist(userkey,date) {
        output = "";
        var data = "userkey=" + userkey + "&date=" + date;
        $.ajax({
            type: "post",
            url: "group_main_ajaxCalList.net",
            data: data,
            dataType: "json",
            cache: false,
            success: function(data) {
                $(data.groupcalendarlist).each(
                    function(index, item) {
                       if(!$('#day'+item.startdate).parent().hasClass('calendarCellMy')){
                    		$('#day'+item.startdate).parent().addClass('calendarCellMy');
                       }
                    })

            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end
    function ajaxcal(userkey,date,day) {
        output = "";
        var data = "userkey=" + userkey + "&date=" + date + "&day=" + day;
        $.ajax({
            type: "post",
            url: "group_main_shortschedule.net",
            data: data,
            dataType: "json",
            cache: false,
            success: function(data) {
            	$('#shortschedule').empty();
                output = "";
            	$(data.shortscheduleSelected).each(
                        function(index, item) {
                        	output += "<li><span>"+item.posttitle+"</span>";
                        	output += "<p>모임명: "+item.groupname +"<br>시간: "+item.startdate+"<br>장소:"+item.location+"</p></li>";
                        })
                        $('#shortschedule').append(output);
            },
            error: function() {
                console.log('에러')
            }
        }) // ajax
    } // function ajax end
    
})
</script>

<script src="resources/js/script.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />