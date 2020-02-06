<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<jsp:include page="../mainpage/header.jsp" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">

<style>
.group-img {
	width: 40px;
	height: 40px;
	border-radius: 100%;
	box-sizing: border-box;
	margin-right: 12px;
}

.forum-list th:last-child {
	text-align: center;
}

.table td {
	vertical-align: middle !important;
}

.comment-subject a, .comment-num {
	color: #8c8c8c !important;
	font-size: 9pt;
}

.comment-subject a::before {
	content: "원문 제목 : ";
}

.comment-num {
	color: #ed3939b5 !important;
}

.selected-menu {
	color: blue !important;
}

.user-active li {
	color: #545454;
}

.forum-list table tbody tr td {
	padding: 20px;
}

.forum-list table tbody tr td:first-child {
	width: 65%;
}

.forum-list table tbody tr td:last-child {
	text-align: center;
	width: 25%;
}

.center-block {
	display: flex;
	justify-content: center; 
}

.admin-name h5:hover {
  cursor:pointer;
}

#recentwww:hover {
  cursor:pointer;
}

#recentnotice:hover {
  cursor:pointer;
}

</style>

<section>
			<div class="feature-photo">
				<figure> <!-- 기본 배경 -->
				<img src="resources/images/resources/backpic.jpg"/>
				</figure>

				<div class="container-fluid">
					<div class="row merged">
						<div class="col-lg-2 col-sm-3">
							<div class="user-avatar">
							<c:if test = "${mypage.userImageOrigin == null}">
							 <figure>
							      <img src="resources/images/resources/bloggrid-4.jpg" alt="" id="imgpic">
							   </figure>
						    </c:if>
						    <c:if test = "${mypage.userImageOrigin != null}">
							   	  <figure>
									<img src="<spring:url value='/image/${mypage.userImageFile }'/>" id="imgpic"/>
								  </figure>
						    </c:if>
									<form class="edit-phto" id="userImageForm">
									<input type="hidden" name="userKey" value="${mypage.userKey }">
										<i class="fa fa-camera-retro"></i> <label class="fileContainer"> 프로필 사진 변경 
										<input type="file" id="uploadfile" name="userImageUpdate"
											accept="image/gif, image/jpeg, image/png"/>
										</label>
									</form>
								
							</div>
						</div>
						<div class="col-lg-10 col-sm-9">
							<div class="timeline-info">
								<ul>
									<c:if test="${logintype == 0 }">
								<li class="admin-name" id="mymy">
									<h5>${id}님의 마이페이지</h5>
								</li>
							</c:if>
							<c:if test="${logintype == 1 }">
								<li class="admin-name" id="mymy">
									<h5>마이페이지</h5>
								</li>
							</c:if>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
<!-- top area -->

