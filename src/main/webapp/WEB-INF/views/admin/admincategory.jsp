<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../mainpage/header.jsp" />

<style>
.editing-interest form ol>li {
	width: 50%;
	float: left;
}
</style>





<section>
	<div class="gap gray-bg">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="row" id="page-contents">
						<div class="col-lg-3">
							<aside class="sidebar static">
								<div class="widget">
									<h4 class="widget-title">관리자 메뉴</h4>
									<ul class="naves">
										<li><i class="ti-clipboard"></i> <a href="admin" title="">통계</a>
										</li>
										<li><i class="fas fa-user"></i> <a href="adminusers"
											title="">회원</a></li>
										<li><i class="fas fa-users"></i> <a href="admingroup"
											title="">모임</a></li>

										<li><i class="fas fa-align-justify"></i> <a
											href="admincategory" title="">카테고리</a></li>

										<li><i class="fas fa-clipboard"></i> <a
											href="adminnotice" title="">공지사항</a></li>

									</ul>
								</div>
								<!-- 관리자 메뉴 -->


							</aside>
						</div>
						<!-- sidebar -->
						<div class="col-lg-6">
							<div class="central-meta">
								<div class="editing-interest">
									<h5 class="f-title">
										<i class="ti-heart"></i>카테고리
									</h5>
									<p>모임의 카테고리 종류를 추가합니다.</p>
									<form class="CategorySetting">
										<label>카테고리: </label> <input type="text"
											placeholder="대분류:소분류 형식으로 입력하세요." onkeypress="press()">
										<button class="addCategory" type="button">추가</button>

										<ol class="interest-added">
											<c:forEach items="${categorylist }" var="item">
												<li><input type="hidden" value="${item.scategorykey }">
													<input type="hidden" value="${item.dcategorykey }">
													<a title="">${item.dname } : ${item.sname }</a></li>

											</c:forEach>


										</ol>

									</form>
								</div>
							</div>

						</div>



						<!-- 요청 목록 -->
						<div class="col-lg-3">
							<aside class="sidebar static">
								<div class="widget">
									<h4 class="widget-title">요청 목록</h4>
									<ul class="followers">

										<c:forEach items="${listCategory }" var="item">
											<li><input type="hidden" value="${item.dname }">
												<input type="hidden" value="${item.sname }"> <span>


													<c:choose>
														<c:when test="${empty item.sname}">
													대분류 : ${item.dname }
													</c:when>
														<c:otherwise>
													${item.dname } : ${item.sname }
													</c:otherwise>
													</c:choose>


											</span>

												<p>${item.requestkey }번의요청이 들어왔습니다.</p>
												<div></div></li>



										</c:forEach>


									</ul>
								</div>


							</aside>
						</div>
						<!-- 요청 끝 -->
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- footer -->
<jsp:include page="../mainpage/footer.jsp" />
<!-- footer end -->





<script src="resources/js/main.min.js"></script>
<script src="resources/js/script.js"></script>
<script>
	$('.CategorySetting').submit(function() {
		return false;
	});

	$('.followers li').click(function() {

		var index = $(this).index();

		var dname = $(this).children('input:eq(0)').val();
		var sname = $(this).children('input:eq(1)').val();

		$.ajax({
			url : "AdminInsertCategory",
			data : {
				"dname" : dname,
				"sname" : sname
			},
			method : "post",
			success : function(result) {
				if (result > 0) {
					$('.followers li:eq(' + index + ')').remove();
					alert('추가되었습니다.');
				}
			}

		});

		//	alert(index);
		//alert($(this).children('input:eq(0)').val());
		//	alert($(this).children('input:eq(1)').val());

	});

	function press() {

		if (window.event.keyCode == 13) {
			addCategory();
		}

	}

	$('.addCategory').click(function() {

		addCategory();

	});

	//카테고리 추가
	function addCategory() {
		var text = $('.addCategory').prev().val();

		if (text.indexOf(':') != -1) {
			var result = text.split(':');

			if (result.length == 2 && result[0] && result[1]) {
				//alert('대분류 :' + result[0]);
				//alert('소분류 :' + result[1]);

				$.ajax({
					url : "AdminAddCategory",
					data : {
						"dname" : result[0],
						"sname" : result[1]
					},
					method : "post",
					success : function(result) {
						if (result == 1) {
							alert("추가되었습니다.");
							location.href = "admincategory";
						} else
							alert('이미 존재하는 카테고리입니다.');
					}
				});

			} else {
				alert("대분류:소분류 형식으로 작성해주세요.");
			}

		} else {
			alert("대분류:소분류 형식으로 작성해주세요.");
		}

	}
</script>
</body>

</html>