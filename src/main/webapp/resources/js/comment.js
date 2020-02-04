var commentType = 0;
var data = '';
var type = '';
var url = '';

//답댓 클릭 시
function commentReply(commentNo) {
	$('input[name=commentType]').val(1);
	$('input[name=commentNum]').val(commentNo);
	$('.post-comt-box textarea').css('background', '#088dcd1a').focus();
	console.log('답댓 달 댓글의 번호 = ' + commentNo);
};	// reply end

// 댓글 삭제 클릭 시
function deleteReply(num) {
	var answer = confirm('댓글을 삭제하시겠습니까?');
	if (answer) {
		$.ajax({
			url : 'deleteReply',
			type : 'post',
			data : {commentnum : num},
			dataType : 'json',
			cache : false,
			success : function(data) {
				
			},
			error : function(request, status, error) {
				console.log("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error);
			}
		});
	}
	return false;	
}

$(function(){
	console.log('groupkey = ' + $('#detailGroupKey').val());
	console.log('postkey = ' + $('#detailPostKey').val());
	
	$(document).on('keyup', '.post-comt-box textarea', function() {
		$('.post-comt-box textarea').css('background', '#088dcd1a');
	});
	
	/* 비밀댓글 설정 */
	var lock = false;	// 기본 unlock
	$(document).on('click', '.post-comt-box i', function() {
		if (!lock) {	// 비댓
			console.log('비댓');
			$('input[name=commentShow]').val('1');
			$(this).removeClass('fa-unlock').addClass('fa-lock').css('color', '#ed3939b5');
			$('textarea').css('background', '#e1c2c2b5');
		} else {	// 공댓
			console.log('공댓');
			$('input[name=commentShow]').val('0');
			$(this).removeClass('fa-lock').addClass('fa-unlock').css('color', 'black');
			$('textarea').css('background', '#f3f3f3');
		}
		lock = !lock;
	});
	
	// ## 댓글 전송 시 ##
	$(document).on('submit', $('#ReplyAction'), function() {
		val = $('input[name=commentType]').val();
		console.log('오긴 와?')
		console.log(val);
		switch (val) {
		case "0":
			console.log('여긴 와?')
			/* 글에 댓글 */
			data = 'postKey=' + $('#detailPostKey').val() + '&groupKey=' + $('#detailGroupKey').val() + '&content=' + $('.post-comt-box textarea').val() 
				+ '&commentshow=' + $('input[name=commentShow]').val();
			console.log('submit data = ' + data);
			url = 'postReply';
			replyAction(data, url);
			break;
		case "1":
			/* 댓글에 댓글 */
			data = 'postKey=' + $('#detailPostKey').val() + '&groupKey=' + $('#detailGroupKey').val() + '&content=' + $('.post-comt-box textarea').val() 
				+ '&commentshow=' + $('input[name=commentShow]').val() + '&commentnum=' + $('input[name=commentNum]').val();
			console.log('submit data = ' + data);
			url = 'commentReply';
			replyAction(data, url);
			break;
		}
	}); // submit end
	
	function replyAction(data, url) {
		doc = '';
		console.log('url = ' + url);
		console.log('data = ' + data);
		$.ajax({
			type : "POST",
			url : url,
			data : data,
			dataType : 'json',
			cache : false,
			success : function(data) {
				console.log(data);
				
				$('.coment-area').empty();
				$('.comment ins').text('');
				$('.comment ins').text(data.listcount);
				
				// 댓글 존재
				if (data.listcount != 0) {
					doc += '<ul class = we-comet>';
					$(data.comment).each(function(index, item) {
						doc += '<li>';
						doc += '	<div class="comet-avatar">';
						if (item.profileFile == null) {
							doc += "		<img src= 'resources/images/default.png' class = 'group-img' alt = ''/>";
						} else {
							doc += "		<img src= \"<spring:url value='/image" + item.profileFile + "'/>\" class = 'group-img' alt = ''/>";
						}
						doc += '	</div>';
						doc += '	<div class="we-comment">';
						doc += '		<div class="coment-head">';
						doc += '			<h5><a href="javascript:memDetail(' + item.groupKey + ',' + item.userKey + ')" title="">' + item.groupNickname + '</a></h5>';
						doc += '			<span>' + item.commentDate + '</span>';
						doc += '			<a class="we-reply" href="javascript:commentReply(' + item.commnetNum + ')" title="Reply"><i class="fa fa-reply"></i></a>';
						doc += '			<a class="update" href="javascript:commentUpdate(' + item.commnetNum + ')" title="Delete"><i class="fas fa-eraser"></i></i></a>';
						doc += '			<a class="delete" href="javascript:commentDelete(' + item.commnetNum + ')" title="Update"><i class="far fa-trash-alt"></i></a>';
						doc += '		</div>';
						doc += '		<p>' + item.commentContent + '</p>';
						doc += '	</div>';
						doc += '</li>';
					}); // each end
				} else { // 댓글 없음
					doc += '<li>';
					doc += '	<div style = "text-align : center">등록된 댓글이 없습니다.</div>';
					doc += '</li>';
				}
				
				doc += '<li>';
				doc += '	<a href = "#" title = "" class = "showmore underline">more comments</a>';
				doc += '</li>';
				doc += '<li class = "post-comment">';
				doc += '	<div class="comet-avatar">';
				doc += "		<img src= \"<spring:url value='/image" + data.profileFile + "'/>\" class = 'group-img' alt = ''/>";// 여기 이미지 가져오는 객체 이름 바꿔야 함
				doc += '	</div>';
				doc += '	<div class="post-comt-box">';
				doc += '		<form method = "post" id = "ReplyAction">';
				doc += '			<textarea placeholder="Post your comment"></textarea>';
				doc += '			<button type = "button" class = "secretbtn"><i class="fas fa-unlock" aria-hidden="true"></i></button>';
				doc += '			<button type = "submit" class = "glyphicon glyphicon-send"></button>';
				doc += '		</form>';
				doc += '	</div>';
				doc += '</li>';
				doc += '</ul>';
				$('.coment-area').append(doc);
			},
			error : function(request, status, error) {
				console.log("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error);
			}
		}); // ajax end
	} // function postReply end
}); // ready end

