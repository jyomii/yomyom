<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- 헤더 -->
<jsp:include page="mainpage/header.jsp" />
<!-- 헤더 끝 -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

<style>
.user-active {
	list-style-type: none;
}

.user-active li {
	display: inline-block;
	margin: 0 10px;
}

.user-active {
	margin: 0;
	padding-inline-start: 0px !important;
}

.user-active i {
	padding-right: 8px;
}

.group-img {
	width: 45px !important;
	height: 45px !important;
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
	color: #088dcd !important;
}

.user-active li {
	color: #545454;
}

/* style.css에서 테이블에 대한 스타일 원본임 */
/*
		.forum-list table tbody tr td {
			padding : 20px;
			text-align : center;
			width : 100%;
		}
		*/
.forum-list table tbody tr td {
	padding: 20px;
}

.forum-list table tbody tr td:first-child {
	width: 67%;
}

.forum-list table tbody tr td:nth-child(2) {
	text-align: center;
}

.forum-list table tbody tr td:last-child {
	text-align: center;
	width: 23%;
}

.center-block {
	display: flex;
	justify-content: center; /* 가운데 정렬 */
}

li .current {
	background: #faf7f7;
}

.page-link {
	color: #088dcd;
}

.nearby-contct {margin-top : 0 !important}
.nearby-contct > li {margin-bottom : 5px !important; padding : 10px !important;}
.nav.nav-tabs {margin-bottom : 22px;}

.forum-list table {
	background: #fff none repeat scroll 0 0;
    border: 1px solid #eaeaea;
}

.forum-list table th {
	border-bottom : 1px solid #eaeaea;
	border-top : 1px solid #eaeaea;
}

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
</style>
<!-- 그룹 페이지 상단 -->
<jsp:include page="group/group_header.jsp"/>
<!-- 그룹 페이지 상단 -->

