// ############ 임시 js 아직 적용 X
$(function(){
	/* 가입한 모임, 작성글, 작성댓글 중 선택한 메뉴에 대한 색 변경 */
	$('.user-active li').click(function(){
		$('.user-active li').removeClass('selected-menu');
		$(this).addClass('selected-menu');

		// 임시 switch문
		switch($(this).index()) {
			case 0: move("naver.com"); 	break;
			case 1: move("daum.net"); 	break;
			case 2: move("google.com"); break;
		}
	});
	
	/* 가입한 모임, 작성글, 작성댓글 중 선택한 메뉴 클릭 시 이동 X */
	$('.user-active a').click(function() {
		event.preventDefault();
	});
	
	var doc = '';	// 테이블에 append시킬 변수 
	
	function changeMenu(menu) {
		$.ajax({
			type : "GET",
			url : "G_mem_detail",
			data : {userkey : "${userkey}", menu : menu},
			dataType : 'json',
			success : function(data) {
				
				var add = signedGroup(data);
				$('.table.table-responsive').append(add);
			},
			error : function(request, status, error) {
				console.log("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error);
			}
		}); // ajax end
	}; // function go end
	
	// 이런식으로 짜여질 것이다,,, 밑밥용 
	/* ##### 가입한 모임 ##### */
	function signedGroup(data) {
		doc += '<thead>';
		doc += '	<tr>';
		doc += '		<th scope = "col">name</th>';
		doc += '		<th scope = "col">member</th>';
		doc += '		<th scope = "col">date</th>';
		doc += '	</tr>';
		doc += '</thead>';
		doc += '<tbody>';
		/* ForEach 반복문 시작 */
		doc += '	<tr>';
		doc += '		<td>';
		// #### img 경로는 추후 변경 ####
		doc += '			<img src = "uploadfile/${groupdfile}" class = "group-img" alt = "">';
		doc += '			<a href = "groupin_group_main?groupkey=${groupkey}" title = "">${groupname}</a>';
		doc += '		</td>';
		doc += '		<td>';
		doc += '			${groupcount}명';
		doc += '		</td>';
		doc += '		<td>';
		doc += '			${groupdate}';
		doc += '		</td>';
		doc += '	</tr>';
		/* ForEach 반복문 종료 */
		doc += '</tbody>';
		return doc;
	}
	
	function wroteTitle(data) {
		/* ##### 작성한 글 ##### */
		doc = '';
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
		/* ##### 작성한 댓글 ##### */
		doc = '';
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