<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>우리사이트 이름 뭐라고하셨죠?</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="icon" href="resources/images/fav.png" type="image/png" sizes="16x16">

<link rel="stylesheet" href="resources/css/main.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/color.css">
<link rel="stylesheet" href="resources/css/responsive.css">
<style>
.basics li {
cursor: pointer;}

.click_category{
background: #eee;}



#header {
  position: relative;
  background-color: black;
/**  height: 75vh;**/
  min-height: 25rem;
  width: 100%;
  overflow: hidden;
}

#header video {
  position: absolute;
  top: 50%;
  left: 50%;
  min-width: 100%;
  min-height: 100%;
  width: auto;
  height: auto;
  z-index: 0;
  -ms-transform: translateX(-50%) translateY(-50%);
  -moz-transform: translateX(-50%) translateY(-50%);
  -webkit-transform: translateX(-50%) translateY(-50%);
  transform: translateX(-50%) translateY(-50%);
}

#header .login-reg-bg {
  position: relative;
  z-index: 2;
}

#header .overlay {
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  background-color: black;
  opacity: 0.5;
  z-index: 1;
}

@media (pointer: coarse) and (hover: none) {
  #header {
    background: url('https://source.unsplash.com/XT5OInaElMw/1600x900') black no-repeat center center scroll;
  }
  #header video {
    display: none;
  }
}



</style>
</head>
<body>
	<!--<div class="se-pre-con"></div>-->
	<div class="theme-layout">
		<div class="container-fluid pdng0">
			<div class="row merged">
				
				<div id="header" class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
    <source src="resources/video/Clouds.mp4" type="video/mp4">
  </video>
  
					<div class="login-reg-bg">
						<div class="log-reg-area sign">
							<h2 class="log-title">로그인</h2>

							<form method="post" action="loginprocess">
								<div class="form-group">
									<input type="text" id="input" required="required" name="id" /> <label
										class="control-label" for="input">Id</label><i
										class="mtrl-select"></i>
								</div>
								<div class="form-group">
									<input type="password" required="required" name="password"/> <label
										class="control-label" for="input">Password</label><i
										class="mtrl-select"></i>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" checked="checked" name="rememberme" /><i
										class="check-box"></i>아이디 기억하기
									</label>
								</div>
							<a href="#" title="" class="forgot-pwd">비밀번호 찾기</a>
								<div class="submit-btns">
									<button class="mtr-btn signin" type="submit">
										<span>로그인</span>
									</button>
									<button class="mtr-btn signup" type="button">
										<span>회원가입</span>
									</button>
								</div>
							</form> 
						</div>
						<div class="log-reg-area reg">
							<h2 class="log-title">회원가입</h2>
							<p>기본정보를 입력하세요.</p>
							<form method="post">
								<div class="form-group">
									<input type="text" required="required" name="id"/> <label
										class="control-label" for="input">Id</label><i
										class="mtrl-select"></i>
								</div>
								<div class="form-group">
									<input type="text" required="required" name="nickname"/> <label
										class="control-label" for="input">Nickname</label><i
										class="mtrl-select"></i>
								</div>
								<div class="form-group">
									<input type="password" required="required" name="password" /> <label
										class="control-label" for="input">Password</label><i
										class="mtrl-select"></i>
								</div>

								<div class="form-group">
									<input type="text" required="required" name="email"/> <label
										class="control-label" for="input"><a
										href="https://wpkixx.com/cdn-cgi/l/email-protection"
										class="__cf_email__" data-cfemail="6c29010d05002c">Email</a></label><i
										class="mtrl-select"></i>
								</div>


								<div class="form-radio">
									<div class="radio">
										<label> <input type="radio" name="gender"
											checked="checked" /><i class="check-box"></i>남자
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="gender" /><i
											class="check-box"></i>여자
										</label>
									</div>
								</div>

								<div class="form-group">
									<div class="select">
										<label> 연령대 <select name="age">
												<option value="10">10</option>
												<option value="20">20</option>
												<option value="30" selected="selected">30</option>
												<option value="40">40</option>
												<option value="50">50</option>
												<option value="60">60</option>

										</select>
										</label> 
				
										<label> 지역 <select name="location">
										
						<c:forEach items="${location}" var="list">