<div class="theme-layout">
	<section>
		<div class="gap gray-bg">
			<div>
				<div class="row">
				
					<!-- 그룹 페이지 위젯 왼쪽 -->
					<div class="col-lg-3">
						<aside class="sidebar static">
							<!-- 그룹 게시판 위젯 -->
							<jsp:include page="group/group_leftWidget.jsp" />
						</aside>
					</div>
					<!-- 그룹 페이지 위젯 왼쪽  -->
				
					<!-- 가운데 위젯 -->
					<div class="col-lg-6">
						<div class="forum-warper">
							<div class="post-filter-sec">
								<ul class="user-active">
									<li class = "selected-menu"><a href="/"><i class="fas fa-users"></i>가입한 모임</a></li>
									<li><a href="/"><i class="fas fa-user-edit"></i>작성한 글</a></li>
									<li><a href="/"><i class="fas fa-comments"></i>작성한 댓글</a></li>
									<c:if test = "${loginuser == userkey || loginuser == masterkey}">
										<li><a href="/"><i class="far fa-address-card"></i>작성한 가입양식</a></li>
									</c:if>
								</ul>
							</div>
						</div>
						<form name="myForm">
							<input type="hidden" id="userkey" name="userkey" value="${userkey}"> 
							<input type="hidden" id="groupkey" name="groupkey" value="${groupkey}">
							<input type="hidden" id="postkey" name="postkey" value="${postkey}">
							<input type="hidden" id="status" name="status" value="${status}">
							<input type="hidden" id="page" name="page" value="${page}">
						</form>
						<div class="forum-list">
							<table class="table table-responsive" id = "detailTable">
							
								<!-- 가입한 모임 리스트 -->
								<c:if test="${status == 0}">
									<thead>
										<tr>
											<th scope="col">Name</th>
											<th scope="col">Member</th>
											<th scope="col">Date</th>
										</tr>
									</thead>
									<tbody>
										<!-- 가입한 모임이 있는 경우 -->
										<c:if test="${listcount > 0}">
											<c:forEach var="b" items="${list}">
												<tr>
													<td>
														<img src="<spring:url value='/image${b.groupDFile}'/>" class="group-img" alt="" />
														<a href="group_main.net?groupkey=${b.groupKey}" title="${b.groupName}">${b.groupName}</a>
													</td>
													<td>${b.memberCount}명</td>
													<td>${b.groupDate}</td>
												</tr>
											</c:forEach>
										</c:if>
										<!-- 가입한 모임이 없는 경우 -->
										<c:if test="${listcount == 0}">
											<tr>
												<td colspan="3">가입한 모임이 없습니다.</td>
											</tr>
										</c:if>
									</tbody>
								</c:if>
								<!-- 가입한 모임 리스트 -->
								
								<!-- 작성한 글 리스트 -->
								<c:if test="${status == 1}">
									<thead>
										<tr>
											<th scope="col">Subject</th>
											<th scope="col">ViewCount</th>
											<th scope="col">Date</th>
										</tr>
									</thead>
									<tbody>
										<!-- 작성글이 있는 경우 -->
										<c:if test="${listcount > 0}">
											<c:forEach var="b" items="${list}">
												<tr>
													<td><a href="javascript:board(${b.postKey},${b.groupKey})" title="${b.postTitle}">${b.postTitle}</a></td>
													<td>${b.postReadcount}</td>
													<td>${b.postDate}</td>
												</tr>
											</c:forEach>
										</c:if>
										<!-- 작성글이 없는 경우 -->
										<c:if test="${listcount == 0}">
											<tr>
												<td colspan="3">작성한 글이 없습니다.</td>
											</tr>
										</c:if>
									</tbody>
								</c:if>
								<!-- 작성한 글 리스트 -->

								<!-- 작성한 댓글 리스트 -->
								<c:if test="${status == 2}">
									<thead>
										<tr>
											<th scope="col">Comment</th>
											<th scope="col">ViewCount</th>
											<th scope="col">Date</th>
										</tr>
									</thead>
									<tbody>
										<!-- 작성한 댓글이 있는 경우 -->
										<c:if test="${listcount > 0}">
											<c:forEach var="b" items="${list}">
												<tr>
													<td>
														<div class="comment-info">
															<span>
																<a href="javascript:board(${b.postKey},${b.groupKey})" title="${b.commentContent}">${b.commentContent}</a>
															</span>
														</div>
														<div class="comment-subject">
															<span>
																<a href="javascript:board(${b.postKey},${b.groupKey})" title="${b.postTitle}">${b.postTitle}</a>
															</span> 
															<span class="comment-num">[${b.replyCount}]</span>
														</div>
													</td>
													<td>${b.postReadcount}</td>
													<td>${b.commentDate}</td>
												</tr>
											</c:forEach>
										</c:if>
										<!-- 작성한 댓글이 없는 경우 -->
										<c:if test="${listcount == 0}">
											<tr>
												<td colspan="3">작성한 댓글이 없습니다.</td>
											</tr>
										</c:if>
									</tbody>
								</c:if>
								<!-- 작성한 댓글 리스트 -->
							</table>
						</div>
						
						<c:if test="${listcount > 0}">
							<div class="center-block">
								<div class="row">
									<div class="col">
										<ul class="pagination">
											<!-- 1페이지 -->
											<c:if test="${page <= 1}">
												<li class="page-item"><a class="page-link current" href="#">«&nbsp;</a></li>
											</c:if>
											<!-- 2페이지부터 -->
											<c:if test="${page > 1}">
												<li class="page-item"><a class="page-link" href="javascript:go(${page-1})">«&nbsp;</a></li>
											</c:if>
											
											<c:forEach var="p" begin="${startpage}" end="${endpage}">
												<c:if test="${p == page}">
													<li class="page-item"><a href="#" class="page-link current">${p}</a></li>
												</c:if>
												<c:if test="${p != page}">
													<li class="page-item"><a href="javascript:go(${p})" class="page-link">${p}</a></li>
												</c:if>
											</c:forEach>
											
											<c:if test="${page >= maxpage}">
												<li class="page-item"><a class="page-link current" href="#">&nbsp;»</a></li>
											</c:if>
											<c:if test="${page < maxpage}">
												<li class="page-item"><a class="page-link" href="javascript:go(${page+1})">&nbsp;»</a></li>
											</c:if>
										</ul>
									</div>
								</div>
							</div>
						</c:if>
					</div>
					<!-- 가운데 위젯 끝 -->

					<!-- 그룹 페이지 위젯 오른쪽 -->
					<div class="col-lg-3">
						<aside class="sidebar static">
							<jsp:include page="group/group_rightWidget.jsp" />
						</aside>
					</div>
					<!-- 그룹 페이지 위젯 오른쪽 -->
				</div>
			</div>
		</div>
	</section>
