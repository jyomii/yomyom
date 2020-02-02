<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
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
										<li><i class="ti-clipboard"></i> <a href="admin" title="">통계</a>
										</li>
										<li><i class="fas fa-user"></i> <a href="adminusers"
											title="">회원</a></li>
										<li><i class="fas fa-users"></i> <a href="admingroup"
											title="">모임</a></li>

										<li><i class="fas fa-align-justify"></i> <a
											href="admincategory" title="">카테고리</a></li>

										<li><i class="fas fa-clipboard"></i> <a
											href="adminnotice" title="">공지사항</a></li>

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
																<a> <c:choose>
																		<c:when test="${empty item.groupDFile }">
																			<img src="resources/images/group_default.png"
																				alt="">
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
																</span> <a href="#" title=""
																	class="add-butn more-action negative" data-ripple="">모임
																	해산</a> <a href="#" title="" class="add-butn usermessage"
																	data-toggle="modal" data-target="#exampleModal"
																	data-userKey='${item.userKey }'>쪽지
																	보내기</a> <input type="hidden" value="${item.groupKey }">
															</div>
														</div>
													</li>
												</c:forEach>


											</ul>
											<div class="lodmore">
												<button class="btn-view btn-load-more"
													<c:if test="${d_listCount < 10}">
														 style="visibility:hidden;"
														</c:if>></button>
											</div>
										</div>
										<div class="tab-pane fade" id="frends-req">
											<ul class="nearby-contct">
												<c:forEach items="${requestGroup}" var="item">
													<li>
														<div class="nearly-pepls">
															<figure>
																<a> <c:choose>
																		<c:when test="${empty item.groupDFile }">
																			<img src="resources/images/group_default.png"
																				alt="">
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

																</span> <a href="#" title=""
																	class="add-butn more-action negative" data-ripple="">거부</a>
																<a style="color: white;" " class="add-butn accept"
																	data-ripple=""> 승인 </a> <input type="hidden"
																	value="${item.groupKey }">
															</div>
														</div>
													</li>
												</c:forEach>


											</ul>
											<button class="btn-view btn-load-more"
												<c:if test="${r_listCount < 10}">
														 style="visibility:hidden;"
														</c:if>></button>
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

<!-- footer -->
<jsp:include page="../mainpage/footer.jsp" />
<!-- footer end -->



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
						<textarea rows="4" placeholder="쪽지 내용을 입력하세요." required="required"
							name="mgContent"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary">전송</button>
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
	$('.accept').click(function() {
		//모임 승인
		var key = $(this).next().val();

		$.ajax({

			url : "acceptGroup",
			data : {
				"key" : key
			},
			method : "post",
			success : function(result) {
				if (result == 1) {
					alert('승인되었습니다.');
					location.href = "admingroup";
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
	$('#exampleModal form').submit(function() {

		var data = $(this).serialize();

		$.ajax({

			url : "SendUserMessage",
			data : data,
			method : "post",
			success : function(result) {

				if (result == 1)
					alert('쪽지를 전송하였습니다.');
			}

		});

		return false;

	});

	var page = 1;
	//더보기 클릭 시 모임목록 가져오기
	$('.btn-load-more').click(
			function() {
				page++;
				var type = ($(this).index());

				$.ajax({
					url : "moreGroupList",
					method : "post",
					data : {
						"page" : page,
						"type" : type
					},
					success : function(result) {

						var more = (result.length < 10);

						if (result.length > 0) {
							var html1 = print(result, type);

							if (type == 0) {
								$('#frends ul').append(html1);
								if (more)
									$('#frends .btn-load-more').css(
											'visibility', 'hidden');
							} else {
								$('#frends-req ul').append(html1);
								if (more)
									$('#frends-req .btn-load-more').css(
											'visibility', 'hidden');
							}

						}

					}

				});

			});

	function print(list, type) {

		var html = "";
		for (var i = 0; i < list.length; i++) {

			html += '<li>';
			html += '<div class="nearly-pepls">';
			html += '<figure>';
			html += '<a>';

			if (list[i].groupDFile == null)
				html += '<img src= "resources/images/group_default.png" alt="">';
			else
				html += "<img src= \'<spring:url value='/image"+list[i].groupDFile +"'/>\'/>";

			html += '</a></figure>';

			html += '<div class="pepl-info">';
			html += '<h4>';
			html += '<a title="">' + list[i].groupName + '</a>';
			html += '</h4><span>' + list[i].categoryName + '/';

			if (list[i].ageKey == 0)
				html += '연령대 제한 없음/';
			else
				html += (list[i].ageKey * 10) + '대/';

			if (list[i].whereKey == 0)
				html += '지역 없음/';
			else
				html += list[i].locationName + '/';

			html += list[i].memberCount + '명';

			html += '</span>';

			if (type == 1) {
				//승인예정 모임
				html += '<a href="#" title=""';
				html +=	' class="add-butn more-action negative" data-ripple="">거부</a>';

				html += '<a style="color:white;" class="add-butn accept" data-ripple="">';
				html += '승인';
				html += '</a>';
				html += '	<input type="hidden" value="'+list[i].groupKey+'">';
			} else {

				html += ' <a href="#" title="" class="add-butn more-action negative" data-ripple="">모임 해산</a>';
				html += '  <a href="#"  title="" class="add-butn usermessage" data-toggle="modal" data-target="#exampleModal"';
	            html+=' data-userKey="'+list[i].userKey+'"';
												
	            html+='   >쪽지 보내기</a>';
				html += '<input type="hidden" value="'+list[i].groupKey+'">';

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
			data : {
				"key" : key
			},
			method : "post",
			success : function(result) {
				if (result == 1) {
					alert('모임이 해산되었습니다.');
					location.href = "admingroup";
				}
			}

		});

	});
</script>
</body>

</html>