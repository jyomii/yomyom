// 가입한 모임 페이지로 이동
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
			$('table').html('');
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
			// 주소 상엽씨버전으로 바꾸면 jsp에서도 수정해줘
			//doc += '			<a href = "group_main.net?groupkey=' + item.groupKey + '" title = "">' + item.groupName + '</a>';
			doc += '			<a href = "groupmain?groupkey=' + item.groupKey + '" title = "">' + item.groupName + '</a>';
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
		
		$('table').append(doc);
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
			$('table').append(doc);
		}
} // signedGroup end

/* ##### 작성한 글 ##### */
function wroteTitle(data) {
	console.log(data.list);
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
		
		$('table').append(doc);
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
		$('table').append(doc);
	}
} // wroteTitle end

/* ##### 작성한 댓글 ##### */
function wroteComment(data) {
	console.log(data.list);
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
		
		$('table').append(doc);
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

		$('table').append(doc);
	}
} // wroteComment end

$(function() {
	var status = 0;	// 어떤 메뉴를 눌렀는지 확인
	var tbl = '';	// append시킬 변수 

	// 일반적으로 회원 누르고 왔을 때 / 모임 내 프로필 상에서 내가 쓴 글, 내가 쓴 댓글 보려고 왔을 때 구분
	var getStatus = $('#status').val();

	if (getStatus == 0)
		$('.user-active li').eq(0).addClass('selected-menu');
	else if (getStatus == 1)
		$('.user-active li').eq(1).addClass('selected-menu');
	else
		$('.user-active li').eq(2).addClass('selected-menu');


	/* 가입한 모임, 작성글, 작성댓글 중 선택한 메뉴에 대한 색 변경 */ 
	$('.user-active li').click(function(){
		$('.user-active li').removeClass('selected-menu');
		$(this).addClass('selected-menu');
		var call = "userkey=" + $('#userkey').val() + "&groupkey=" + $('#groupkey').val() + "&status=" + $(this).index();
		viewList(call);
	});

	/* 가입한 모임, 작성글, 작성댓글 중 선택한 메뉴 클릭 시 이동 X */
	$('.user-active a').click(function() {
		event.preventDefault();
	});
});