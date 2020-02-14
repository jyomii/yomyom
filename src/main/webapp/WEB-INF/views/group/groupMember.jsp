<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>      
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>  
  
<!-- 헤더 -->   
<jsp:include page = "../mainpage/header.jsp"/>    
<!-- 헤더 끝 -->

<style>
.nearby-contct {margin-top : 0 !important}
.nearby-contct > li {margin-bottom : 5px !important; padding : 10px !important;}
.nav.nav-tabs {margin-bottom : 22px;}

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
	width: 80%;
	margin: 0 auto;
}

.calendarBtn {
	cursor: pointer;
}

.calendarCell {
	cursor: pointer;
}

.calendarDiv td {
	border-radius: 13px;
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
	box-sizing: border-box;
    margin: 0 auto;
    display: block;
    margin-bottom: 20px;
    width: 100%;
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

.searchMem {
	background: #f5f5f5 none repeat scroll 0 0;
    border: 1px solid #dadede;
    border-radius: 30px;
    color: #7b7b7b;
    font-size: 15px;
    padding: 7px 20px;
    box-sizing: border-box;
    margin: 0 auto;
    display: block;
    margin-bottom: 20px;
    width: 100%;
}

a.add-butn {
	top : 0px;
}
</style>
<!-- 그룹 페이지 상단 -->
<jsp:include page="group_header.jsp"/>
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
							<div class="central-meta">
								<div class="frnds">
									<ul class="nav nav-tabs">
										 <li class="nav-item">
										 	<a id = "m1" class="active" href="#memlist" data-toggle="tab">회원 목록</a>
										 	<span>${membercount}</span>
										 </li>
										 <li class="nav-item">
										 	<a id = "m2" class="" href="#memrequest" data-toggle="tab">가입 요청</a>
										 	<span>${yetMembercount}</span>
										 </li>
									</ul>
										
									<!-- 검색창 -->
									<form class = "searchMemForm" action = "#">
									</form>
									
									<!-- 회원의 상세 정보 페이지로 이동하기 위한 폼 -->
									<form name = "detail">
										<input type = "hidden" name = "groupkey" value = "">
										<input type = "hidden" name = "userkey" value = "">
									</form>
									<!-- 회원의 상세 정보 페이지로 이동하기 위한 폼 -->
										
									<!-- ajax 쓸 때 이용할 데이터 -->
									<input type = "hidden" name = "getGroupKey" value = "${groupkey}">
										
									<div class="tab-content">
										<!-- 일반회원 리스트 -->
										<div class = "tab-pane active fade show" id = "memlist">
											<ul class="nearby-contct">
											<c:if test = "${membercount != 0}">
											<c:forEach var = "m" items = "${mem}">
												<li>
													<div class="nearly-pepls">
														<figure>
															<!-- 모임 회원 페이지로 이동 -->
															<a href = 'javascript:memDetail(${m.userKey},${m.groupKey})' title="">
																<!-- 회원 프사가 없을 때 -->
																<c:if test = "${m.profileFile == null}">
																	<img src="resources/images/default.png" class = "group-img" alt = ""/>
																</c:if>
																<c:if test = "${m.profileFile != null}">
																	<img src="<spring:url value='/image${m.profileFile}'/>" class = "group-img" alt = ""/>
																</c:if>
															</a>
														</figure>
														<div class="pepl-info">
															<h4><a href="javascript:memDetail(${m.userKey},${m.groupKey})" title="${m.groupNickname}">${m.groupNickname}</a></h4>
															<a href="javascript:expelMem(${m.userKey},${m.groupKey})" title="강제 탈퇴" class="add-butn more-action" data-ripple="">강제 탈퇴</a>
															<a href="javascript:downgrade(${m.userKey},${m.groupKey})" title="회원 강등" class="add-butn" data-ripple="">회원 강등</a>
														</div>
													</div>
												</li>
											</c:forEach>
											</c:if>
											<c:if test = "${membercount == 0}">
												<li>
													일반 회원이 존재하지 않습니다.
												</li>
											</c:if>
											</ul>	
										</div>
										<!-- 일반회원 리스트 -->
										
										<!-- 요청회원 리스트 -->
										<div class = "tab-pane fade" id = "memrequest">
											<ul class="nearby-contct">
												
											</ul>	
										</div>
										<!-- 요청회원 리스트 -->
									</div>
								</div>
							</div>	
						</div>
						<!-- 그룹 페이지 위젯 중간 -->

						<!-- 그룹 페이지 위젯 오른쪽 -->
						<div class="col-lg-3">
							<aside class="sidebar static">
								<jsp:include page="group_rightWidget.jsp" />
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
<script>
/*** 회원 리스트 검색 ***/
(function($) {
    jQuery.expr[':'].Contains = function(a, i, m) {
        return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase()) >= 0;
    };

    function searchMem(searchMemForm, memlist) {
        var form = $("<form>").attr({
                "class": "searchMemForm",
                "action": "#"
            }),
            input = $("<input>").attr({
                "class": "searchMem",
                "type": "text",
                "placeholder": "조회할 회원 닉네임을 입력하세요."
            });
        $(form).append(input).appendTo(searchMemForm);

        $(input).change(
            function() {
                var filter = $(this).val();
                if (filter) {
                    $(memlist).find( "li:not(:Contains(" + filter + "))").slideUp();
                    $(memlist).find("li:Contains(" + filter + ")").slideDown();
                } else {
                    $(memlist).find("li").slideDown();
                }
                return false;
            }).keyup(function() {
            $(this).change();
        });
    }

    $(function() {
        searchMem($(".searchMemForm"), $(".nearby-contct"));
    });
}(jQuery));
</script>
<script>
/*** 가입 승인 요청 거절 ***/
function rejectJoin(userkey, groupkey) {
	var sudo = confirm('정말 요청 거절하시겠습니까?\n요청 거절 시 회원의 그룹 가입은 무효처리 됩니다.');
	if (sudo) {
		$.ajax({
			type : 'POST',
			url : 'rejectJoin',
			data : {userkey : userkey, groupkey : groupkey},
			dataType: "json",
            cache: false,
			success : function(data) {
				
				if (data.result == 1) {
					alert('요청 거절이 완료되었습니다.');
					
					doc = '';
					// 가입 요청한(승인 대기 중) 회원이 있으면
					if (data.yetMembercount != 0) {
						$(data.mem).each(function(index, item){
							doc += '<li>';
							doc += '	<div class="nearly-pepls">';
							doc += '		<figure>';
							doc += '			<a href = "javascript:memDetail(' + item.userKey + ',' + item.groupKey + ')" title="">';
							if (item.profileFile == null) {
								doc += '<img src="resources/images/default.png" class = "group-img" alt = ""/>';
							} else {
								doc += "<img src= \"<spring:url value='/image" + item.profileFile + "'/>\" class = 'group-img' alt = ''/>";
							}
							doc += '		</figure>';
							doc += '		<div class="pepl-info">';
							doc += '			<h4><a href="javascript:memDetail(' + item.userKey + ',' + item.groupKey + ')" title = "' + item.groupNickname + '">' + item.groupNickname + '</a></h4>';
							doc += '			<a href="javascript:rejectJoin(' + item.userKey + ',' + item.groupKey + ')" title="요청 거절" class="add-butn more-action" data-ripple="">요청 거절</a>';
							doc += '			<a href="javascript:confirmJoin(' + item.userKey + ',' + item.groupKey + ')" title="가입 승인" class="add-butn" data-ripple="">가입 승인</a>';
							doc += '		</div>';
							doc += '	</div>';
							doc += '</li>';
						});
					} else {
						doc += '	<li>요청 회원이 존재하지 않습니다.</li>';			
					}
					
					$('#memrequest .nearby-contct').html(doc);
					$('.nav.nav-tabs li span').eq(1).text(data.yetMembercount); // 요청 회원 수 변경 
				} else {
					alert('요청 거절에 실패했습니다. 다시 시도해주세요.');
				}
			},
			error : function(request, status, error) {
				console.log("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error);
			}
		}); // ajax end
	} else {
		alert('요청 거절을 취소했습니다.');
		return false;
	}
}; // function rejectJoin end

/*** 회원 가입 요청 승인 ***/
function confirmJoin(userkey, groupkey) {
	sudo = confirm('가입 요청을 승인하시겠습니까?');
	if (sudo) {
		$.ajax({
			type : 'POST',
			url : 'confirmJoin',
			data : {userkey : userkey, groupkey : groupkey},
			dataType: "json",
            cache: false,
			success : function(data) {
				if (data.result == 1) {
					alert('가입 승인이 완료되었습니다.');
					
					doc = '';
					// 가입 요청한(승인 대기 중) 회원이 있으면
					if (data.yetMembercount != 0) {
						$(data.mem).each(function(index, item){
							doc += '<li>';
							doc += '	<div class="nearly-pepls">';
							doc += '		<figure>';
							doc += '			<a href = "javascript:memDetail(' + item.userKey + ',' + item.groupKey + ')" title="">';
							if (item.profileFile == null) {
								doc += '<img src="resources/images/default.png" class = "group-img" alt = ""/>';
							} else {
								doc += "<img src= \"<spring:url value='/image" + item.profileFile + "'/>\" class = 'group-img' alt = ''/>";
							}
							doc += '		</figure>';
							doc += '		<div class="pepl-info">';
							doc += '			<h4><a href="javascript:memDetail(' + item.userKey + ',' + item.groupKey + ')" title = "' + item.groupNickname + '">' + item.groupNickname + '</a></h4>';
							doc += '			<a href="javascript:rejectJoin(' + item.userKey + ',' + item.groupKey + ')" title="요청 거절" class="add-butn more-action" data-ripple="">요청 거절</a>';
							doc += '			<a href="javascript:confirmJoin(' + item.userKey + ',' + item.groupKey + ')" title="가입 승인" class="add-butn" data-ripple="">가입 승인</a>';
							doc += '		</div>';
							doc += '	</div>';
							doc += '</li>';
						});
					} else {
						doc += '	<li>요청 회원이 존재하지 않습니다.</li>';			
					}
					
					$('#memrequest .nearby-contct').html(doc);
					$('.nav.nav-tabs li span').eq(0).text(data.membercount); 	// 일반 회원 수 변경 
					$('.nav.nav-tabs li span').eq(1).text(data.yetMembercount); // 요청 회원 수 변경 
				} else {
					alert('가입 승인에 실패했습니다. 다시 시도해주세요.');
				}
			},
			error : function(request, status, error) {
				console.log("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error);
			}
		}); // ajax end
	} else {
		alert('가입 승인 취소되었습니다.');
		return false;
	}
} // function confirmJoin end

/*** 회원 강등 ***/
function downgrade(userkey, groupkey) {
	sudo = confirm('해당 회원을 강등처리 하겠습니까?');
	if (sudo) {
		$.ajax({
			type : 'POST',
			url : 'downgrade',
			data : {userkey : userkey, groupkey : groupkey},
			dataType: "json",
            cache: false,
			success : function(data) {
				if (data.result == 1) {
					alert('강등 처리가 완료되었습니다.');
					
					doc = '';

					// 가입된 회원이 있으면
					if (data.membercount != 0) {
						$(data.mem).each(function(index, item){
							doc += '	<li>';
							doc += '		<div class="nearly-pepls">';
							doc += '			<figure>';
							doc += '				<a href = "javascript:memDetail(' + item.userKey + ',' + item.groupKey + ')" title="">';
							if (item.profileFile == null) {
								doc += '			<img src="resources/images/default.png" class = "group-img" alt = ""/>';
							} else {
								doc += "			<img src= \"<spring:url value='/image" + item.profileFile + "'/>\" class = 'group-img' alt = ''/>";
							}
							doc += '			</figure>';
							doc += '			<div class="pepl-info">';
							doc += '				<h4><a href="javascript:memDetail(' + item.userKey + ',' + item.groupKey + ')" title = "' + item.groupNickname + '">' + item.groupNickname + '</a></h4>';
							doc += '				<a href="javascript:expelMem(' + item.userKey + ',' + item.groupKey + ')" title="강제 탈퇴" class="add-butn more-action" data-ripple="">강제 탈퇴</a>';
							doc += '				<a href="javascript:downgrade(' + item.userKey + ',' + item.groupKey +')" title="회원 강등" class="add-butn" data-ripple="">회원 강등</a>';
							doc += '			</div>';
							doc += '		</div>';
							doc += '	</li>';
						});
					} else {
						doc += '	<li>일반 회원이 존재하지 않습니다.</li>';			
					}
					
					$('#memlist .nearby-contct').html(doc);
					$('.nav.nav-tabs li span').eq(0).text(data.membercount); 	// 일반 회원 수 변경 
					$('.nav.nav-tabs li span').eq(1).text(data.yetMembercount); // 요청 회원 수 변경 
				} else {
					alert('강등 처리에 실패했습니다. 다시 시도해주세요.');
				}
			},
			error : function(request, status, error) {
				console.log("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error);
			}
		}); // ajax end
	} else {
		alert('강등 처리 취소되었습니다.');
		return false;
	}
}; // function downgrade end

/*** 회원 상세정보 ***/
function memDetail(userkey,groupkey) {
	var f = document.detail;
	f.userkey.value = userkey;
	f.groupkey.value = groupkey;
	f.action = "G_mem_detail.net";
	f.method = "post";
	f.submit();
};

	$(function(){
		
		var url = '';	// 이동할 컨트롤러 주소
		var id = 0;		// 선택된 메뉴의 값을 구하기 위해 id로 구분
		var menu = 0;	// 선택된 메뉴의 값 (회원 목록 : 0, 가입 요청 : 1)
		var doc = '';
	
		/*** 메뉴에 따른 회원 리스트 가져오기 ***/
		function getMember(data, url) {
			console.log('[ajax] data = ' + data + ' / url = ' + url);
			$.ajax({
				type : 'POST',
				url : url,
				data : data,
				dataType: "json",
	            cache: false,
				success : function(data) {
					console.log(data);
					switch(data.menu) {
					// '회원 목록'
					case 0:
						getGroupMem(data);
						break;
					// '가입 승인 대기 목록'	
					case 1:
						getWaitMem(data);
						break;
					}
				},
				error : function(request, status, error) {
					console.log("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error);
				}
			});
		};
	
		/*** 일반 모임 회원 리스트 가져오기 ***/
		function getGroupMem (data) {
			doc = '';
			
			// 가입된 회원이 있으면
			if (data.membercount != 0) {
				$(data.list).each(function(index, item){
					doc += '	<li>';
					doc += '		<div class="nearly-pepls">';
					doc += '			<figure>';
					doc += '				<a href = "javascript:memDetail(' + item.userKey + ',' + item.groupKey + ')" title="">';
					if (item.profileFile == null) {
						doc += '			<img src="resources/images/default.png" class = "group-img" alt = ""/>';
					} else {
						doc += "			<img src= \"<spring:url value='/image" + item.profileFile + "'/>\" class = 'group-img' alt = ''/>";
					}
					doc += '			</figure>';
					doc += '			<div class="pepl-info">';
					doc += '				<h4><a href="javascript:memDetail(' + item.userKey + ',' + item.groupKey + ')" title = "' + item.groupNickname + '">' + item.groupNickname + '</a></h4>';
					doc += '				<a href="javascript:expelMem(' + item.userKey + ',' + item.groupKey + ')" title="강제 탈퇴" class="add-butn more-action" data-ripple="">강제 탈퇴</a>';
					doc += '				<a href="javascript:downgrade(' + item.userKey + ',' + item.groupKey +')" title="회원 강등" class="add-butn" data-ripple="">회원 강등</a>';
					doc += '			</div>';
					doc += '		</div>';
					doc += '	</li>';
				});
			} else {
				doc += '	<li>일반 회원이 존재하지 않습니다.</li>';			
			}
			$('#memlist .nearby-contct').html(doc);
		} // getGroupMem end
	
		/*** 가입 승인 요청 대기 중인 회원 리스트 가져오기 ***/
		function getWaitMem(data) {
			doc = '';
			// 가입 요청한(승인 대기 중) 회원이 있으면
			if (data.yetMembercount != 0) {
				$(data.list).each(function(index, item){
					doc += '<li>';
					doc += '	<div class="nearly-pepls">';
					doc += '		<figure>';
					doc += '			<a href = "javascript:memDetail(' + item.userKey + ',' + item.groupKey + ')" title="">';
					if (item.profileFile == null) {
						doc += '<img src="resources/images/default.png" class = "group-img" alt = ""/>';
					} else {
						doc += "<img src= \"<spring:url value='/image" + item.profileFile + "'/>\" class = 'group-img' alt = ''/>";
					}
					doc += '		</figure>';
					doc += '		<div class="pepl-info">';
					doc += '			<h4><a href="javascript:memDetail(' + item.userKey + ',' + item.groupKey + ')" title = "' + item.groupNickname + '">' + item.groupNickname + '</a></h4>';
					doc += '			<a href="javascript:rejectJoin(' + item.userKey + ',' + item.groupKey + ')" title="요청 거절" class="add-butn more-action" data-ripple="">요청 거절</a>';
					doc += '			<a href="javascript:confirmJoin(' + item.userKey + ',' + item.groupKey + ')" title="가입 승인" class="add-butn" data-ripple="">가입 승인</a>';
					doc += '		</div>';
					doc += '	</div>';
					doc += '</li>';
				});
			} else {
				doc += '	<li>요청 회원이 존재하지 않습니다.</li>';			
			}
				$('#memrequest .nearby-contct').html(doc);
		} // getWaitMem end
		
		/*** '회원 목록' 메뉴나 '가입 요청' 메뉴 클릭 시 동작 ***/
		$(document).on('click', '.nav-item a', function(){
			event.preventDefault();
			
			id = $(this).attr('id');	// 어떤 메뉴 선택했는지 판단
			
			if (id == 'm1') { 
				/* 회원 목록 */
				menu = 0;
				$('#m1').addClass('active');
				$('#m2').removeClass('active');
			} else {
				/* 가입 요청 */
				menu = 1;
				$('#m2').addClass('active');
				$('#m1').removeClass('active');
			}
			var data = 'groupKey=' + $('input[name=getGroupKey]').val() + '&menu=' + menu;
			
			switch(menu) {
			case 0:
				// 회원 목록
				url = 'getGroupMem';
				getMember(data, url);
				break;
			case 1:
				// 가입 요청	
				url = 'getWaitMem';
				getMember(data, url);
				break;
			}
		});
	}); // document ready end
		
	// ## 회원 강제 탈퇴
	function expelMem(userKey, groupKey) {
		doc = '';
		data = "userKey=" + userKey + "&groupKey=" + groupKey;
		
		$.ajax({
			type : 'POST',
			url : 'expelMem',
			data : data,
			cache : false,
			success : function(data) {
				if (data.result == 1)
					alert('강제 탈퇴 완료되었습니다.');
				else (data.result == -1)
					alert('강제 탈퇴하는 데 실패했습니다.');
				
				$('nearly-pepls').empty();
				
				// 가입된 회원이 있으면
				if (data.membercount != 0) {
					$(data.mem).each(function(index, item){
						doc += '<li>';
						doc += '	<div class="nearly-pepls">';
						doc += '		<figure>';
						doc += '			<a href = "javascript:memDetail(' + item.userKey + ',' + item.groupKey + ')" title="">';
						if (item.profileFile == null) {
							doc += '<img src="resources/images/default.png" class = "group-img" alt = ""/>';
						} else {
							doc += "<img src= \"<spring:url value='/image" + item.profileFile + "'/>\" class = 'group-img' alt = ''/>";
						}
						doc += '		</figure>';
						doc += '		<div class="pepl-info">';
						doc += '			<h4><a href="javascript:memDetail(' + item.userKey + ',' + item.groupKey + ')" title = "' + item.groupNickname + '">' + item.groupNickname + '</a></h4>';
						doc += '			<a href="javascript:expelMem(' + item.userKey + ',' + item.groupKey + ')" title="강제 탈퇴" class="add-butn more-action" data-ripple="">강제 탈퇴</a>';
						doc += '			<a href="#" title="회원 강등" class="add-butn" data-ripple="">회원 강등</a>';
						doc += '		</div>';
						doc += '	</div>';
						doc += '</li>';
					});
					$('nearly-pepls').append(doc);
					$('.nav.nav-tabs li span').eq(0).text(data.membercount);
				}
			},
			error : function(request, status, error) {
				console.log("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error);
			}
		});
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