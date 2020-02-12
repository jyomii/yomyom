<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<jsp:include page="../mainpage/header.jsp" />


<style>

.tab-content li:hover{
cursor: pointer;
}
.tab-content ul{
list-style: none;}

.click_category {
	background: #088dcd;
	color:white;
}

.admin-name h5:hover {
  cursor:pointer;
}

#recentwww:hover {
  cursor:pointer;
}

#recentnotice:hover {
  cursor:pointer;
}

}
</style>

<section>
			<div class="feature-photo">
				<figure> <!-- 기본 배경 -->
				<img src="resources/images/resources/backpic.jpg"/>
				</figure>

				<div class="container-fluid">
					<div class="row merged">
						<div class="col-lg-2 col-sm-3">
							<div class="user-avatar">
							<c:if test = "${mypage.userImageOrigin == null}">
							 <figure>
							      <img src="resources/images/resources/bloggrid-4.jpg" alt="" id="imgpic">
							   </figure>
						    </c:if>
						    <c:if test = "${mypage.userImageOrigin != null}">
							   	  <figure>
									<img src="<spring:url value='/image/${mypage.userImageFile }'/>" id="imgpic"/>
								  </figure>
						    </c:if>
									<form class="edit-phto" id="userImageForm">
									<input type="hidden" name="userKey" value="${mypage.userKey }">
										<i class="fa fa-camera-retro"></i> <label class="fileContainer"> 프로필 사진 변경 
										<input type="file" id="uploadfile" name="userImageUpdate"
											accept="image/gif, image/jpeg, image/png"/>
										</label>
									</form>
								
							</div>
						</div>
						<div class="col-lg-10 col-sm-9">
							<div class="timeline-info">
								<ul>
									<c:if test="${logintype == 0 }">
								<li class="admin-name" id="mymy">
									<h5>${id}님의 마이페이지</h5>
								</li>
							</c:if>
							<c:if test="${logintype == 1 }">
								<li class="admin-name" id="mymy">
									<h5>마이페이지</h5>
								</li>
							</c:if>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
<!-- top area -->

<section>
	<div class="gap gray-bg">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="row" id="page-contents">
						<div class="col-lg-3">
							<aside class="sidebar static">
								<div class="widget">
									<h4 class="widget-title">정보 수정</h4>
									<ul class="naves">
										<li><i class="ti-info-alt"></i> <a title=""
											class="jungbo">기본 정보</a></li>
										<li><i class="ti-heart"></i> <a title="" class="gss">관심사</a>
										</li>

									</ul>
								</div>
								<div class="widget">
									<h4 class="widget-title" id="recentwww">
										<i class="ti-pencil"></i>내가 작성한 글/댓글
									</h4>
									<input type="hidden" id="userId" name="userId" value="${id}">
									<ul class="activitiez">
												<c:if test="${postcount > 0 }">
											<c:forEach var="b" items="${postlist}">
												<li>
													<div class="activity-meta">
														<i>${b.postDate}</i> 
														<span> <a	href="groupmain?groupkey=${b.postKey}" title="${b.postTitle}">${b.postTitle}</a></span>
														<h6>
															 ${b.groupName} 
														</h6>
													</div>
												</li>
											</c:forEach>	
											</c:if>
											<c:if test="${postcount == 0 }">
											      작성한 글이 없습니다.
											</c:if>
									</ul>
								</div>
								<!-- recent activites -->
							</aside>
						</div>
						<!-- sidebar -->
						<div class="col-lg-6">
							<div class="central-meta">
								<div class="editing-interest">
									<h5 class="f-title">
										<i class="ti-heart"></i>나의 관심사
									</h5>

                                    <div class="tab-content">
									<table>
										<tr>
											<th>목록</th>
											<th>카테고리</th>
										</tr>
										<c:forEach var="userInterest" items="${userInterest}">
										<tr>
										<th></th>
										<th>>${userInterest.SCategoryName}</th>
										</tr>
										</c:forEach>
									</table>
									
                                    
									<form method="post" action="updateprocess2">
										<input type="hidden" id="category" name="categoryKey">
										
										<div class="d-flex flex-row mt-2">
											<ul class="nav nav-tabs nav-tabs--vertical nav-tabs--left">
												<c:forEach items="${dcategory}" var="list"
													varStatus="status">
													<li class="nav-item"><c:choose>
															<c:when test="${status.count == 1}">
																<a href="#${list.DCategoryKey}" class="nav-link active"
																	data-toggle="tab">${list.DCategoryName }</a>
															</c:when>
															<c:otherwise>
																<a href="#${list.DCategoryKey}" class="nav-link"
																	data-toggle="tab">${list.DCategoryName }</a>
															</c:otherwise>
														</c:choose></li>
												</c:forEach>
											</ul>
											<div class="tab-content">
												<c:forEach items="${dcategory}" var="list"
													varStatus="status">
													<c:choose>
														<c:when test="${status.count == 1}">
															<div class="tab-pane fade show active"
																id="${list.DCategoryKey}">
														</c:when>
														<c:otherwise>
															<div class="tab-pane fade show" id="${list.DCategoryKey}">
														</c:otherwise>
													</c:choose>
													
													<ul class="${list.DCategoryKey}">
														<c:forEach items="${scategory}" var="item">
															<c:if test="${list.DCategoryKey ==  item.DCategoryKey}">
																<li><input type="hidden"
																	value="${item.SCategoryKey}">${item.SCategoryName}</li>
															</c:if>
														</c:forEach>
													</ul>
													</div>
												</c:forEach>
											</div>
										</div>
										<div class="text-user_category"></div>
										
										
										<div class="submit-btns">
											<button type="button" id="update" class="mtr-btn">
												<span>수정</span>
											</button>
											<button type="button" class="mtr-btn"
												onclick='location.href="mypage"'>
												<span>취소</span>
											</button>
										</div>
									</form>
								</div>
								</div>
								</div>
						</div>
						<!-- centerl meta -->
						<div class="col-lg-3">
							<aside class="sidebar static">

								<div class="widget">
									<h4 class="widget-title" id="recentnotice">
										<i class="ti-bell"></i>최근 알림
									</h4>
									<ul class="activitiez">
										<c:if test="${msgcount > 0 }">
											<c:forEach var="msg" items="${getMessage}">
												<li>
													<div class="activity-meta">
														<i>${item.postDate}</i> <i>${msg.mgDate}</i><span><a
															href="#" title=""> ${msg.mgContent} </a></span>
														<h6>
															<script type="text/javascript">
															var date1 = '${msg.mgDate}';
															document.write(timeBefore(new Date(date1)));
															</script>
														</h6>
													</div>
												</li>
											</c:forEach>
										</c:if>
										<c:if test="${msgcount == 0 }">
											   받은 내역이 없습니다.
											</c:if>
									</ul>
								</div>
								<!-- recent activites -->
							</aside>
						</div>
						<!-- sidebar -->
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


