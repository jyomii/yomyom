<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- Header -->
<jsp:include page="../mainpage/header.jsp" />
<!-- Header end -->

<style>
.forgroupname {
	list-style: none;
	padding-top: 20px;
}

.forgroupnamewidth {
	width: 29%;
	display: inline-block;
}

.forgroupnamewidth1 {
	width: 69%;
	display: inline-block;
	position: relative;
	top: 7px;
}

.forgroupnameleft {
	float: left;
	list-style: none;
	margin-right: 20px;
}

.forlogintitle {
	margin-bottom: 10px !important;
}

.forSubmitBtnDiv {
	margin-top: 0px !important;
	margin-bottom: 5px;
	width:100%;
}

.forLoginBtn {
	padding-left: 25px !important;
	padding-right: 25px !important;
	margin-bottom:10px;
	width: 90%;
}

.forMemberCountBtnOne {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnTwo {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnThree {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnFour {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnFive {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnSix {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forMemberCountBtnSeven {
	margin-top: 0px !important;
	padding: 3px !important;
}

.forJoinBtn {
	margin-top: 0px !important;
	padding: 5px !important;
	float: right;
	font-size: 14px !important;
}

.forRegisterBtn {
	padding-left: 20px !important;
	padding-right: 20px !important;
	margin-left: 10%;
}

.forRememberIdDiv {
	margin-bottom: 0px !important;
	margin-top: 5px !important;
}

.forcheckbox {
	margin-top: 3px;
}

.calendarDiv {
	text-align: center;
	width: 95%;
	margin: 0 auto;
}

.calendarTable {
	width: 60%;
	margin: 0 auto;
	height: 400px;
}

.calendarBtn {
	cursor: pointer;
}

.calendarCell {
	cursor: pointer;
}

.calendarDiv td {
	border-radius: 50px;
}

.calendarCellSelected {
	background-color: #4F93CE;
	color: white !important;
}

.calendarCellMy {
	background-color: black;
	color: white !important;
}

.scheduleDiv {
	width: 80%;
	margin: 0 auto;
}

.scheduleUl {
	padding-left: 0px !important;
}

.card-header-bgcolor {
	background: white none repeat scroll 0 0 !important;
}

.schedule-span {
	margin-bottom: 7px;
	width: 70% !important;
}

.schedule-span1 {
	width: 35% !important;
}

.nearby-contct>li {
	padding: 15 px !important;
}

.paddingZero[aria-expanded="true"] {
	background: #088dcd;
	color: #fff;
	text-decoration: none;
}

.groupMember {
	display: inline-block;
	list-style: outside none none;
	margin-bottom: 0;
	padding: 0 25px 20px;
	width: 100%;
	max-height: 300px !important;
}

.groupMember li {
	display: inline-block;
	margin-bottom: 20px;
	position: relative;
	width: 100%;
}

.your-page-groupList li {
	margin-bottom: 3px !important;
}

.your-page-groupListDiv {
	min-height: 273px;
}

.min-width-h4 {
	margin-bottom: 0px !important;
}

.height-for-white {
	height: 70px !important;
}

.calendarBtn{
cursor:pointer}

#calendar td{
cursor:pointer
}
.katalkbtn{
background-color: #423630 !important;
color: white !important;
}

.katalkbtn:hover{
background-color: #594941 !important;
}

.katalkbtnw{
color: #423630 !important;
}

.logintitle{
font-size:14px;
margin-top:10px;
}

.logintitlehr{
margin-top:5px;
margin-bottom:2px;
width:100%;
}

.logincenter{
text-align:center;
}

.logindiv{
margin-top:10px;
}

.loginleft{
float:left;
font-size:14px;
margin-left:14px;
}

.loginright{
float:right;
font-size:14px;
margin-right:14px;
}
.leftrightwidth{
padding-left: 0px !important;
padding-right: 0px !important;
width:90%;
}

.center-pagination {
	justify-content: center;
	margin-bottom: 0px;
}
.widthpagination{
width:18% !important;
}
.imground{
border-radius:16px;
margin-right:10px;
}
.hrmargin{
margin-top:5px !important;
margin-bottom:5px !important;
}

.leftpadding{
padding-left:20px !important;
padding-right:20px !important;
}

.commentmargin {
    margin-right: 7px !important;
}
.groupname{
position:relative;
top:-9px;
}

.figure-myimg{
	width:80px !important;
	max-width: 100px !important;
	margin-left: 20px;
}

.figure-myimg1{
	width:100%;
	
}

.page-metaclass{
	margin-left: 20px;
    width: 55% !important;
}

.forDeleteMargin {
	margin-right: 2%
}

.addScheduleBtn {
	float: right;
	padding-left: 13px !important;
	padding-right: 13px !important;
}

.search-text-field {
	margin-left: 3%;
}

.search-text-free {
	background: #f5f5f5 none repeat scroll 0 0;
	border: 1px solid #dadede;
	border-radius: 30px;
	color: #7b7b7b;
	font-size: 15px;
	padding: 7px 20px;
	width: 70%;
	margin-left: 2%;
	margin-bottom: 10px;
	margin-top: 3px;
}

.search-text-btn {
	margin-left: 2%;
	padding-left: 20px;
	padding-right: 20px;
}

.row-pagination {
	padding-top: 30px;
}

.center-pagination {
	justify-content: center;
}

.inline-flex {
	display: inline-flex;
}

.text-align-center {
	text-align: center;
}

.search-condition {
	margin-right: 10px;
}

.margin-Bottom{
	margin-bottom: 0px !important;
}

.halfmargin {
	margin-left: 2.2%;
	width:30% !important;
}

.moneyDiv {
	display: none;
}

.btn-center{
	margin-left:40%;
}

.margintopZero{
	margin-top:0px !important;
}

#menu_wrap {
	display: none; position : absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 300px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
	position: absolute;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

.map_wrap {
	width: 100%;
	position: relative;
}

.modes {
	position: absolute;
	top: 10px;
	left: 10px;
	z-index: 1;
}

#drawingMap {
	width: 100%;
	height: 100vh;
	
}

#map{
width: 100% !important;
height: 350px;
border: 2px solid lightblue;
}

.mbformap {
	margin-bottom: 20px;
	margin-top: 0px !important;
}

.halfpercent{
	width:30% !important;
}

.halfpercent1{
	width:15% !important;
}

.halfmargin {
	margin-left: 2.2%;
}

.moneyDiv {
	display: none;
}

.btn-center {
	margin-left: 40%;
}

.margintopZero {
	margin-top: 0px !important;
}

.forMoneyList {
	width: 40% !important;
}

.forMoneyListbtnPart{
	margin-left: 40%;
	margin-bottom: 20px !important;
}

.forMoneyListLeft {
	margin-right: 0px !important;
	margin-left: 20%;
}

.checkboxList li a {
	width: 40% !important;
}

.checkboxList li .checkbox {
	margin-top: 10px !important;
	margin-bottom: 0px !important;
}

.checkboxList label {
	margin-bottom: 0px !important;
}

.moneyConfirmBtn {
	margin-left: 16%;
	margin-top: 0px !important;
	padding: 5px !important;
}

.moneyConfirmBtn0 {
	margin-left: 25% !important;
}

.moneyConfirmBtn2 {
	margin-left: 40%;
	margin-top: 0px !important;
	padding: 5px !important;
}
.moneyConfirmBtn1 {
	margin-left: 5%;
	margin-top: 0px !important;
	padding: 5px !important;
}

.moneyConfirmBtnDiv {
	
	margin-top: 0px !important;
	margin-bottom: 17px;
}

.color-white {
	color: white !important;
}

.toNameBtn {
	padding: 3px !important;
	font-size: 14px;
}
</style>

<!-- 그룹 페이지 상단 -->
<section>
	<input type="hidden" id="thisGroupKey" value="${group.groupKey }"> <input
		type="hidden" id="UserKey" value="${userkey }">
		<input
		type="hidden" id="postkey" value="${modifypost.postKey }">
		<input
		type="hidden" id="cmoneytype" value="${modifycalendar.cmoneytype}">
	<div class="feature-photo">
		<figure>
			<img id="groupPageImg"
				src="<spring:url value='/image${group.groupDFile }'/>" alt="" />
			<!--<img id="groupImg" src="resources/images/resources/timeline-1.jpg" alt="">-->
		</figure>
		<c:if test="${userinfo.userGrade==1}">
		<!-- **********모임 대문 사진 수정*********** -->
		<form class="edit-phto" id="groupMainImgForm"
			enctype="multipart/form-data" action="group_mainImgUpdate.net"
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
							<img id="groupImg"
								src="<spring:url value='/image${group.groupCFile }'/>" />
							<!-- <img id="groupImg" src="resources/images/resources/user-avatar.jpg" alt="">-->
							<!-- **********모임 사진 수정*********** -->
							<c:if test="${userinfo.userGrade==1}">
							<form class="edit-phto" id="groupImgForm"
								enctype="multipart/form-data" action="group_ImgUpdate.net"
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
								<li class="forgroupnameleft">카테고리: ${groupdcategory }&nbsp;>&nbsp;${groupscategory }</li>
								<li class="forgroupnameleft">지역: ${groupswhere }&nbsp;${groupdwhere }</li>
								<li class="forgroupnameleft">연령대: ${groupage } 대</li>
								<li class="forgroupnameleft">회원수: ${groupmembers }명</li>
								<li class="forgroupnameleft">설립일: ${group.groupDate }</li>
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
<!-- 그룹 페이지 메인 -->
<section>
	<div class="gap gray-bg">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="row" id="page-contents">

						<!-- 그룹 페이지 위젯 왼쪽 -->
						<div class="col-lg-3">
							<aside class="sidebar static">
								<!-- 그룹 게시판 위젯 -->
								<jsp:include page="group_leftWidget.jsp" />
							</aside>
						</div>
						<!-- 그룹 페이지 위젯 왼쪽  -->

						<!-- 그룹 페이지 위젯 중간 -->
						<div class="col-lg-6">

							<!-- 그룹장 간단 그룹 소개 -->
							<div class="central-meta item">
								<h5 class="f-title ext-margin margintopZero"><i class="ti-share"></i> 모임 일정 추가</h5>
										<div class="calendarDiv">
											<table id="calendar" class="calendarTable">
												<tr>
													<!-- label은 마우스로 클릭을 편하게 해줌 -->
													<th><label onclick="prevCalendar()"><i
															class="fas fa-angle-left calendarBtn"></i></label></th>
													<th id="tbCalendarYM" colspan="5">yyyy년 m월</th>
													<th><label onclick="nextCalendar()"><i
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
										<div class="editing-info">
											<h5 class="f-title">
												<i class="ti-info-alt"></i> 정모 내용
											</h5>
											<form id="addscheduleform" method="post">
											<input type="hidden" name="groupKey" value="${group.groupKey }">
											<input type="hidden" name="groupKey" value="${modifycalendar.cmoneytype }">
											<div class="form-radio">
												<div class="radio">
													<label> 
													<c:if test="${modifycalendar.cmoneytype=='S'}">
													<input type="radio" name="cmoneytype" value="S" checked><i class="check-box"></i>신청순
													</c:if>
													<c:if test="${modifycalendar.cmoneytype!='S'}">
													<input type="radio" name="cmoneytype" value="S"><i class="check-box"></i>신청순
													</c:if>
													</label>
												</div>
												<div class="radio">
													<label> 
													<c:if test="${modifycalendar.cmoneytype=='M'}">
													<input type="radio" name="cmoneytype" value="M" checked><i class="check-box"></i>입금순
													</c:if>
													<c:if test="${modifycalendar.cmoneytype!='M'}">
													<input type="radio" name="cmoneytype" value="M"><i class="check-box"></i>입금순
													</c:if>
													</label>
												</div>
											</div>

											
												<div class="form-group">
													<input type="text" required="required" id="posttitle" name="postTitle" value="${modifypost.postTitle }"/>
													<label class="control-label" for="input">정모 제목</label><i
														class="mtrl-select"></i>
												</div>
												
												<div class="form-group half halfpercent">
													<input type="text" id="cstartdate" required="required" name="cstartdate" value="${modifycalendar.startdate }"/>
													<label class="control-label" for="input">일시</label><i
														class="mtrl-select"></i>
												</div>
												
												<div class="form-group half halfpercent1">
													<input type="text" id="time" required="required" name="time" value="${modifycalendar.starttime }"/>
													<label class="control-label" for="input">시(0~24)</label><i
														class="mtrl-select"></i>
												</div>
												<div class="form-group half halfpercent1">
													<input type="text" id="minute" required="required" name="minute" value="${modifycalendar.startminute }"/>
													<label class="control-label" for="input">분</label><i
														class="mtrl-select"></i>
												</div>
												<div class="form-group half halfmargin">
													<input type="text" required="required" id="maxperson" name="maxperson" value="${modifycalendar.maxperson }"/> <label
														class="control-label" for="input">참석인원(숫자만 입력하세요)</label><i
														class="mtrl-select"></i>
												</div>
												
												<div class="form-group">
													<input type="text" required="required" id="location" name="location" value="${modifycalendar.location }"/>
													<label class="control-label" for="input">장소</label><i
														class="mtrl-select"></i>
												</div>
												<div class="form-group">
													<textarea rows="4" id="textarea" required="required" id="grouptext" name="postContent">${modifypost.postContent }</textarea>
													<label class="control-label" for="textarea">정모 내용</label><i
														class="mtrl-select"></i>
												</div>
												<c:if test="${not empty modifycalendar.cMoney}">
												<div class="checkbox">
													<label> <input type="checkbox" id="moneyCheck" checked><i
														class="check-box"></i>회비여부
													</label>
												</div>
												</c:if>
												<c:if test="${empty modifycalendar.cMoney}">
												<div class="checkbox">
													<label> <input type="checkbox" id="moneyCheck"><i
														class="check-box"></i>회비여부
													</label>
												</div>
												</c:if>
												<c:if test="${not empty modifycalendar.cMoney}">
												<div id="moneyDiv" class="form-group half moneyDiv">
													<input type="text" id="cmoney" required="required" name="cmoney" value="${modifycalendar.cMoney }"/><label
														class="control-label" for="input">회비</label><i
														class="mtrl-select"></i>
												</div>
												</c:if>
												<c:if test="${empty modifycalendar.cMoney}">
												<div id="moneyDiv" class="form-group half moneyDiv">
													<input type="text" id="cmoney" required="required" name="cmoney"/><label
														class="control-label" for="input">회비</label><i
														class="mtrl-select"></i>
												</div>
												</c:if>
												<div class="submit-btns">
													<button type="button" id="addsubmit" class="mtr-btn btn-center">
														<span>정모수정</span>
													</button>
												
												</div>
												<input type="hidden" name="postKey" value="${modifypost.postKey }">
											</form>
											<input type="hidden" id="thispostkey">
											<input type="hidden" id="thistf" value="f">
										</div>
							</div>
							<div class="central-meta item">
							<h5 class="f-title ext-margin margintopZero"><i class="ti-share"></i>길 찾기 및 경로 추가하기</h5><br>
	
	<button type="button" id="receiveFromChild" class="mtr-btn mbformap" onclick="javascript:openWin();"><span>지도 만들기</span></button>
	<!--  <button type="button" class="mtr-btn" onclick="javascript:saveMap();"><span>지도 저장하기</span></button>
	<button type="button" class="mtr-btn" onclick="javascript:loadMap();"><span>지도 불러오기</span></button>
	<button type="button" class="mtr-btn" onclick="javascript:deleteMap();"><span>지도 삭제하기</span></button>-->
	<div id="map" style="width: 350px; height: 350px;"></div>


	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=81901835c348429fbab043210a118692&libraries=drawing,services"></script>
							</div>

						</div>
						<!-- 그룹 페이지 위젯 중간 -->

						<!-- 그룹 페이지 위젯 오른쪽 -->
						<div class="col-lg-3">
							<aside class="sidebar static">
								<jsp:include page="group_rightWidget(modifySchedule).jsp" />
							</aside>
						</div>
						<!-- 그룹 페이지 위젯 오른쪽 -->

					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script src="http://code.jquery.com/jquery-latest.js"></script>

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
		var btoday = today.getMonth();
		today = new Date(today.getFullYear(), today.getMonth()+1, today
				.getDate());
		var atoday = today.getMonth();
		if(atoday-btoday==2){
			today = new Date(today.getFullYear(), today.getMonth()-1, today
					.getDate());
		}
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
				+ (today.getMonth()+1) + "월";
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
				cell.innerHTML = "<input type='hidden' value='일'><span class='caldendarCell' id='day"+i+"'><font color=#F79DC2>"
						+ i + "</span>";
				//1번째의 cell에만 색칠
			}
			if (cnt % 7 == 2) {/*일요일 계산*/
				//1주일이 7일 이므로 일요일 구하기
				//월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
				cell.innerHTML = "<input type='hidden' value='월'><span class='caldendarCell'>"
						+ i + "</span>";
				//1번째의 cell에만 색칠
			}
			if (cnt % 7 == 3) {/*일요일 계산*/
				//1주일이 7일 이므로 일요일 구하기
				//월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
				cell.innerHTML = "<input type='hidden' value='화'><span class='caldendarCell'>"
						+ i + "</span>";
				//1번째의 cell에만 색칠
			}
			if (cnt % 7 == 4) {/*일요일 계산*/
				//1주일이 7일 이므로 일요일 구하기
				//월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
				cell.innerHTML = "<input type='hidden' value='수'><span class='caldendarCell'>"
						+ i + "</span>";
				//1번째의 cell에만 색칠
			}
			if (cnt % 7 == 5) {/*일요일 계산*/
				//1주일이 7일 이므로 일요일 구하기
				//월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
				cell.innerHTML = "<input type='hidden' value='목'><span class='caldendarCell'>"
						+ i + "</span>";
				//1번째의 cell에만 색칠
			}
			if (cnt % 7 == 6) {/*일요일 계산*/
				//1주일이 7일 이므로 일요일 구하기
				//월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
				cell.innerHTML = "<input type='hidden' value='금'><span class='caldendarCell'>"
						+ i + "</span>";
				//1번째의 cell에만 색칠
			}
			if (cnt % 7 == 0) {/* 1주일이 7일 이므로 토요일 구하기*/
				//월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
				cell.innerHTML = "<input type='hidden' value='토'><span class='caldendarCell' id='day"+i+"'><font color=skyblue>"
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
buildCalendar();
var w = window.innerWidth / 2;
var h = window.innerHeight / 2;
var overlays = []; // 지도에 그려진 도형을 담을 배열
//현재 지도에 그려진 객체들 정보
var ReturnValue, Level = 3,
    Latlng = new kakao.maps.LatLng(33.450701, 126.570667);
$('#map').height(h);
$('#map').width(w);

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: Latlng, // 지도의 중심좌표
        draggable: false,
        level: Level
        // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption);

function openWin() {

    var windowObj = window
        .open(
            "DrawMap",
            "지도 추가",
            "width=" +
            w +
            ", height=" +
            h +
            ",status=no, toolbar=no, menubar=no, scrollbars=no, resizable=yes");

}

//리턴받은 지도 데이터를 뿌립니다.
function getReturnValue(returnValue, level, latlng) {
    console.log(returnValue);
    if (returnValue.marker.length == 0 && returnValue.polyline.length == 0) {
        $("#thistf").val("f");
    } else {
        $("#thistf").val("t");
    }
    ReturnValue = returnValue;
    Level = level;
    Latlng = latlng;

    // 이동할 위도 경도 위치를 생성합니다 
    var moveLatLon = new kakao.maps.LatLng(latlng.getLat(), latlng
        .getLng());

    // 지도 중심을 이동 시킵니다
    map.setCenter(moveLatLon);
    map.setLevel(level);

    //지도에 그려진 도형이 있다면 모두 지웁니다
    removeOverlays();

    // 지도에 가져온 데이터로 도형들을 그립니다
    drawMarker(returnValue[kakao.maps.drawing.OverlayType.MARKER]);
    drawPolyline(returnValue[kakao.maps.drawing.OverlayType.POLYLINE]);

}

// Drawing Manager에서 가져온 데이터 중 마커를 아래 지도에 표시하는 함수입니다
function drawMarker(markers) {
    var len = markers.length,
        i = 0;

    for (; i < len; i++) {
        var marker = new kakao.maps.Marker({
            map: map,
            position: new kakao.maps.LatLng(markers[i].y,
                markers[i].x),
            zIndex: markers[i].zIndex
        });

        overlays.push(marker);
    }
}

// 아래 지도에 그려진 도형이 있다면 모두 지웁니다
function removeOverlays() {
    var len = overlays.length,
        i = 0;

    for (; i < len; i++) {
        overlays[i].setMap(null);
    }

    overlays = [];
}

// Drawing Manager에서 가져온 데이터 중 선을 아래 지도에 표시하는 함수입니다
function drawPolyline(lines) {
    var len = lines.length,
        i = 0;

    for (; i < len; i++) {
        var path = pointsToPath(lines[i].points);
        var style = lines[i].options;
        var polyline = new kakao.maps.Polyline({
            map: map,
            path: path,
            strokeColor: style.strokeColor,
            strokeOpacity: style.strokeOpacity,
            strokeStyle: style.strokeStyle,
            strokeWeight: style.strokeWeight
        });

        overlays.push(polyline);
    }
}

// Drawing Manager에서 가져온 데이터 중 
// 선 정보를 kakao.maps.LatLng객체로 생성하고 배열로 반환하는 함수입니다 
function pointsToPath(points) {
    var len = points.length,
        path = [],
        i = 0;

    for (; i < len; i++) {
        var latlng = new kakao.maps.LatLng(points[i].y, points[i].x);
        path.push(latlng);
    }

    return path;
}


function deleteMap() {

    $.ajax({
        url: "deleteMap",
        success: function(result) {

            if (result > 0)
                alert("삭제되었습니다.");

        }
    });

}
//현재 지도 저장하기

function saveMap(postkey) {

    var info = [];

    var index = 0;

    //마커 정보 DB화 
    for (var i = 0; i < ReturnValue.marker.length; i++) {

        var item = {
            postkey: postkey,
            lat: ReturnValue.marker[i].y,
            lng: ReturnValue.marker[i].x,
            mapoption: 'M',
            mapseq: index++

        };

        if (i == 0) {
            item.maplevel = Level;
            item.maplat = Latlng.getLat();
            item.maplng = Latlng.getLng();
        }

        info.push(item);

    }

    //선 정보 DB화
    //선 묶음 
    for (var j = 0; j < ReturnValue.polyline.length; j++) {

        //j번 선정보의 선묶음
        for (var k = 0; k < ReturnValue.polyline[j].points.length; k++) {

            var item = {
                postkey: postkey,
                lat: ReturnValue.polyline[j].points[k].y,
                lng: ReturnValue.polyline[j].points[k].x,
                mapoption: 'L',
                mapseq: index
            };

            if(info.length == 0){
                item.maplevel = Level;
                item.maplat = Latlng.getLat();
                item.maplng = Latlng.getLng();
             }
            
            info.push(item);
        }

        index++;

    }

    var jsonData = JSON.stringify(info);
    jQuery.ajaxSettings.traditional = true;

    $.ajax({

        url: "saveMap",
        data: {
            "info": jsonData,
            "postkey": postkey
        },
        method: "post",
        success: function(result) {
            if (result > 0)
                alert('추가되었습니다.');
        }

    });
}

//저장한 지도 불러오기
function loadMap() {

    $.ajax({

        url: "getMap",
        data: {
            "postkey": 0
        },
        method: "get",
        success: function(result) {

            var moveLatLon = new kakao.maps.LatLng(result[0].maplat,
                result[0].maplng);

            //지도 그리기
            map.setCenter(moveLatLon);
            map.setLevel(result[0].maplevel);


            //선 번호
            var index = 0;
            //선 묶음
            var lines = [];

            //line / marker 그리기
            for (var i = 0; i < result.length; i++) {

                //마커일경우
                if (result[i].mapoption == 'M') {

                    var marker = new kakao.maps.Marker({
                        map: map,
                        position: new kakao.maps.LatLng(result[i].lat,
                            result[i].lng),
                        zIndex: 0
                    });

                    overlays.push(marker);
                } else {
                    //선인 경우 선묶음인걸 확인하고 그려야함


                    if (index == 0) {
                        index = result[i].mapseq;
                    }

                    if (index != result[i].mapseq) {

                        index = result[i].mapseq;

                        DrawLine(lines);
                        lines = [];
                    }


                    lines.push({
                        x: result[i].lng,
                        y: result[i].lat
                    });


                }
            }


            DrawLine(lines);

        }

    });
}


function DrawLine(lines) {

    var path = pointsToPath(lines);

    var polyline = new kakao.maps.Polyline({
        map: map,
        path: path

    });
    console.log(lines);
    overlays.push(polyline);


}
if ($("input:checkbox[id='moneyCheck']").is(":checked")) {
    $('#moneyDiv').attr('style', "display:inline;");
} else {
    $('#moneyDiv').attr('style', "display:none;");
}

//============================================================
$(function() {
            var mycalendarlistcount = $('#gclc').val();
            for (var i = 1; i <= mycalendarlistcount; i++) {
                var temp = $('#cal' + i).val();
                $('#day' + temp).parent().addClass('calendarCellMy');
            }

            $(".friend-list").on("click","#slistformsubmit",function(event) {
                var Array = [];

                $('input[name="slist"]:checked').each(function(i) {
                    Array.push($(this).prev().val());
                    console.log(Array);
                });
                console.log(Array);
                var postkey = $('#postkey').val()
                var data = {
                    "postkey": $('#postkey').val(),
                    "Array": Array
                };
                $.ajax({
                    type: "post",
                    url: "slistajax.net",
                    data: data,
                    dataType: "json",
                    cache: false,
                    success: function(data) {
                        $('.foremptys').empty();
                        $('.foremptyscount').empty();
                        $('.foremptyscount').html(data.modifymembercount);
                        output = "";
                        $(data.modifymember).each(
                            function(index, item) {
                                output += "<li><figure>";
                                output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                                output += "</figure><div class='friendz-meta'><div class='checkbox'>";
                                output += "<label><input type='hidden' value='" + item.userkey + "'>";
                                output += "<input type='checkbox' name='slist'><i class='check-box'></i>" + item.groupnickname;
                                output += "</label></div></div></li>";
                            })
                        $('.foremptys').append(output);
                    },
                    error: function() {
                        console.log('에러')
                    }
                }) // ajax
            })

            $(".friend-list").on("click","#slistformsubmit1",function(event) {
                var Array = [];

                $('input[name="slist"]:checked').each(function(i) {
                    Array.push($(this).prev().val());
                    console.log(Array);
                });
                console.log(Array);
                var postkey = $('#postkey').val()
                var data = {
                    "postkey": $('#postkey').val(),
                    "Array": Array
                };
                $.ajax({
                    type: "post",
                    url: "slistajax.net",
                    data: data,
                    dataType: "json",
                    cache: false,
                    success: function(data) {
                        $('.foremptys1').empty();
                        $('.foremptyscount1').empty();
                        $('.foremptyscount1').html(data.modifymembercount);
                        output = "";
                        $(data.modifymember).each(
                            function(index, item) {
                                output += "<li><figure>";
                                output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                                output += "</figure><div class='friendz-meta'><div class='checkbox'>";
                                output += "<label><input type='hidden' value='" + item.userkey + "'>";
                                output += "<input type='checkbox' name='slist'><i class='check-box'></i>" + item.groupnickname;
                                output += "</label></div></div></li>";
                            })
                        $('.foremptys1').append(output);
                    },
                    error: function() {
                        console.log('에러')
                    }
                }) // ajax

            })

            $(".friend-list").on("click","#mlistformsubmit",function(event) {
                var Array = [];

                $('input[name="mlist"]:checked').each(function(i) {
                    Array.push($(this).prev().val());
                    console.log(Array);
                });
                console.log(Array);
                var postkey = $('#postkey').val()
                var data = {
                    "postkey": $('#postkey').val(),
                    "Array": Array
                };
                $.ajax({
                    type: "post",
                    url: "mlistajax.net",
                    data: data,
                    dataType: "json",
                    cache: false,
                    success: function(data) {
                        $('.foremptym').empty();
                        $('.foremptymcount').empty();
                        $('.foremptymcount').html(data.modifymembercountm);
                        output = "";
                        $(data.modifymemberm).each(
                            function(index, item) {
                                output += "<li><figure>";
                                output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                                output += "</figure><div class='friendz-meta'><div class='checkbox'>";
                                output += "<label><input type='hidden' value='" + item.userkey + "'>";
                                output += "<input type='checkbox' name='mlist'><i class='check-box'></i>" + item.groupnickname;
                                output += "</label></div></div></li>";
                            })
                        $('.foremptym').append(output);
                    },
                    error: function() {
                        console.log('에러')
                    }
                }) // ajax
            })

            
            $(".friend-list").on("click","#stomlistformsubmit",function(event) {
                var Array = [];

                $('input[name="slist"]:checked').each(function(i) {
                    Array.push($(this).prev().val());
                    console.log(Array);
                });
                console.log(Array);
                var postkey = $('#postkey').val()
                var data = {
                    "postkey": $('#postkey').val(),
                    "Array": Array
                };
                $.ajax({
                    type: "post",
                    async: false,
                    url: "stomlistajax.net",
                    data: data,
                    dataType: "json",
                    cache: false,
                    success: function(data) {
                        $('.foremptys1').empty();
                        $('.foremptyscount1').empty();
                        $('.foremptyscount1').html(data.modifymembercount);
                        output = "";
                        $(data.modifymember).each(
                            function(index, item) {
                                output += "<li><figure>";
                                output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                                output += "</figure><div class='friendz-meta'><div class='checkbox'>";
                                output += "<label><input type='hidden' value='" + item.userkey + "'>";
                                output += "<input type='checkbox' name='slist'><i class='check-box'></i>" + item.groupnickname;
                                output += "</label></div></div></li>";
                            })
                        $('.foremptys1').append(output);
                    },
                    error: function() {
                        console.log('에러')
                    }
                }) // ajax
                mlistajaxlist()
            })

            
            $(".friend-list").on("click","#mtoslistformsubmit",function(event) {
                var Array = [];

                $('input[name="mlist"]:checked').each(function(i) {
                    Array.push($(this).prev().val());
                    console.log(Array);
                });
                console.log(Array);
                var postkey = $('#postkey').val()
                var data = {
                    "postkey": $('#postkey').val(),
                    "Array": Array
                };
                $.ajax({
                    type: "post",
                    async: false,
                    url: "mtoslistajax.net",
                    data: data,
                    dataType: "json",
                    cache: false,
                    success: function(data) {
                        $('.foremptym').empty();
                        $('.foremptymcount').empty();
                        $('.foremptymcount').html(data.modifymembercountm);
                        output = "";
                        $(data.modifymemberm).each(
                            function(index, item) {
                                output += "<li><figure>";
                                output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                                output += "</figure><div class='friendz-meta'><div class='checkbox'>";
                                output += "<label><input type='hidden' value='" + item.userkey + "'>";
                                output += "<input type='checkbox' name='mlist'><i class='check-box'></i>" + item.groupnickname;
                                output += "</label></div></div></li>";
                            })
                        $('.foremptym').append(output);
                    },
                    error: function() {
                        console.log('에러')
                    }
                }) // ajax
                slistajaxlist()
            })

            $("#addsubmit").click(function() {
                if ($("#posttitle").val() == "" || $("#cstartdate").val() == "" || $("#time").val() == "" || $("#minute").val() == "" || $("#maxperson").val() == "" || $("#location").val() == "" || $("#textarea").val() == "") {
                    alert("빈칸을 채워주세요");
                } else if ($("#moneyCheck").is(":checked") == true && $("#cmoney").val() == "") {
                    alert("빈칸을 채워주세요");
                } else {
                    var s = $("#thistf").val()
                    if (s == 'f') {
                        if ($("#time").val().length == 1) {
                            var t = $("#time").val();
                            $("#time").val("0" + t)
                        }
                        if ($("#minute").val().length == 1) {
                            var t = $("#minute").val();
                            $("#minute").val("0" + t)
                        }
                        ajaxUpdateSchedule();
                        var groupkey = $("#thisGroupKey").val();
                        location.href = "groupin_group_admin_scheduleList.net?groupkey=" + groupkey;
                    } else {
                        ajaxAddSchedule();
                        var postkey = $('#thispostkey').val();
                        saveMap(postkey);
                        var groupkey = $("#thisGroupKey").val();
                        location.href = "groupin_group_admin_scheduleList.net?groupkey=" + groupkey;
                    }
                }
            })

            $('input[id=cstartdate]').click(function() {
                var a = $(this).val();
                $('input[id=cstartdate]').keyup(function() {
                    alert("수정할 수 없는 칸입니다.");
                    $(this).val(a);
                });
            });

            $("#maxperson").keyup(function() {
                $(this).val($(this).val().replace(/[^0-9]/g, ""));
            });
            $("#time").keyup(function() {
                $(this).val($(this).val().replace(/[^0-9]/g, ""));
            });
            $("#minute").keyup(function() {
                $(this).val($(this).val().replace(/[^0-9]/g, ""));
            });

            $(".calendarDiv").on(
                'click',
                'td',
                function(event) {
                    if ($(this).text() != "" || $(this).text().length() > 2) {
                        $('td').removeClass('calendarCellSelected');
                        $(this).addClass('calendarCellSelected');
                        var date = "" + $('th[id=tbCalendarYM]').text() + " " +
                            $(this).text() + "일 " +
                            $(this).children().val() + "요일";
                        $('input[id=cstartdate]').val(date);
                    }
                })
            $("#moneyCheck").click(function() {
                if ($("#moneyCheck").is(":checked")) {
                    $('#moneyDiv').attr('style', "display:inline;");
                } else {
                    $('#moneyDiv').attr('style', "display:none;");
                }
            })

            $(".forLoginBtn").click(function() {
                location.href = "login";
            })

            $(".forLoginBtnx").click(function() {
                location.href = "login";
            })

            $("#calendar").on('click', '#prevcal', function(event) {
                var userkey = $('#UserKey').val();
                prevCalendar();
                var date = $('#tbCalendarYM').text();
                ajaxcallist(userkey, date);
                $('#shortschedule').empty();
                if (userkey == -1) {
                    $('#shortschedule').append('<li><span>로그인 해주세요</span></li>');
                } else {
                    $('#shortschedule').append('<li><span>날짜를 선택하세요</span></li>');
                }

            })

            $("#calendar").on('click', '#nextcal', function(event) {
                var userkey = $('#UserKey').val();
                nextCalendar();
                var date = $('#tbCalendarYM').text();
                ajaxcallist(userkey, date);
                $('#shortschedule').empty();
                if (userkey == -1) {
                    $('#shortschedule').append('<li><span>로그인 해주세요</span></li>');
                } else {
                    $('#shortschedule').append('<li><span>날짜를 선택하세요</span></li>');
                }
            })


            $(".nearby-contct").on('click', '.gmtljoinbtn', function(event) {
                var userkey = $('#UserKey').val();
                if (userkey != -1) {
                    var postkey = $(this).next().val();
                    var n = $(this).next().next().val();
                    var groupkey = $('#thisGroupKey').val();
                    alert(n);
                    ajaxJoinBtn(postkey, groupkey, userkey, n);
                    $(this).removeClass('gmtljoinbtn');
                    $(this).addClass('gmtlcancelbtn');
                    $(this).children().html('취소하기');
                } else {
                    alert("로그인 해주세요 ");
                }
            })

            $(".nearby-contct").on('click', '.gmtlcancelbtn', function(event) {
                var userkey = $('#UserKey').val();
                if (userkey != -1) {
                    var postkey = $(this).next().val();
                    var n = $(this).next().next().val();
                    var groupkey = $('#thisGroupKey').val();
                    ajaxJoinCancelBtn(postkey, groupkey, userkey, n);
                    $(this).removeClass('gmtlcancelbtn');
                    $(this).addClass('gmtljoinbtn');
                    $(this).children().html('참여하기');
                } else {
                    alert("로그인 해주세요 ");
                }
            })
            $(".calendarDiv").on('click', 'td', function(event) {
                if ($(this).text() != "" || $(this).text().length() > 2) {
                    $('td').removeClass('calendarCellSelected');
                    $(this).addClass('calendarCellSelected');
                    var userkey = $('#UserKey').val();
                    var date = $('#tbCalendarYM').text();
                    var day = $(this).text();
                    if ($(this).hasClass('calendarCellMy')) {
                        ajaxcal(userkey, date, day);
                    } else {
                        $('#shortschedule').empty();
                        if (userkey == -1) {
                            $('#shortschedule').append('<li><span>로그인 해주세요</span></li>');
                        } else {
                            $('#shortschedule').append('<li><span>일정이 없습니다</span></li>');
                        }
                    }
                }
            })

            //=======================================================
            $('input[type=file]:eq(0)').on('change', function() {
                alert("1");
                $('#groupMainImgForm').submit();
            });
            $('input[type=file]:eq(1)').on('change', function() {
                alert("1");
                $('#groupImgForm').submit();
            });


            //===== Search Filter =====//
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
                }); // ajax
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
                        $(".currentperson" + n).empty();
                        $(".currentperson" + n).html(data.currentperson);
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
                }); // ajax
            } // function ajax end
            function ajaxcallist(userkey, date) {
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
                                if (!$('#day' + item.startdate).parent().hasClass('calendarCellMy')) {
                                    $('#day' + item.startdate).parent().addClass('calendarCellMy');
                                }
                            })

                    },
                    error: function() {
                        console.log('에러')
                    }
                }); // ajax
            } // function ajax end
            function ajaxcal(userkey, date, day) {
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
                                output += "<li><span>" + item.posttitle + "</span>";
                                output += "<p>모임명: " + item.groupname + "<br>시간: " + item.startdate + "<br>장소:" + item.location + "</p></li>";
                            })
                        $('#shortschedule').append(output);
                    },
                    error: function() {
                        console.log('에러')
                    }
                }); // ajax
            } // function ajax end
            function ajaxUpdateSchedule() {
                var post = $('#addscheduleform').serialize();
                $.ajax({
                    type: "post",
                    async: false,
                    url: "updateSchedule.net",
                    data: post,
                    dataType: "json",
                    cache: false,
                    success: function(data) {
                        $('#thispostkey').val(data.postkey);
                    },
                    error: function() {
                        console.log('에러')
                    }
                }); // ajax
            } // function ajax end
            function slistajaxlist() {
                var postkey = $('#postkey').val();
                var data = "postkey=" + postkey;
                $.ajax({
                    type: "post",
                    url: "slistajaxlist.net",
                    data: data,
                    dataType: "json",
                    cache: false,
                    success: function(data) {
                        $('.foremptys1').empty();
                        $('.foremptyscount1').empty();
                        $('.foremptyscount1').html(data.modifymembercount);
                        output = "";
                        $(data.modifymember).each(
                            function(index, item) {
                                output += "<li><figure>";
                                output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                                output += "</figure><div class='friendz-meta'><div class='checkbox'>";
                                output += "<label><input type='hidden' value='" + item.userkey + "'>";
                                output += "<input type='checkbox' name='slist'><i class='check-box'></i>" + item.groupnickname;
                                output += "</label></div></div></li>";
                            })
                        $('.foremptys1').append(output);
                    },
                    error: function() {
                        console.log('에러')
                    }
                }) // ajax
            } // function ajax end
            function mlistajaxlist() {
            	var postkey = $('#postkey').val();
                var data = "postkey=" + postkey;
                $.ajax({
                	type: "post",
                    url: "mlistajaxlist.net",
                    data: data,
                    dataType: "json",
                    cache: false,
                    success: function(data) {
                        $('.foremptym').empty();
                        $('.foremptymcount').empty();
                        $('.foremptymcount').html(data.modifymembercountm);
                        output = "";
                        $(data.modifymemberm).each(
                            function(index, item) {
                                output += "<li><figure>";
                                output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
                                output += "</figure><div class='friendz-meta'><div class='checkbox'>";
                                output += "<label><input type='hidden' value='" + item.userkey + "'>";
                                output += "<input type='checkbox' name='mlist'><i class='check-box'></i>" + item.groupnickname;
                                output += "</label></div></div></li>";
                            })
                        $('.foremptym').append(output);
                    },
                    error: function() {
                        console.log('에러')
                    }
                }); // ajax
            } // function ajax end
})
</script>