</div>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
//가입한 모임 페이지로 이동
function goGroup(groupkey) {
	var f = document.myForm;		// 폼 name
	f.groupkey.value = groupkey;	// input 태그 중 name이 groupkey인 값에 대해서 groupkey를 넘긴다.
	f.action = "groupmain.net";		// 이동할 페이지
	f.method = "post";				// POST 방식으로 데이터 전송
	f.submit();						// 폼 전송
};

// 게시글 페이지로 이동
function board(postkey, groupkey) {
	var f = document.myForm;		// 폼 name
	f.groupkey.value = groupkey;	// input 태그 중 name이 groupkey인 값에 대해서 groupkey를 넘긴다.
	f.postkey.value = postkey;		// input 태그 중 name이 postkey인 값에 대해서 postkey를 넘긴다.
	f.action = "detailBoard.net";	// 이동할 페이지
	f.method = "post";				// POST 방식으로 데이터 전송
	f.submit();						// 폼 전송
}

function go(page) {
	var data = "status=" + $('#status').val() + "&page=" + page + "&userkey=" + $('#userkey').val() + "&groupkey=" + $('#groupkey').val();
	viewList(data);
}

function setPaging(href, digit) {
	doc += '<li class = page-item>';
	gray = '';
	if (href == '') {
		gray = "gray";
	}
	anchor = "<a class = 'page-link " + gray + "'" + href + ">" + digit + "</a></li>";
	doc += anchor;
}