<option value="${list.locationKey }">${list.SWhere} ${list.DWhere }</option>
</c:forEach>

										</select>
										</label>
									</div>


								</div>







								<div class="submit-btns">
									<button class="mtr-btn pre" type="button" style="float: left;">
										<span>이전</span>
									</button>

									<button class="mtr-btn signup" type="button"
										style="float: right;">
										<span>다음</span>
									</button>
								</div>
							</form>
						</div>





						<div class="log-reg-area reg2">
							<h2 class="log-title">회원가입</h2>
							<p>관심있는 카테고리를 선택해주세요.</p>
							<form method="post" action="joinprocess">


								<div class="d-flex flex-row mt-2">
									<ul class="nav nav-tabs nav-tabs--vertical nav-tabs--left">
										<li class="nav-item"><a href="#basic"
											class="nav-link active" data-toggle="tab">게임</a></li>
										<li class="nav-item"><a href="#location" class="nav-link"
											data-toggle="tab">운동</a></li>
										<li class="nav-item"><a href="#work" class="nav-link"
											data-toggle="tab">교육</a></li>
										<li class="nav-item"><a href="#interest" class="nav-link"
											data-toggle="tab">예술</a></li>
										<li class="nav-item"><a href="#lang" class="nav-link"
											data-toggle="tab">음악</a></li>
									</ul>
									<div class="tab-content">
										<div class="tab-pane fade show active" id="basic">
												<ul class="basics">
												<li>리그오브레전드</li>
												<li>오버워치</li>
												<li>스타크래프트</li>
											</ul>
										</div>
										<div class="tab-pane fade" id="location" role="tabpanel">
											<ul class="basics">
												<li>자전거</li>
												<li>헬스</li>
												<li>수영</li>
											</ul>
										</div>
										<div class="tab-pane fade" id="work" role="tabpanel">
											<ul class="basics">
												<li>스터디</li>
												<li>도서관</li>
												<li>학원</li>
											</ul>
										</div>
										<div class="tab-pane fade" id="interest" role="tabpanel">
											<ul class="basics">
												<li>미술</li>
												<li>웹툰</li>
												<li>만화</li>
											</ul>
										</div>
										<div class="tab-pane fade" id="lang" role="tabpanel">
											<ul class="basics">
												<li>클래식</li>
												<li>발라드</li>
												<li>팝</li>
											</ul>
										</div>
									</div>
								</div>
								
								
								<div class="text-user_category">
								
								</div>





								<div class="submit-btns">
									<button class="mtr-btn pre" type="button" style="float: left;">
										<span>이전</span>
									</button>

									<button id="join" class="mtr-btn signup" type="submit"
										style="float: right;">
										<span>회원가입</span>
									</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	
	<script src="resources/js/main.min.js"></script>
	<script src="resources/js/script.js"></script>
	<script>
	
	var user_check = new Array();
	
	$('.basics li').click(function(){
		
	$(this).toggleClass('click_category');
	
	
	if($(this).hasClass('click_category'))
		user_check.push($(this).text());
	else{
		
		var idx = user_check.indexOf($(this).text());
		user_check.splice(idx,1);
	}
	$('.text-user_category').text('');
	for(var a = 0; a < user_check.length; a++)
		$('.text-user_category').append(user_check[a]+' ');

	

	});
	
	
	
	var checkId= false;
	var checkPassword= false;
	
	$('form:eq(1) input:eq(0)').keyup(function(){
		
	    var id = $(this).val();
	  
		//아이디 유효성 검사 5글자 이상, 12글자 이하 영숫자포함
		var req = /^\w{5,12}$/;
		
		
		var label = $('form:eq(1) label:eq(0)');
		
		if(req.test(id)){
			
			label.text('Id');
			
			//ajax로 사용가능한 아이디인지 확인
			$.ajax({
				method : "post",
				url: "idcheck",
				data : {"id" : id},
				success : function(result){
					
					//아이디 없음
					if(result == 0){
						checkId = true;
						label.text('사용 가능한 아이디입니다.');
					//아이디 있음
					}else{
						checkId = false;
						label.text('이미 존재하는 아이디입니다.');
					}
				}
				
				
			});
			
			
		
		}else{
			checkId = false;
			label.text('영숫자로 5글자 이상 12글자 이하로 작성하세요.');
		
		}
	});
	
	
	$('form:eq(1) input:eq(2)').keyup(function(){
		
	    var password = $(this).val();
	  
		//비밀번호 유효성 검사 5글자 이상, 12글자 이하 영숫자포함
		var req = /^\w{5,12}$/;
		
		
		var label = $('form:eq(1) label:eq(2)');
		
		if(req.test(password)){
			checkPassword = true;
			label.text('Password');
		}else{
			checkPassword = false;
			label.text('영숫자로 5글자 이상 12글자 이하로 작성하세요.');
		}
	});
	
	
	
	//회원가입 버튼 클릭 시
	$('#join').click(function(){
		
		//회원가입 기본 정보 데이터를 가져옵니다.
		var data = $('form:eq(1)').serialize(); 
		console.log(data);

	});
	
	</script>
</body>

</html>