<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<style>
#joinBtn {background : #4F93CD; color : white; border : none; line-height : 2 !important;}
</style>
<section>
	<input type="hidden" id="thisGroupKey" value="${groupkey }"> <input
		type="hidden" id="UserKey" value="${userkey }">
		<input type="hidden" id="sboardkey" value="${boardkey }">
		<input type="hidden" id="sboardname" value="${boardname }">
		<input type="hidden" id="sgroupkey" value="${groupkey }">
		<input type="hidden" id="sboardtype" value="${boardtype }">
	<div class="feature-photo test1">
		<figure>
			<c:if test="${empty group.groupCFile}">
				<img id="groupPageImg" src="resources/images/resources/timeline-1.jpg" alt="">
			</c:if>
			<c:if test="${not empty group.groupCFile}">
				<img id="groupPageImg"
				src="<spring:url value='/image${group.groupCFile }'/>" alt="" />
			</c:if>
			<!--<img id="groupImg" src="resources/images/resources/timeline-1.jpg" alt="">-->
		</figure>
		<c:if test="${userinfo.userGrade==1}">
		<!-- **********모임 대문 사진 수정*********** -->
		<form class="edit-phto" id="groupMainImgForm"
			enctype="multipart/form-data" action="group_mainImgUpdate.net?groupkey=${group.groupKey }"
			method="post">
			<input type="hidden" name="groupkey" value="${group.groupKey }"> <i
				class="fa fa-camera-retro"></i>
			<!-- 대문 사진 수정 버튼 -->
			<label class="fileContainer"> 대문 사진 수정 <input type="file"
				name="groupMainImgUpload" />
			</label>
		</form>
		</c:if>
		<!-- **********모임 대문 사진 수정*********** -->
		<div class="container-fluid height-for-white">
			<div class="row merged">
				<div class="col-lg-2 col-sm-3">
					<div class="user-avatar">
						<!-- 그룹 사진 -->
						<figure>
							<c:if test="${empty group.groupDFile}">
								<img id="groupImg" src="resources/images/resources/user-avatar.jpg" alt="">
							</c:if>
							<c:if test="${not empty group.groupDFile}">
								<img id="groupImg"
								src="<spring:url value='/image${group.groupDFile }'/>" />
							</c:if>
							<!-- <img id="groupImg" src="resources/images/resources/user-avatar.jpg" alt="">-->
							<!-- **********모임 사진 수정*********** -->
							<c:if test="${userinfo.userGrade==1}">
							<form class="edit-phto" id="groupImgForm"
								enctype="multipart/form-data" action="group_ImgUpdate.net?groupkey=${group.groupKey }"
								method="post">
								<input type="hidden" name="groupkey" id="hiddenGroupKey"
									value="${group.groupKey }"> <i class="fa fa-camera-retro"></i>
								<!-- 그룹 사진 수정 버튼 -->
								<label class="fileContainer"> 그룹 사진 수정하기 <input
									type="file" name="groupImgUpload" />
								</label>
								<!-- 그룹 사진 수정 버튼 -->
							</form>
							</c:if>
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
									<h5 class="groupname">${group.groupName}</h5>
								</li>
							</ul>
							<!-- 그룹 이름 -->
						</div>
						<div class="forgroupnamewidth1">
							<!-- 그룹 간단 정보 -->
							<ul>
								<li class="forgroupnameleft"><b>카테고리:</b> ${groupdcategory }&nbsp;>&nbsp;${groupscategory }</li>
								<li class="forgroupnameleft"><b>지역:</b> ${groupswhere }&nbsp;${groupdwhere }</li>
								<li class="forgroupnameleft"><b>연령대:</b> ${groupage } 대</li>
								<li class="forgroupnameleft"><b>회원수:</b> ${groupmembers }명</li>
								<li class="forgroupnameleft"><b>설립일:</b> ${group.groupDate }</li>
								<!-- 로그인을 안 했거나 가입하지 않은 유저일 경우에만 '가입하기' 버튼 보임 -->
								<c:if test = "${id == null || isMem == 0}">
									<li class="forgroupnameleft"><button id = "joinBtn">가입하기</button></li>
								</c:if>
							</ul>
							<!-- 그룹 간단 정보 -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>