var url = '';	// 이동할 컨트롤러 주소
var id = 0;		// 선택된 메뉴의 값을 구하기 위해 id로 구분
var menu = 0;	// 선택된 메뉴의 값 (회원 목록 : 0, 회원 요청 : 1)
var doc = '';

//## 메뉴에 따른 회원 리스트 가져오기
function getMember(data, url) {
	$.ajax({
		type : 'POST',
		url : url,
		data : data,
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

//일반 모임 회원 리스트 가져오기
function getGroupMem (data) {
	$('.nearby-contct').empty();
	
	// 가입된 회원이 있으면
	if (data.membercount != 0) {
		$(data.list).each(function(index, item){
			doc += '<li>';
			doc += '	<div class="nearly-pepls">';
			doc += '		<figure>';
			doc += '			<a href = "javascript:memDetail(' + item.userKey + ')" title="">';
			if (item.profileFile == null) {
				doc += '<img src="resources/images/default.png" class = "group-img" alt = ""/>';
			} else {
				doc += "<img src= \"<spring:url value='/image" + item.profileFile + "'/>\" class = 'group-img' alt = ''/>";
			}
			doc += '		</figure>';
			doc += '		<div class="pepl-info">';
			doc += '			<h4><a href="javascript:memDetail(' + item.userKey + ',' + item.groupKey + ')" title = "' + item.groupNickname + '">' + item.groupNickname + '</a></h4>';
			doc += '			<a href="javascript:expelMem(' + item.userKey + ',' + item.groupKey + ')" title="회원 강퇴" class="add-butn more-action" data-ripple="">회원 강퇴</a>';
			doc += '			<a href="#" title="" class="add-butn" data-ripple="">권한 설정</a>';
			doc += '		</div>';
			doc += '	</div>';
			doc += '</li>';
		});
		$('.nearby-contct').append(doc);
		$('.nav.nav-tabs li span').eq(0).text(data.membercount);
	}
} // getGroupMem end

//가입 승인 요청 대기 중인 회원 리스트 가져오기
function getWaitMem(data) {
	$('.nearby-contct').empty();
	
	// 가입 요청한(승인 대기 중) 회원이 있으면
	if (data.membercount != 0) {
		$(data.list).each(function(index, item){
			doc += '<li>';
			doc += '	<div class="nearly-pepls">';
			doc += '		<figure>';
			doc += '			<a href = "javascript:memDetail(' + item.userKey + ')" title="">';
			if (item.profileFile == null) {
				doc += '<img src="resources/images/default.png" class = "group-img" alt = ""/>';
			} else {
				doc += "<img src= \"<spring:url value='/image" + item.profileFile + "'/>\" class = 'group-img' alt = ''/>";
			}
			doc += '		</figure>';
			doc += '		<div class="pepl-info">';
			doc += '			<h4><a href="javascript:memDetail(' + item.userKey + ',' + item.groupKey + ')" title = "' + item.groupNickname + '">' + item.groupNickname + '</a></h4>';
			doc += '			<a href="javascript:rejectJoin(' + item.userKey + ',' + item.groupKey + ')" title="요청 거절" class="add-butn more-action" data-ripple="">요청 거절</a>';
			doc += '			<a href="#" title="" class="add-butn" data-ripple="">승인</a>';
			doc += '		</div>';
			doc += '	</div>';
			doc += '</li>';
		});
		$('.nearly-pepls').append(doc);
		$('.nav.nav-tabs li span').eq(0).text(data.membercount);
	}
} // getWaitMem end

// 가입 승인 요청 거절
function rejectJoin(userkey, groupkey) {
	$.ajax({
		type : 'POST',
		url : 'rejectJoin',
		data : {userkey : userkey, groupkey : groupkey},
		success : function(data) {
			$('.nearby-contct').empty();
			
			// 가입 요청한(승인 대기 중) 회원이 있으면
			if (data.yetMembercount != 0) {
				$(data.mem).each(function(index, item){
					doc += '<li>';
					doc += '	<div class="nearly-pepls">';
					doc += '		<figure>';
					doc += '			<a href = "javascript:memDetail(' + item.userKey + ')" title="">';
					if (item.profileFile == null) {
						doc += '<img src="resources/images/default.png" class = "group-img" alt = ""/>';
					} else {
						doc += "<img src= \"<spring:url value='/image" + item.profileFile + "'/>\" class = 'group-img' alt = ''/>";
					}
					doc += '		</figure>';
					doc += '		<div class="pepl-info">';
					doc += '			<h4><a href="javascript:memDetail(' + item.userKey + ',' + item.groupKey + ')" title = "' + item.groupNickname + '">' + item.groupNickname + '</a></h4>';
					doc += '			<a href="javascript:rejectJoin(' + item.userKey + ',' + item.groupKey + ')" title="요청 거절" class="add-butn more-action" data-ripple="">요청 거절</a>';
					doc += '			<a href="#" title="" class="add-butn" data-ripple="">승인</a>';
					doc += '		</div>';
					doc += '	</div>';
					doc += '</li>';
				});
				$('.nearly-pepls').append(doc);
				$('.nav.nav-tabs li span').eq(0).text(data.membercount);
			}
		}
	});
}

$(function(){
	// '회원 목록' 메뉴나 '회원 요청' 메뉴 클릭 시 
	$('.nav-item a').on('click', function(){
		console.log('메뉴 클릭!');
		
		id = $(this).attr('id');
		
		if (id == 'm1') /* 회원 목록 */
			menu = 0
		else /* 회원 요청 */
			menu = 1;
		
		var data = 'groupKey=' + $('input[name=getGroupKey]').val() + '&menu=' + menu;
		console.log('data = ' + data);
		
		switch($(this).index()) {
		// 회원 목록
		case 0:
			url = 'getGroupMem';
			getMember(data, url);
			break;
		// 회원 요청	
		case 1:
			url = 'getWaitMem';
			getMember(data, url);
			break;
		}
	});
});

/*
// ## 회원 요청 리스트 get
function getYetMember(groupKey) {
	$.ajax({
		type : 'POST',
		url : 'getYetMember',
		data : {groupKey : groupKey},
		success : function(data) {

			$('nearly-pepls').empty();
			
			// 요청 회원이 있으면
			if (data.membercount != 0) {
				$(data.mem).each(function(index, item){
					doc += '<li>';
					doc += '	<div class="nearly-pepls">';
					doc += '		<figure>';
					doc += '			<a href = "javascript:memDetail(' + item.userKey + ')" title="">';
					if (item.profileFile == null) {
						doc += '<img src="resources/images/default.png" class = "group-img" alt = ""/>';
					} else {
						doc += "<img src= \"<spring:url value='/image" + item.profileFile + "'/>\" class = 'group-img' alt = ''/>";
					}
					doc += '		</figure>';
					doc += '		<div class="pepl-info">';
					doc += '			<h4><a href="javascript:memDetail(' + item.userKey + ',' + item.groupKey + ')" title = "' + item.groupNickname + '">' + item.groupNickname + '</a></h4>';
					doc += '			<a href="javascript:rejectJoin(' + item.userKey + ',' + item.groupKey + ')" title="회원 강퇴" class="add-butn more-action" data-ripple="">회원 강퇴</a>';
					doc += '			<a href="#" title="" class="add-butn" data-ripple="">권한 설정</a>';
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
};
	
// ## 회원 강퇴
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
				alert('강퇴 완료되었습니다.');
			else (data.result == -1)
				alert('강퇴하는 데 실패했습니다.');
			
			$('nearly-pepls').empty();
			
			// 가입된 회원이 있으면
			if (data.membercount != 0) {
				$(data.mem).each(function(index, item){
					doc += '<li>';
					doc += '	<div class="nearly-pepls">';
					doc += '		<figure>';
					doc += '			<a href = "javascript:memDetail(' + item.userKey + ')" title="">';
					if (item.profileFile == null) {
						doc += '<img src="resources/images/default.png" class = "group-img" alt = ""/>';
					} else {
						doc += "<img src= \"<spring:url value='/image" + item.profileFile + "'/>\" class = 'group-img' alt = ''/>";
					}
					doc += '		</figure>';
					doc += '		<div class="pepl-info">';
					doc += '			<h4><a href="javascript:memDetail(' + item.userKey + ',' + item.groupKey + ')" title = "' + item.groupNickname + '">' + item.groupNickname + '</a></h4>';
					doc += '			<a href="javascript:expelMem(' + item.userKey + ',' + item.groupKey + ')" title="회원 강퇴" class="add-butn more-action" data-ripple="">회원 강퇴</a>';
					doc += '			<a href="#" title="" class="add-butn" data-ripple="">권한 설정</a>';
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
}*/