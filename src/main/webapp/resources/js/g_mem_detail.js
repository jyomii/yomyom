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
			doc += '			<a href = "javascript:goGroup(' + "'" + item.groupKey + "'" + ');" title = "">' + item.groupName + '</a>';
			doc += '		</td>';
			doc += '		<td>';
			doc += 				item.memberCount + '명';
			doc += '		</td>';
			doc += '		<td>';
			doc += 				item.groupDate;
			doc += '		</td>';
			doc += '	</tr>';
		}); // each end
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
		doc += '<tr><td colspan = 3>가입한 모임이 없습니다.</td></tr>'
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
			doc += '			<a href = "javascript:board(' + item.groupKey + ',' + item.postKey + ')" title = "">' + item.postTitle + '</a>';
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
		doc += '<tr><td colspan = 3>작성한 글이 없습니다.</td></tr>'
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
			doc += '						<a href = "javascript:board(' + item.groupKey + ',' + item.postKey + ')" title = "">' + item.commentContent + '</a>';
			doc += '					</span>';
			doc += '				</div>';
			doc += '				<div class = "comment-subject">';
			doc += '					<span>';
			doc += '						<a href = "javascript:board(' + item.groupKey + ',' + item.postKey + ')" title = "">' + item.postTitle + '</a>';
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
		doc += '<tr><td colspan = 3>작성한 댓글이 없습니다.</td></tr>'
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
		var call = "userKey=" + $('#userKey').val() + "&groupKey=" + $('#groupKey').val() + "&status=" + $(this).index();
		viewList(call);
	});
	
	/* 가입한 모임, 작성글, 작성댓글 중 선택한 메뉴 클릭 시 이동 X */
	$('.user-active a').click(function() {
		event.preventDefault();
	});
});