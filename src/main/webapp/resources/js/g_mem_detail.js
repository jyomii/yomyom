$(function(){
	var status = 0;	// 어떤 메뉴를 눌렀는지 확인
	var add = '';	// append시킬 변수 
	
	// 처음 회원 상세페이지 접속 시 0(가입한 모임) 전송
	viewList("${userKey}");
	
	/* 가입한 모임, 작성글, 작성댓글 중 선택한 메뉴에 대한 색 변경 */ 
	$('.user-active li').click(function(){
		$('.user-active li').removeClass('selected-menu');
		$(this).addClass('selected-menu');
		viewList("${userKey}", $(this).index());	// 선택될 때마다 넘긴다.
	});
	
	/* 가입한 모임, 작성글, 작성댓글 중 선택한 메뉴 클릭 시 이동 X */
	$('.user-active a').click(function() {
		event.preventDefault();
	});
	
	function viewList(userkey, status) {
		$.ajax({
			type : "POST",
			url : "G_mem_detail",
			data : {userKey : userkey, menu : status},
			dataType : 'json',
			cache : false,
			success : function(data) {
				console.log(data.menu);
				console.log(data.list);
				switch (data.menu) {
					case 0:
						add = signedGroup(data);
						break;
					case 1:
						add = wroteTitle(data);
						break;
					case 2:
						add = wroteComment(data);
						break;
				}
				$('table').append(add);
				//$('table').append("<h1>돌겠네</h1>");
			},
			error : function(request, status, error) {
				console.log("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error);
			}
		}); // ajax end
	}; // function go end
	
	/* ##### 가입한 모임 ##### */
	function signedGroup (data) {
		var doc = '';
		doc += '<thead>';
		doc += '	<tr>';
		doc += '		<th scope = "col">name</th>';
		doc += '		<th scope = "col">member</th>';
		doc += '		<th scope = "col">date</th>';
		doc += '	</tr>';
		doc += '</thead>';
		doc += '<tbody>';
		$(data.list).each(function(index, item) {
			doc += '	<tr>';
			doc += '		<td>';
			doc += '			<img src = "uploadfile/' + item.groupDFile + '" class = "group-img" alt = "">';
			doc += '			<a href = "groupin_group_main?groupkey=${groupKey}" title = "">' + item.groupName + '</a>';
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
		return doc;
	} // signedGroup end

	function wroteTitle(data) {
		var doc = '';
		/* ##### 작성한 글 ##### */
		doc += '<thead>';
		doc += '	<tr>';
		doc += '		<th scope = "col">subject</th>';
		doc += '		<th scope = "col">date</th>';
		doc += '	</tr>';
		doc += '</thead>';
		doc += '<tbody>';
		/* ForEach 반복문 시작 */
		doc += '	<tr>';
		doc += '		<td>';
		doc += '			<a href = "G_wrote.net?postkey=${postkey}" title = "">${posttitle}</a>';
		doc += '		</td>';
		doc += '		<td>';
		doc += '			${postdate}';
		doc += '		</td>';
		doc += '	</tr>';
		/* ForEach 반복문 종료 */
		doc += '</tbody>';
		return doc;
	}

	function wroteComment(data) {
		var doc = '';
		/* ##### 작성한 댓글 ##### */
		doc += '<thead>';
		doc += '	<tr>';
		doc += '		<th scope = "col">Comment</th>';
		doc += '		<th scope = "col">Date</th>';
		doc += '	</tr>';
		doc += '</thead>';
		doc += '<tbody>';
		/* ForEach 반복문 시작 */
		doc += '	<tr>';
		doc += '		<td>';
		doc += '			<div class = "comment-info">';
		doc += '				<div class = "comment-content">';
		doc += '					<span>';
		doc += '						<a href = "원문 제목이 있는 게시글">${원문글에 단 댓글}</a>';
		doc += '					</span>';
		doc += '					<span class = "comment-num">';
		doc += '						[${댓글개수}]';
		doc += '					</span>';
		doc += '				</div>';
		doc += '		</td>';
		doc += '		<td>';
		doc += '			${postdate}';
		doc += '		</td>';
		doc += '	</tr>';
		/* ForEach 반복문 종료 */
		doc += '</tbody>';
		return doc;
	}
});