// 메뉴 클릭할 때마다 ajax로 메뉴에 해당하는 데이터 불러오기 
function viewList(call) {
	doc = "";
	$.ajax({
		type : "POST",
		url : "G_mem_detail_Ajax",
		data : call,
		dataType : 'json',
		cache : false,
		success : function(data) {
			$('.col-lg-6>.forum-list').html('');
			switch (data.status) {
				case 0:
					signedGroup(data);
					break;
				case 1:
					wroteTitle(data);
					break;
				case 2:
					wroteComment(data);
					break;
				case 3:
					getAnswer(data);
					break;
			}
		},
		error : function(request, status, error) {
			console.log("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error);
		}
	}); // ajax end
}; // function go end

/* ##### 가입한 모임 ##### */
function signedGroup (data) {
	console.log(data.list);
	doc += '<table class="table table-responsive" id = "detailTable">';
	doc += '<thead>';
	doc += '	<tr>';
	doc += '		<th scope = "col">Name</th>';
	doc += '		<th scope = "col">Member</th>';
	doc += '		<th scope = "col">Date</th>';
	doc += '	</tr>';
	doc += '</thead>';
	doc += '<tbody>';
	if (data.listcount > 0) {
		$(data.list).each(function(index, item) {
			doc += '	<tr>';
			doc += '		<td>';
			doc += "			<img src= \"<spring:url value='/image" + item.groupDFile + "'/>\" class = 'group-img' alt = ''/>";
			doc += '			<a href = "group_main.net?groupkey=' + item.groupKey + '" title = "">' + item.groupName + '</a>';
			doc += '		</td>';
			doc += '		<td>';
			doc += 				item.memberCount + '명';
			doc += '		</td>';
			doc += '		<td>';
			doc += 				item.groupDate;
			doc += '		</td>';
			doc += '	</tr>';
		}); 
		
		doc += '</tbody>';
		doc += '</table>';
		$('.col-lg-6>.forum-list').html(doc);
		$('.pagination').html('');
		
		doc = "";
		digit = '«&nbsp;';
		href = "";
		if (data.page > 1) {
			href = 'href=javascript:go(' + (data.page - 1) + ')';
		}
		setPaging(href, digit);
		
		for (var i = data.startpage; i <= data.endpage; i++) {
			digit = i;
			href = "";
			if (i != data.page) {
				href = 'href=javascript:go(' + i + ')';
			}
			setPaging(href, digit);
		}
		
		digit = '»&nbsp;';
		href = "";
		if (data.page < data.maxpage) {
			href = 'href=javascript:go(' + (data.page + 1) + ')';
		}
		
		setPaging(href, digit);
		
		$('.pagination').append(doc);
		} else {
			doc += '<tr><td colspan = 3>작성글이 존재하지 않습니다.</td></tr>'
			doc += '</tbody>';
			doc += '</table>';
			$('.col-lg-6>.forum-list').html(doc);
		}
} // signedGroup end

/* ##### 작성한 글 ##### */
function wroteTitle(data) {
	console.log(data);
	doc += '<table class="table table-responsive" id = "detailTable">';
	doc += '<thead>';
	doc += '	<tr>';
	doc += '		<th scope = "col">Subject</th>';
	doc += '		<th scope = "col">ViewCount</th>';
	doc += '		<th scope = "col">Date</th>';
	doc += '	</tr>';
	doc += '</thead>';
	doc += '<tbody>';
	if (data.listcount > 0) {
		var num = data.listcount - (data.page - 1) * data.limit;
		$(data.list).each(function(index, item){
			doc += '	<tr>';
			doc += '		<td>';			
			doc += '			<a href = "javascript:board(' + item.postKey + ',' + item.groupKey + ')" title = "">' + item.postTitle + '</a>';
			doc += '		</td>';
			doc += '		<td>';
			doc += 				item.postReadcount;
			doc += '		</td>';
			doc += '		<td>';
			doc += 				item.postDate;
			doc += '		</td>';
			doc += '	</tr>';
		});	// each end
		doc += '</tbody>';
		doc += '</table>';
		$('.col-lg-6>.forum-list').html(doc);
		$('.pagination').html('');
		
		doc = "";
		digit = '«&nbsp;';
		href = "";
		if (data.page > 1) {
			href = 'href=javascript:go(' + (data.page - 1) + ')';
		}
		setPaging(href, digit);

		for (var i = data.startpage; i <= data.endpage; i++) {
			digit = i;
			href = "";
			if (i != data.page) {
				href = 'href=javascript:go(' + i + ')';
			}
			setPaging(href, digit);
		}

		digit = '»&nbsp;';
		href = "";
		if (data.page < data.maxpage) {
			href = 'href=javascript:go(' + (data.page + 1) + ')';
		}

		setPaging(href, digit);

		$('.pagination').append(doc);
	} else {
		doc += '<tr><td colspan = 3>작성글이 존재하지 않습니다.</td></tr>'
		doc += '</tbody>';
		doc += '</table>';
		$('.col-lg-6>.forum-list').html(doc);
	}
} // wroteTitle end

/* ##### 작성한 댓글 ##### */
function wroteComment(data) {
	console.log(data);
	doc += '<table class="table table-responsive" id = "detailTable">';
	doc += '<thead>';
	doc += '	<tr>';
	doc += '		<th scope = "col">Comment</th>';
	doc += '		<th scope = "col">ViewCount</th>';
	doc += '		<th scope = "col">Date</th>';
	doc += '	</tr>';
	doc += '</thead>';
	doc += '<tbody>';
	if (data.listcount > 0) {
		$(data.list).each(function(index, item){
			doc += '	<tr>';
			doc += '		<td>';
			doc += '			<div class = "comment-info">';
			doc += '				<div class = "comment-content">';
			doc += '					<span>';
			doc += '						<a href = "javascript:board(' + item.postKey + ',' + item.groupKey + ')" title = "">' + item.commentContent + '</a>';
			doc += '					</span>';
			doc += '				</div>';
			doc += '				<div class = "comment-subject">';
			doc += '					<span>';
			doc += '						<a href = "javascript:board(' + item.postKey + ',' + item.groupKey + ')" title = "">' + item.postTitle + '</a>';
			doc += '					</span>';
			doc += '					<span class = "comment-num">';
			doc += 						'[' + item.replyCount + ']';
			doc += '					</span>';
			doc += '				</div>';
			doc += '		</td>';
			doc += '		<td>';
			doc +=				item.postReadcount;
			doc += '		</td>';
			doc += '		<td>';
			doc += 				item.commentDate;
			doc += '		</td>';
			doc += '	</tr>';
		});
		doc += '</tbody>';
		doc += '</table>';
		$('.col-lg-6>.forum-list').html(doc);
		$('.pagination').html('');
		
		doc = "";
		digit = '«&nbsp;';
		href = "";
		if (data.page > 1) {
			href = 'href=javascript:go(' + (data.page - 1) + ')';
		}
		setPaging(href, digit);

		for (var i = data.startpage; i <= data.endpage; i++) {
			digit = i;
			href = "";
			if (i != data.page) {
				href = 'href=javascript:go(' + i + ')';
			}
			setPaging(href, digit);
		}

		digit = '»&nbsp;';
		href = "";
		if (data.page < data.maxpage) {
			href = 'href=javascript:go(' + (data.page + 1) + ')';
		}

		setPaging(href, digit);

		$('.pagination').append(doc);
	} else {
		doc += '<tr><td colspan = 3>댓글이 존재하지 않습니다.</td></tr>'
		doc += '</tbody>';
		doc += '</table>';
		$('.col-lg-6>.forum-list').html(doc);
	}
} // wroteComment end

/*** 회원이 가입 시 작성한 가입양식 ***/
function getAnswer(data) {
	console.log(data);
	$('.pagination').html('');
	doc += '<div class="central-meta">';
	doc += '	<div class="editing-info">';
	doc += '		<h5 class="f-title"><i class="ti-info-alt"></i>작성한 가입양식</h5>';
	if (data.answer1 != null) {
		doc += '<div class="form-group">';
		doc += '	<input type="text" id="answer1" name="answer1" value="' + data.answer1 + '"disabled/>';
		doc += '	<label class="control-label" for="answer1">' + data.answer1 + '</label><i class="mtrl-select"></i>';
		doc += '</div>';
	}
	if (data.answer2 != null) {
		doc += '<div class="form-group">';
		doc += '<input type="text" id="answer2" name="answer2" readOnly/>';
		doc += '<label class="control-label" for="answer2">' + data.answer2 + '</label><i class="mtrl-select"></i>';
		doc += '</div>';
	}
	if (data.answer3 != null) {
		doc += '<div class="form-group">';
		doc += '<input type="text" id="answer3" name="answer3" readOnly/>';
		doc += '<label class="control-label" for="answer3">' + data.answer3 + '</label><i class="mtrl-select"></i>';
		doc += '</div>';
	}
	if (data.answer4 != null) {
		doc += '<div class="form-group">';
		doc += '<input type="text" id="answer4" name="answer4" readOnly/>';
		doc += '<label class="control-label" for="answer4">' + data.answer4 + '</label><i class="mtrl-select"></i>';
		doc += '</div>';
	}
	if (data.answer5 != null) {
		doc += '<div class="form-group">';
		doc += '<input type="text" id="answer5" name="answer5" readOnly/>';
		doc += '<label class="control-label" for="answer5">' + data.answer5 + '</label><i class="mtrl-select"></i>';
		doc += '</div>';
	}
	if (data.introduce != null) {
		doc += '<div class="form-group">';
		doc += '<textarea rows = "4" id="introduce" name="introduce" value = ' + data.introduce + 'readOnly/></textarea>';
		doc += '<label class="control-label" for="introduce">' + data.introduce + '</label><i class="mtrl-select"></i>';
		doc += '</div>';
	}
	doc += '	</div>';
	doc += '</div>';
	$('.col-lg-6>.forum-list').html(doc);
}; // getAnswer end

$(function() {
	// 일반적으로 회원 누르고 왔을 때 / 모임 내 프로필 상에서 내가 쓴 글, 내가 쓴 댓글 보려고 왔을 때 구분
	var getStatus = $('#status').val();
	$('.user-active li').eq(getStatus).addClass('selected-menu');

	/* 가입한 모임, 작성글, 작성댓글 중 선택한 메뉴에 대한 색 변경 */ 
	$('.user-active li').click(function(){
		$('.user-active li').removeClass('selected-menu');
		$(this).addClass('selected-menu');
		
		// status : 어떤 메뉴를 눌렀는지 확인 (0: 가입한 모임, 1: 작성한 글, 2: 작성한 댓글, 3: 작성한 가입양식)
		var call = "userkey=" + $('#userkey').val() + "&groupkey=" + $('#groupkey').val() + "&status=" + $(this).index();
		
		viewList(call);	/*** ajax 실행 ***/
	});

	/* 가입한 모임, 작성글, 작성댓글 중 선택한 메뉴 클릭 시 이동 X */
	$('.user-active a').click(function() {
		event.preventDefault();
	});
});
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
			cell.innerHTML = "<span class='caldendarCell' id='day"+i+"'>" + i
					+ "</span>";//셀을 1부터 마지막 day까지 HTML 문법에 넣어줌
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
		for (var i = 1; i <= mycalendarlistcount; i++) {
			var temp = $('#cal' + i).val();
			$('#day' + temp).parent().addClass('calendarCellMy');
		}

		$("#calendar").on('click', '#prevcal', function(event) {
			var userkey = $('#UserKey').val();
			prevCalendar();
			var date = $('#tbCalendarYM').text();
			ajaxcallist(userkey, date);
			$('#shortschedule').empty();
			$('#shortschedule').append('<li><span>날짜를 선택하세요</span></li>');

		})

		$("#calendar").on('click', '#nextcal', function(event) {
			var userkey = $('#UserKey').val();
			nextCalendar();
			var date = $('#tbCalendarYM').text();
			ajaxcallist(userkey, date);
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
		$(".calendarDiv").on(
				'click',
				'td',
				function(event) {
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
							$('#shortschedule').append(
									'<li><span>일정이 없습니다</span></li>');
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
					"class" : "filterform",
					"action" : "#"
				}), input = $("<input>").attr({
					"class" : "filterinput",
					"type" : "text",
					"placeholder" : "회원 찾기"
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
					"class" : "filterform",
					"action" : "#"
				}), input = $("<input>").attr({
					"class" : "filterinput",
					"type" : "text",
					"placeholder" : "회원 찾기"
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
					"class" : "filterform",
					"action" : "#"
				}), input = $("<input>").attr({
					"class" : "filterinput",
					"type" : "text",
					"placeholder" : "회원 찾기"
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
					"class" : "filterform",
					"action" : "#"
				}), input = $("<input>").attr({
					"class" : "filterinput",
					"type" : "text",
					"placeholder" : "회원 찾기"
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
					"class" : "filterform",
					"action" : "#"
				}), input = $("<input>").attr({
					"class" : "filterinput",
					"type" : "text",
					"placeholder" : "회원 찾기"
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
					"class" : "filterform",
					"action" : "#"
				}), input = $("<input>").attr({
					"class" : "filterinput",
					"type" : "text",
					"placeholder" : "회원 찾기"
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
					"class" : "filterform",
					"action" : "#"
				}), input = $("<input>").attr({
					"class" : "filterinput",
					"type" : "text",
					"placeholder" : "회원 찾기"
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
					"class" : "filterform",
					"action" : "#"
				}), input = $("<input>").attr({
					"class" : "filterinput",
					"type" : "text",
					"placeholder" : "회원 찾기"
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
			$
					.ajax({
						type : "post",
						url : "group_main_ajax.net",
						data : data,
						dataType : "json",
						cache : false,
						success : function(data) {
							$("#" + empty).empty();
							output = "";
							$(data.groupcalendarmemberlist)
									.each(
											function(index, item) {
												output += "<li><figure>";
												output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
												output += "</figure><div class='friendz-meta'>";
												output += "<a href='time-line.html'></a>"
														+ item.groupnickname;
												output += "<i class='__cf_email__'>모임장</i></div></li>";
											})
							$("#" + empty).append(output);
						},
						error : function() {
							console.log('에러')
						}
					}) // ajax
		} // function ajax end
		function ajaxJoinBtn(postkey, groupkey, userkey, n) {
			output = "";
			var data = "postkey=" + postkey + "&groupkey=" + groupkey
					+ "&userkey=" + userkey;
			var empty = "people-list" + n;
			$
					.ajax({
						type : "post",
						url : "group_main_ajaxJoin.net",
						data : data,
						dataType : "json",
						cache : false,
						success : function(data) {
							$("#" + empty).empty();
							$(".currentperson" + n).empty();
							$(".currentperson" + n).html(data.currentperson);
							output = "";
							$(data.groupcalendarmemberlist)
									.each(
											function(index, item) {
												output += "<li><figure>";
												output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
												output += "</figure><div class='friendz-meta'>";
												output += "<a href='time-line.html'></a>"
														+ item.groupnickname;
												output += "<i class='__cf_email__'>모임장</i></div></li>";
											})
							$("#" + empty).append(output);
						},
						error : function() {
							console.log('에러')
						}
					}) // ajax
		} // function ajax end

		function ajaxJoinCancelBtn(postkey, groupkey, userkey, n) {
			output = "";
			var data = "postkey=" + postkey + "&groupkey=" + groupkey
					+ "&userkey=" + userkey;
			var empty = "people-list" + n;
			$
					.ajax({
						type : "post",
						url : "group_main_ajaxJoinCancel.net",
						data : data,
						dataType : "json",
						cache : false,
						success : function(data) {
							$("#" + empty).empty();
							output = "";
							$(".currentperson" + n).empty();
							$(".currentperson" + n).html(data.currentperson);
							$(data.groupcalendarmemberlist)
									.each(
											function(index, item) {
												output += "<li><figure>";
												output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
												output += "</figure><div class='friendz-meta'>";
												output += "<a href='time-line.html'></a>"
														+ item.groupnickname;
												output += "<i class='__cf_email__'>모임장</i></div></li>";
											})
							$("#" + empty).append(output);
						},
						error : function() {
							console.log('에러')
						}
					}) // ajax
		} // function ajax end
		function ajaxCalendarList(userkey) {
			output = "";
			var data = "postkey=" + postkey + "&groupkey=" + groupkey
					+ "&userkey=" + userkey;
			var empty = "people-list" + n;
			$
					.ajax({
						type : "post",
						url : "group_main_ajaxJoinCancel.net",
						data : data,
						dataType : "json",
						cache : false,
						success : function(data) {
							$("#" + empty).empty();
							output = "";
							$(".currentperson" + n).empty();
							$(".currentperson" + n).html(data.currentperson);
							$(data.groupcalendarmemberlist)
									.each(
											function(index, item) {
												output += "<li><figure>";
												output += "<img src='resources/images/resources/friend-avatar.jpg' alt=''>";
												output += "</figure><div class='friendz-meta'>";
												output += "<a href='time-line.html'></a>"
														+ item.groupnickname;
												output += "<i class='__cf_email__'>모임장</i></div></li>";
											})
							$("#" + empty).append(output);
						},
						error : function() {
							console.log('에러')
						}
					}) // ajax
		} // function ajax end
		function ajaxcallist(userkey, date) {
			output = "";
			var data = "userkey=" + userkey + "&date=" + date;
			$.ajax({
				type : "post",
				url : "group_main_ajaxCalList.net",
				data : data,
				dataType : "json",
				cache : false,
				success : function(data) {
					$(data.groupcalendarlist).each(
							function(index, item) {
								if (!$('#day' + item.startdate).parent()
										.hasClass('calendarCellMy')) {
									$('#day' + item.startdate).parent()
											.addClass('calendarCellMy');
								}
							})

				},
				error : function() {
					console.log('에러')
				}
			}) // ajax
		} // function ajax end
		function ajaxcal(userkey, date, day) {
			output = "";
			var data = "userkey=" + userkey + "&date=" + date + "&day=" + day;
			$.ajax({
				type : "post",
				url : "group_main_shortschedule.net",
				data : data,
				dataType : "json",
				cache : false,
				success : function(data) {
					$('#shortschedule').empty();
					output = "";
					$(data.shortscheduleSelected).each(
							function(index, item) {
								output += "<li><span>" + item.posttitle
										+ "</span>";
								output += "<p>모임명: " + item.groupname
										+ "<br>시간: " + item.startdate
										+ "<br>장소:" + item.location
										+ "</p></li>";
							})
					$('#shortschedule').append(output);
				},
				error : function() {
					console.log('에러')
				}
			}) // ajax
		} // function ajax end

	})
</script>

<script src="resources/js/script.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />