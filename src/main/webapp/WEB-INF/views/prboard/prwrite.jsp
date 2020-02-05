<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 

<jsp:include page="../mainpage/header.jsp" />

	
			<section>
			<div class="gap gray-bg">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">
							<div class="row" id="page-contents">
								<div class="col-lg-3">
									<aside class="sidebar static">
								<div class="widget">
									<h4 class="widget-title">카테고리</h4>
									<ul class="naves">
										<c:forEach items="${dcategory }" var="item" varStatus="status">
											<li><a data-toggle="collapse" href="#collapseExample${status.index }" role="button"
												aria-expanded="false" aria-controls="collapseExample${status.index }">
												${item.DCategoryName }</a>
												
											</li>
										</c:forEach>
									</ul>
								</div>
								<!-- Shortcuts -->
							</aside>
								</div><!-- sidebar -->
							<div class="col-lg-6">
								<div class="central-meta">
									<div class="editing-info">
										<h5 class="f-title"><i class="ti-info-alt"></i> 홍보 글 작성 </h5>
										<form method="post" action="prAdd">
											<div class="form-group">	
										<!--  <label class="control-label" for="input">모임명</label><i class="mtrl-select"></i>  -->
                                             
											  <select name="groupKey" required="required">
											  <c:forEach var="list" items="${list }">
											  <!-- 지금 로그인 한 회원이 가입한 모임들을 셀렉트박스에 출력 -->
											     <option value="${list.groupKey }">${list.groupName }</option>
											  </c:forEach>
											  </select>
											</div>											
											<br><br>
											<div class="form-group">	
											<input type="hidden" id="userId" value="${id}" name="userId" required="required"/>
											<input type="hidden" id="userKey" value="${userInfo.userKey}" name="userKey" required="required"/>
											  <textarea rows="4" id="content" name="content" required="required"></textarea>
											  <label class="control-label" for="textarea">내용</label><i class="mtrl-select"></i>
											</div>
											<div class="submit-btns">
												<button type="submit" class="mtr-btn"><span>등록</span></button>
												<button type="button" class="mtr-btn" onclick="location.href='prboard'"><span>취소</span></button>
											</div>
										</form>
									</div>
								</div>	
							</div><!-- centerl meta -->
							
							<div class="col-lg-3">
									<aside class="sidebar static">
										<!-- 그룹 로그인 위젯 -->
								<c:if test="${empty id}">
									
								</c:if>
								<!-- 그룹 로그인 위젯 -->

								<!-- 그룹 나의 정보 위젯 -->
								<c:if test="${!empty id}">
									<div class="widget">
										<h4 class="widget-title">나의 정보</h4>
										<div class="your-page your-page-groupListDiv">

											<div class="page-meta">
												<a title="" class="underline">
											 <c:choose>
												<c:when test="${userInfo.logintype == 0}">
													${userInfo.userId }
												</c:when>
												<c:otherwise>
												카카오톡 유저
												</c:otherwise>
											</c:choose>

												</a> <em><i class="ti-bell"></i>정보수정</em>
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
								</c:if>
										<!-- who's following -->
										
								</div>
								<!-- creat page-->
								</aside>
							</div>
							<!-- sidebar -->
						</div>
					</div>
				</div>
			</div>
	</div>
	</section>
	</div>
	</section>
	
	
    <jsp:include page="../mainpage/footer.jsp"></jsp:include>
	
	
	<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="resources/js/map-init.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8c55_YHLvDHGACkQscgbGLtLRdxBDCfI"></script>

  	<script>
  	
  	
  	
	  $("form").submit(function(){
		  if($.trim($("textarea").val())==""){
			  alert("내용을 입력하세요.");
			  $("textarea").focus();
			  return false;
		  }
	  });
	  
	//글자수
		$('textarea[name="content"]').keyup(function() {

			var info = $(this).val();
			var label = $(this).next();

			label.text(info.length + "/" + 100);

			if (info.length > 100)
				label.css('color', 'red');
			   
			else
				label.css('color', '#088dcd');

		});

	</script>
</body>	

</html>