<section>
	<div class="gap gray-bg">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="row" id="page-contents">
						<div class="col-lg-3">
							<aside class="sidebar static">
								<div class="widget">
									<h4 class="widget-title">정보 수정</h4>
									<ul class="naves">
										<li><i class="ti-info-alt"></i> <a title=""
											class="jungbo">기본 정보</a></li>
										<li><i class="ti-heart"></i> <a title="" class="gss">관심사</a>
										</li>

									</ul>
								</div>
									<div class="widget">
											<h4 class="widget-title" id="recentwww"><i class="ti-pencil"></i>내가 작성한 글/댓글</h4>
											<input type="hidden" id="userId" name="userId" value="${id}"> 
											<ul class="activitiez">
													<c:if test="${postcount > 0 }">
											<c:forEach var="b" items="${postlist}">
												<li>
													<div class="activity-meta">
														<i>${b.postDate}</i> 
														<span> <a	href="groupmain?groupkey=${b.postKey}" title="${b.postTitle}">${b.postTitle}</a></span>
														<h6>
															 ${b.groupName} 
														</h6>
													</div>
												</li>
											</c:forEach>	
											</c:if>
											<c:if test="${postcount == 0 }">
											      작성한 글이 없습니다.
											</c:if>
											</ul>
										</div>
								<!-- recent activites -->
							</aside>
						</div>
						<!-- sidebar -->
						<div class="col-lg-6">
							<div class="central-meta">
								<div class="frnds">
									<form>
										<input type="hidden" id="userId" name="userId" value="${id}"> 
									</form>
									<ul class="nav nav-tabs">
										<li class="nav-item"><a class="active" href="#frends"
											data-toggle="tab">내가 쓴 글</a> <span>${postcount}</span></li>
										<li class="nav-item"><a class="" href="#frends-req"
											data-toggle="tab">내가 쓴 댓글</a><span>${commcount}</span></li>
									</ul>

									<!-- Tab panes -->
									<div class="tab-content">
										<div class="tab-pane active fade show " id="frends">
											<div class="forum-list">
												<table class="table table-responsive" id="tabletable">
													<thead>
														<tr>
															<th scope="col">작성글</th>
															<th scope="col">작성일</th>
														</tr>
													</thead>
													
													<tbody>
													    <c:if test = "${postcount > 0 }">
															<c:forEach var="b" items="${postlist}">
															<tr>
																<td>
															     <a	href="groupmain?groupkey=${b.postKey}" title="${b.postTitle}">${b.postTitle}</a>
															     <span></span>
															     </td>
																<td>${b.postDate}</td>
															</tr>
														</c:forEach>
														</c:if>
														<c:if test = "${postcount == 0 }">
														  <tr>
														  <td>작성한 글이 없습니다.</td><td></td>
														  </tr>
														</c:if>
													</tbody>
												</table>
											</div>
										</div>
										<!-- 댓글 -->
										<div class="tab-pane fade" id="frends-req">
											<div class="forum-list">
												<table class="table table-responsive" id="tabletable">
													<thead>
														<tr>
															<th scope="col">작성댓글</th>
															<th scope="col">작성일</th>
														</tr>
													</thead>
													<tbody>
													    <c:if test = "${commcount > 0 }">
														<c:forEach var="b" items="${commlist}">
															<tr>
																<td> <a href="groupmain?groupkey=${b.commnetNum}"
																	title="${b.commentContent}">${b.commentContent}</a>
																	<span></span>
																	</td>
																<td>${b.commentDate}</td>
															</tr>
														</c:forEach>
														</c:if>
														<c:if test = "${commcount == 0 }">
														  <tr>
														  <td>작성한 댓글이 없습니다.</td><td></td>
														  </tr>
														</c:if>
													</tbody>
												</table>
											</div>

										</div>
									</div>
								</div>
							</div>


						</div>
					
				
				<div class="col-lg-3">
					<aside class="sidebar static">

						<div class="widget">
							<h4 class="widget-title" id="recentnotice">
								<i class="ti-bell"></i>최근 알림
							</h4>
							<ul class="activitiez">
										<c:if test="${msgcount > 0 }">
											<c:forEach var="msg" items="${getMessage}">
												<li>
													<div class="activity-meta">
														<i>${item.postDate}</i> <i>${msg.mgDate}</i><span><a
															href="#" title=""> ${msg.mgContent} </a></span>
														<h6>
															<script type="text/javascript">
															var date1 = '${msg.mgDate}';
															document.write(timeBefore(new Date(date1)));
															</script>
														</h6>
													</div>
												</li>
											</c:forEach>
										</c:if>
										<c:if test="${msgcount == 0 }">
											   받은 내역이 없습니다.
											</c:if>
									</ul>
						</div>
						<!-- recent activites -->
					</aside>
				</div>
				<!-- sidebar -->
			</div>
		</div>
	</div>
	</div>
	</div>
</section>


<jsp:include page="../mainpage/footer.jsp"></jsp:include>

<script data-cfasync="false"
	src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="resources/js/map-init.js"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8c55_YHLvDHGACkQscgbGLtLRdxBDCfI"></script>
<script>

var date1 = '${item.postDate}';
document.write(timeBefore(new Date(date1)));

//프사 등록
$('input[type=file]').on('change', preview);

function preview(e){
	   var file = e.target.files[0];
	   
	   if(!file.type.match('image.*')) {
		   alert("확장자는 이미지 확장자만 가능합니다.");
		   return;
	   }
	   
	   var reader = new FileReader();
	   
	   reader.readAsDataURL(file);
	   
	   reader.onload = function(e){
		   
		   $("#imgpic").attr('src', e.target.result);
		   
		   var form = $("#userImageForm")[0];
		     
		   console.log(form);
	        var formData = new FormData(form);
		    console.log(formData);
	        formData.append("userKey", "${mypage.userKey }");
	        formData.append("file", $("#uploadfile")[0].files[0]);
		   
	         
	        $.ajax({
	              url : "userImage"
	            , type : "POST"
	            , processData : false
	            , contentType : false
	            , data : formData
	            , success:function() {
	               console.log("success");
	            }
	        });
	   }
	   
	    
}

 
	//회원 정보 수정 이동
	$(".jungbo").click(function() {
		location.href = "mypage2";
	});

	//회원 관심사 수정 이동
	$(".gss").click(function() {
		location.href = "mypage3";
	});

	//이름 누르면 마이페이지 메인으로 이동
	$("#mymy").click(function() {
		location.href = "mypage";
		return false;
	});
	
	//알림 이동
	$("#recentnotice").click(function() {
		location.href = "mypage5";
		return false;
	});
	
	
	//모임 이동
	$("#mymygroups").click(function() {
		location.href = "mypage6";
		return false;
	});
</script>
