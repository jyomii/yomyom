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
								<div class="col-lg-2">
								
								</div><!-- sidebar -->
							<div class="col-lg-7">
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
								<c:if test="${userkey==-1}">
									<div class="widget logincenter">
										<div class="logindiv">
											<span class="logintitle">GroupIn의 서비스를 이용하시려면 로그인 해주세요</span>
										</div>
										<!--<hr class="logintitlehr">  -->
										<div class="your-page leftrightwidth">
											<div class="submit-btns forSubmitBtnDiv">
												<button type="submit" class="mtr-btn forLoginBtn">
													<span>GroupIn 로그인</span>
												</button>
											</div>
											<span class="loginleft forLoginBtnx"><a href="login">비밀번호
													찾기</a></span> <span class="loginright forLoginBtnx"><a
												href="login">회원가입</a></span>
										</div>
									</div>
								</c:if>
								<!-- 그룹 로그인 위젯 -->
								<c:if test="${userkey!=-1}">
									<!-- 그룹 나의 정보 위젯 -->
									<div class="widget">
										<h4 class="widget-title">나의 정보</h4>
										<div class="your-page your-page-groupListDiv"
											style="height: 378px">
											<figure class="figure-myimg">
												<c:if test="${mypage.userImageOrigin == null}">
													<figure>
														<img src="resources/images/resources/default.png" alt=""
															id="imgpic">
													</figure>
												</c:if>
												<c:if test="${mypage.userImageOrigin != null}">
													<figure>
														<img
															src="<spring:url value='/image/${mypage.userImageOrigin }'/>"
															id="imgpic" />
													</figure>
												</c:if>
											</figure>
											<div class="page-meta page-metaclass">
												<!-- <span><a href="mypage5"><i class="far fa-bell"></i>알림</a></span>  -->
												<span><a href="mypage"><i
														class="far fa-file-alt commentmargin"></i>마이페이지</a></span>
											</div>
											<div class="page-likes">
												<ul class="nav nav-tabs likes-btn">
													<li class="nav-item"><a class="active" href="#link1"
														data-toggle="tab">가입모임목록</a></li>
													<li class="nav-item"><a class="" href="#link2"
														data-toggle="tab">모임즐겨찾기</a></li>
												</ul>
												<!-- Tab panes -->
												<div class="tab-content">
													<div class="tab-pane active fade show" id="link1">
														<div>
															<ul class="your-page-groupList leftpadding">
																<c:if test="${joincount >0 }">
																	<c:forEach var="list" items="${list}">
																		<li> <input type="hidden" name="groupKey"
																			value="${list.groupKey}"> <input
																			type="hidden" name="groupName"
																			value="${list.groupName}" id="groupName"> <a
																			href="group_main?groupkey=${list.groupKey}">${list.groupName }</a>
																		</li>
																	</c:forEach>
																</c:if>
																<c:if test="${joincount ==0 }">
												  가입한 모임이 없습니다.
												</c:if>
															</ul>
															<c:if test="${userreggroupcount>3 }">
																<div class="row row-pagination"
																	style="padding-top: 0px !important;">
																	<div class="col">
																		<ul class="pagination pagination-sm center-pagination"
																			id="pempty">
																			<li class="page-item widthpagination"><a
																				class="page-link" href="#">이전&nbsp;</a></li>

																			<li class="page-item widthpagination"><a
																				class="page-link" href="#">&nbsp;다음</a></li>
																		</ul>
																	</div>
																</div>
															</c:if>
														</div>
													</div>
													<div class="tab-pane fade" id="link2">
														<div>
															<ul class="your-page-groupList leftpadding">
																<c:if test="${favcount > 0 }">
																	<c:forEach var="favlist" items="${favlist}">
																		<li> <input type="hidden" name="groupKey"
																			value="${favlist.groupKey}"> <input
																			type="hidden" name="groupName"
																			value="${favlist.groupName}" id="groupName">
																			<a href="group_main?groupkey=${favlist.groupKey}">${favlist.groupName }</a><br>
																		<hr class="hrmargin"></li>
																	</c:forEach>
																</c:if>
																<c:if test="${favcount == 0 }">
												   즐겨찾는 모임이 없습니다.
												</c:if>
															</ul>
															<div class="row row-pagination"
																style="padding-top: 0px !important;">
																<div class="col">
																	<ul class="pagination pagination-sm center-pagination"
																		id="pempty">
																		<li class="page-item widthpagination"><a
																			class="page-link" href="#">이전&nbsp;</a></li>

																		<li class="page-item widthpagination"><a
																			class="page-link" href="#">&nbsp;다음</a></li>
																	</ul>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:if>
								<!-- 나의 정보 위젯 -->
							
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