<jsp:include page="../mainpage/footer.jsp" />

<script>

var date1 = '${item.postDate}';
document.write(timeBefore(new Date(date1)));

//프사 등록
$('input[type=file]').on('change', preview);

function preview(e){
	   var file = e.target.files[0];
	   
	   if(!file.type.match('image.*')) {
		   alert("확장자는 이미지 확장자만 가능합니다.");
		   return;
	   }
	   
	   var reader = new FileReader();
	   
	   reader.readAsDataURL(file);
	   
	   reader.onload = function(e){
		   
		   $("#imgpic").attr('src', e.target.result);
		   
		   var form = $("#userImageForm")[0];
		     
		   console.log(form);
	        var formData = new FormData(form);
		    console.log(formData);
	        formData.append("userKey", "${mypage.userKey }");
	        formData.append("file", $("#uploadfile")[0].files[0]);
		   
	         
	        $.ajax({
	              url : "userImage"
	            , type : "POST"
	            , processData : false
	            , contentType : false
	            , data : formData
	            , success:function() {
	               console.log("success");
	            }
	        });
	   }
	   
	   
	    
}

var user_check = new Array();

//관심 카테고리로 무엇을 선택했는지 Array user_check에 Object 형으로 담는다.
$('.tab-content li').click(function() {

	$(this).toggleClass('click_category');

	//현재 선택된 li가 click_category 클래스를 가지고 있는지 여부
	if ($(this).hasClass('click_category')) {

		//객체로 넣기 hidden 값 가져오기
		var key = $(this).children('input').val();

		user_check.push({
			sname : $(this).text(),
			skey : key
		});
	} else {

		//가지고 있지 않다면 user_check배열에서 삭제시키기
		var idx = user_check.indexOf({
			sname : $(this).text(),
			skey : key
		});
		user_check.splice(idx, 1);
	}

	//아래의 div에 현재 무엇무엇을 선택했는지 표출
	$('.text-user_category').text('');
	for (var a = 0; a < user_check.length; a++)
		$('.text-user_category').append(user_check[a].sname + ' ');

});

$('#update').click(function() {

			//관심 목록 선택 수 확인
			if (user_check.length < 2) {
				alert("관심 카테고리를 2개 이상 선택해주세요.");
				return false;
			} else {

				var categorykey = new Array();

				//scategorykey
				for (var j = 0; j < user_check.length; j++) {
					categorykey.push(user_check[j].skey);
					console.log(categorykey[j]);
				}

				$.ajax({
				type : "post",
				url : "updateprocess2",
				data : {"categorykey" : categorykey},
				success : function(result) {

					if (result > 0) {

						alert("관심 카테고리가 수정되었습니다.");
						location.reload();

					} else {
						alert("관심 카테고리 수정 실패입니다.");
					}
				}

			});

			}
	});


	//회원 정보 수정 이동
	$(".jungbo").click(function() {
		location.href = "mypage2";
	});

	//회원 관심사 수정 이동
	$(".gss").click(function() {
		location.href = "mypage3";
	});

	//회원 작성글 이동
	$("#recentwww").click(function() {
		location.href = "mypage4";
	});

	//이름 누르면 마이페이지 메인으로 이동
	$("#mymy").click(function() {
		location.href = "mypage";
		return false;
	});

	var checkCategory = false;

	//카테고리 등록
	$('.tab-content li').click(function() {

		checkCategory = true;
		//카테고리 값 저장
		$('#category').val($(this).children('input').val());

		$('.tab-content li').removeClass('tabcontentClick');
		$(this).addClass('tabcontentClick');

	});
	
	//알림 이동
	$("#recentnotice").click(function() {
		location.href = "mypage5";
		return false;
	});
	
	//모임 이동
	$("#mymygroups").click(function() {
		location.href = "mypage6";
		return false;
	});
</script>
</body>

</html>