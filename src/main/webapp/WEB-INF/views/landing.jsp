<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>우리사이트 이름 뭐라고하셨죠?</title>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="icon" href="resources/images/fav.png" type="image/png"
	sizes="16x16">

<link rel="stylesheet" href="resources/css/main.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/color.css">
<link rel="stylesheet" href="resources/css/responsive.css">
<style>
.forgot-pwd {
	cursor: pointer;
}



.tab-content li:hover{
cursor: pointer;
}
.tab-content ul{
list-style: none;}



.click_category {
	background: #088dcd;
	color:white;
}

.modal-backdrop {
	z-index: -1;
}

.modal.fade.show {
	background: rgba(0, 0, 0, 0.5);
}

#exampleModal .modal-dialog {
	-webkit-transform: translate(0, -50%);
	-o-transform: translate(0, -50%);
	transform: translate(0, -50%);
	top: 50%;
	margin: 0 auto;
}

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

@media ( pointer : coarse) and (hover: none) {
	#header {
		background: url('https://source.unsplash.com/XT5OInaElMw/1600x900')
			black no-repeat center center scroll;
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
					<video playsinline="playsinline" autoplay="autoplay" muted="muted"
						loop="loop">
						<source src="resources/video/Clouds.mp4" type="video/mp4">
					</video>

					<div class="login-reg-bg">
						<div class="log-reg-area sign">
							<h2 class="log-title">로그인</h2>

							<form method="post" action="loginprocess">

								<div class="form-group">

									<button class="mtr-btn"
										style="background: #fef01b; color: #556677; border: 0; width: 100%;"
										onclick="location.href='kakao'">
										<img src="resources/images/kakao-talk.png"
											style="width: 30px; height: 30px; float: left;">카카오톡으로
										  로그인
									</button>
								</div>
								<p style="text-align: center;">또는</p>
								<div class="form-group">
									<input type="text" id="input" required="required" name="id"
										<c:if test="${!empty saveid}"> value=${saveid}</c:if> /> <label
										class="control-label" for="input">Id</label><i
										class="mtrl-select"></i>
								</div>
								<div class="form-group">
									<input type="password" required="required" name="password" />
									<label class="control-label" for="input">Password</label><i
										class="mtrl-select"></i>
								</div>
								<div class="form-group">
									<button class="mtr-btn signin" type="submit"
										style="width: 100%;">
										<span>로그인</span>
									</button>

								</div>
								<div class="checkbox">
									<label> <input type="checkbox"
										<c:if test="${!empty saveid}">checked</c:if> name="rememberme"
										value="ok" /><i class="check-box"></i>아이디 기억하기
									</label>
								</div>

								<div class="checkbox" style="float: right;">
									<a class="forgot-pwd signup"> 회원가입 </a> <a data-toggle="modal"
										data-target="#exampleModal" class="forgot-pwd">비밀번호 찾기</a>
								</div>
							</form>





						</div>
						<div class="log-reg-area reg">
							<h2 class="log-title">회원가입</h2>
							<p>기본정보를 입력하세요.</p>
							<form method="post">
								<div class="form-group">
									<input type="text" required="required" name="id" /> <label
										class="control-label" for="input">Id</label><i
										class="mtrl-select"></i>
								</div>

								<div class="form-group">
									<input type="password" required="required" name="password" />
									<label class="control-label" for="input">Password</label><i
										class="mtrl-select"></i>
								</div>

								<div class="form-group">
									<input type="text" required="required" name="email" /> <label
										class="control-label" for="input"><a
										href="https://wpkixx.com/cdn-cgi/l/email-protection"
										class="__cf_email__" data-cfemail="6c29010d05002c">Email</a></label><i
										class="mtrl-select"></i>
								</div>


								<div class="form-radio">
									<div class="radio">
										<label> <input type="radio" name="gender" value="M"
											checked="checked" /><i class="check-box"></i>남자
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="gender" value="F" /><i
											class="check-box"></i>여자
										</label>
									</div>
								</div>

								<div class="form-group">
									<div class="select">
										<label> 연령대 <select name="age">
												<option value="10">10대</option>
												<option value="20">20대</option>
												<option value="30" selected="selected">30대</option>
												<option value="40">40대</option>
												<option value="50">50대</option>
												<option value="60">60대</option>

										</select>
										</label> <label> 지역 <select name="location">
												<option value="1">서울특별시</option>
												<option value="2">서울특별시 종로구</option>
												<option value="3">서울특별시 중구</option>
												<option value="4">서울특별시 용산구</option>
												<option value="5">서울특별시 성동구</option>
												<option value="6">서울특별시 광진구</option>
												<option value="7">서울특별시 동대문구</option>
												<option value="8">서울특별시 중랑구</option>
												<option value="9">서울특별시 성북구</option>
												<option value="10">서울특별시 강북구</option>
												<option value="11">서울특별시 도봉구</option>
												<option value="12">서울특별시 노원구</option>
												<option value="13">서울특별시 은평구</option>
												<option value="14">서울특별시 서대문구</option>
												<option value="15">서울특별시 마포구</option>
												<option value="16">서울특별시 양천구</option>
												<option value="17">서울특별시 강서구</option>
												<option value="18">서울특별시 구로구</option>
												<option value="19">서울특별시 금천구</option>
												<option value="20">서울특별시 영등포구</option>
												<option value="21">서울특별시 동작구</option>
												<option value="22">서울특별시 관악구</option>
												<option value="23">서울특별시 서초구</option>
												<option value="24">서울특별시 강남구</option>
												<option value="25">서울특별시 송파구</option>
												<option value="26">서울특별시 강동구</option>
												<option value="27">부산광역시</option>
												<option value="28">부산광역시 중구</option>
												<option value="29">부산광역시 서구</option>
												<option value="30">부산광역시 동구</option>
												<option value="31">부산광역시 영도구</option>
												<option value="32">부산광역시 부산진구</option>
												<option value="33">부산광역시 동래구</option>
												<option value="34">부산광역시 남구</option>
												<option value="35">부산광역시 북구</option>
												<option value="36">부산광역시 해운대구</option>
												<option value="37">부산광역시 사하구</option>
												<option value="38">부산광역시 금정구</option>
												<option value="39">부산광역시 강서구</option>
												<option value="40">부산광역시 연제구</option>
												<option value="41">부산광역시 수영구</option>
												<option value="42">부산광역시 사상구</option>
												<option value="43">부산광역시 기장군</option>
												<option value="44">대구광역시</option>
												<option value="45">대구광역시 중구</option>
												<option value="46">대구광역시 동구</option>
												<option value="47">대구광역시 서구</option>
												<option value="48">대구광역시 남구</option>
												<option value="49">대구광역시 북구</option>
												<option value="50">대구광역시 수성구</option>
												<option value="51">대구광역시 달서구</option>
												<option value="52">대구광역시 달성군</option>
												<option value="53">인천광역시</option>
												<option value="54">인천광역시 중구</option>
												<option value="55">인천광역시 동구</option>
												<option value="56">인천광역시 미추홀구</option>
												<option value="57">인천광역시 연수구</option>
												<option value="58">인천광역시 남동구</option>
												<option value="59">인천광역시 부평구</option>
												<option value="60">인천광역시 계양구</option>
												<option value="61">인천광역시 서구</option>
												<option value="62">인천광역시 강화군</option>
												<option value="63">인천광역시 옹진군</option>
												<option value="64">광주광역시</option>
												<option value="65">광주광역시 동구</option>
												<option value="66">광주광역시 서구</option>
												<option value="67">광주광역시 남구</option>
												<option value="68">광주광역시 북구</option>
												<option value="69">광주광역시 광산구</option>
												<option value="70">대전광역시</option>
												<option value="71">대전광역시 동구</option>
												<option value="72">대전광역시 중구</option>
												<option value="73">대전광역시 서구</option>
												<option value="74">대전광역시 유성구</option>
												<option value="75">대전광역시 대덕구</option>
												<option value="76">울산광역시</option>
												<option value="77">울산광역시 중구</option>
												<option value="78">울산광역시 남구</option>
												<option value="79">울산광역시 동구</option>
												<option value="80">울산광역시 북구</option>
												<option value="81">울산광역시 울주군</option>
												<option value="82">세종특별자치시</option>
												<option value="83">세종특별자치시 세종특별자치시</option>
												<option value="84">경기도</option>
												<option value="85">경기도 수원시장안구</option>
												<option value="86">경기도 수원시권선구</option>
												<option value="87">경기도 수원시팔달구</option>
												<option value="88">경기도 수원시영통구</option>
												<option value="89">경기도 성남시수정구</option>
												<option value="90">경기도 성남시중원구</option>
												<option value="91">경기도 성남시분당구</option>
												<option value="92">경기도 의정부시</option>
												<option value="93">경기도 안양시만안구</option>
												<option value="94">경기도 안양시동안구</option>
												<option value="95">경기도 부천시</option>
												<option value="96">경기도 광명시</option>
												<option value="97">경기도 평택시</option>
												<option value="98">경기도 동두천시</option>
												<option value="99">경기도 안산시상록구</option>
												<option value="100">경기도 안산시단원구</option>
												<option value="101">경기도 고양시덕양구</option>
												<option value="102">경기도 고양시일산동구</option>
												<option value="103">경기도 고양시일산서구</option>
												<option value="104">경기도 과천시</option>
												<option value="105">경기도 구리시</option>
												<option value="106">경기도 남양주시</option>
												<option value="107">경기도 오산시</option>
												<option value="108">경기도 시흥시</option>
												<option value="109">경기도 군포시</option>
												<option value="110">경기도 의왕시</option>
												<option value="111">경기도 하남시</option>
												<option value="112">경기도 용인시처인구</option>
												<option value="113">경기도 용인시기흥구</option>
												<option value="114">경기도 용인시수지구</option>
												<option value="115">경기도 파주시</option>
												<option value="116">경기도 이천시</option>
												<option value="117">경기도 안성시</option>
												<option value="118">경기도 김포시</option>
												<option value="119">경기도 화성시</option>
												<option value="120">경기도 광주시</option>
												<option value="121">경기도 양주시</option>
												<option value="122">경기도 포천시</option>
												<option value="123">경기도 여주시</option>
												<option value="124">경기도 연천군</option>
												<option value="125">경기도 가평군</option>
												<option value="126">경기도 양평군</option>
												<option value="127">강원도</option>
												<option value="128">강원도 춘천시</option>
												<option value="129">강원도 원주시</option>
												<option value="130">강원도 강릉시</option>
												<option value="131">강원도 동해시</option>
												<option value="132">강원도 태백시</option>
												<option value="133">강원도 속초시</option>
												<option value="134">강원도 삼척시</option>
												<option value="135">강원도 홍천군</option>
												<option value="136">강원도 횡성군</option>
												<option value="137">강원도 영월군</option>
												<option value="138">강원도 평창군</option>
												<option value="139">강원도 정선군</option>
												<option value="140">강원도 철원군</option>
												<option value="141">강원도 화천군</option>
												<option value="142">강원도 양구군</option>
												<option value="143">강원도 인제군</option>
												<option value="144">강원도 고성군</option>
												<option value="145">강원도 양양군</option>
												<option value="146">충청북도</option>
												<option value="147">충청북도 청주시상당구</option>
												<option value="148">충청북도 청주시서원구</option>
												<option value="149">충청북도 청주시흥덕구</option>
												<option value="150">충청북도 청주시청원구</option>
												<option value="151">충청북도 충주시</option>
												<option value="152">충청북도 제천시</option>
												<option value="153">충청북도 보은군</option>
												<option value="154">충청북도 옥천군</option>
												<option value="155">충청북도 영동군</option>
												<option value="156">충청북도 증평군</option>
												<option value="157">충청북도 진천군</option>
												<option value="158">충청북도 괴산군</option>
												<option value="159">충청북도 음성군</option>
												<option value="160">충청북도 단양군</option>
												<option value="161">충청남도</option>
												<option value="162">충청남도 천안시동남구</option>
												<option value="163">충청남도 천안시서북구</option>
												<option value="164">충청남도 공주시</option>
												<option value="165">충청남도 보령시</option>
												<option value="166">충청남도 아산시</option>
												<option value="167">충청남도 서산시</option>
												<option value="168">충청남도 논산시</option>
												<option value="169">충청남도 계룡시</option>
												<option value="170">충청남도 당진시</option>
												<option value="171">충청남도 금산군</option>
												<option value="172">충청남도 부여군</option>
												<option value="173">충청남도 서천군</option>
												<option value="174">충청남도 청양군</option>
												<option value="175">충청남도 홍성군</option>
												<option value="176">충청남도 예산군</option>
												<option value="177">충청남도 태안군</option>
												<option value="178">전라북도</option>
												<option value="179">전라북도 전주시완산구</option>
												<option value="180">전라북도 전주시덕진구</option>
												<option value="181">전라북도 군산시</option>
												<option value="182">전라북도 익산시</option>
												<option value="183">전라북도 정읍시</option>
												<option value="184">전라북도 남원시</option>
												<option value="185">전라북도 김제시</option>
												<option value="186">전라북도 완주군</option>
												<option value="187">전라북도 진안군</option>
												<option value="188">전라북도 무주군</option>
												<option value="189">전라북도 장수군</option>
												<option value="190">전라북도 임실군</option>
												<option value="191">전라북도 순창군</option>
												<option value="192">전라북도 고창군</option>
												<option value="193">전라북도 부안군</option>
												<option value="194">전라남도</option>
												<option value="195">전라남도 목포시</option>
												<option value="196">전라남도 여수시</option>
												<option value="197">전라남도 순천시</option>
												<option value="198">전라남도 나주시</option>
												<option value="199">전라남도 광양시</option>
												<option value="200">전라남도 담양군</option>
												<option value="201">전라남도 곡성군</option>
												<option value="202">전라남도 구례군</option>
												<option value="203">전라남도 고흥군</option>
												<option value="204">전라남도 보성군</option>
												<option value="205">전라남도 화순군</option>
												<option value="206">전라남도 장흥군</option>
												<option value="207">전라남도 강진군</option>
												<option value="208">전라남도 해남군</option>
												<option value="209">전라남도 영암군</option>
												<option value="210">전라남도 무안군</option>
												<option value="211">전라남도 함평군</option>
												<option value="212">전라남도 영광군</option>
												<option value="213">전라남도 장성군</option>
												<option value="214">전라남도 완도군</option>
												<option value="215">전라남도 진도군</option>
												<option value="216">전라남도 신안군</option>
												<option value="217">경상북도</option>
												<option value="218">경상북도 포항시남구</option>
												<option value="219">경상북도 포항시북구</option>
												<option value="220">경상북도 경주시</option>
												<option value="221">경상북도 김천시</option>
												<option value="222">경상북도 안동시</option>
												<option value="223">경상북도 구미시</option>
												<option value="224">경상북도 영주시</option>
												<option value="225">경상북도 영천시</option>
												<option value="226">경상북도 상주시</option>
												<option value="227">경상북도 문경시</option>
												<option value="228">경상북도 경산시</option>
												<option value="229">경상북도 군위군</option>
												<option value="230">경상북도 의성군</option>
												<option value="231">경상북도 청송군</option>
												<option value="232">경상북도 영양군</option>
												<option value="233">경상북도 영덕군</option>
												<option value="234">경상북도 청도군</option>
												<option value="235">경상북도 고령군</option>
												<option value="236">경상북도 성주군</option>
												<option value="237">경상북도 칠곡군</option>
												<option value="238">경상북도 예천군</option>
												<option value="239">경상북도 봉화군</option>
												<option value="240">경상북도 울진군</option>
												<option value="241">경상북도 울릉군</option>
												<option value="242">경상남도</option>
												<option value="243">경상남도 창원시의창구</option>
												<option value="244">경상남도 창원시성산구</option>
												<option value="245">경상남도 창원시마산합포구</option>
												<option value="246">경상남도 창원시마산회원구</option>
												<option value="247">경상남도 창원시진해구</option>
												<option value="248">경상남도 진주시</option>
												<option value="249">경상남도 통영시</option>
												<option value="250">경상남도 사천시</option>
												<option value="251">경상남도 김해시</option>
												<option value="252">경상남도 밀양시</option>
												<option value="253">경상남도 거제시</option>
												<option value="254">경상남도 양산시</option>
												<option value="255">경상남도 의령군</option>
												<option value="256">경상남도 함안군</option>
												<option value="257">경상남도 창녕군</option>
												<option value="258">경상남도 고성군</option>
												<option value="259">경상남도 남해군</option>
												<option value="260">경상남도 하동군</option>
												<option value="261">경상남도 산청군</option>
												<option value="262">경상남도 함양군</option>
												<option value="263">경상남도 거창군</option>
												<option value="264">경상남도 합천군</option>
												<option value="265">제주특별자치도</option>
												<option value="266">제주특별자치도 제주시</option>
												<option value="267">제주특별자치도 서귀포시</option>

										</select>
										</label>

									</div>


								</div>







								<div class="submit-btns">
									<button class="mtr-btn pre" type="button" style="float: left;">
										<span>이전</span>
									</button>

									<button id="joincheck1" class="mtr-btn signup" type="button"
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
										<c:forEach items="${dcategory}" var="list" varStatus="status">
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
										<c:forEach items="${dcategory}" var="list" varStatus="status">


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
														<li><input type="hidden" value="${item.SCategoryKey}">${item.SCategoryName}</li>
													</c:if>
												</c:forEach>
											</ul>
									</div>

									</c:forEach>
								</div>
						</div>


						<div class="text-user_category"></div>





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



	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">비밀번호 찾기</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body widget">
					<form class="passwordsearch">
						<p>임시 비밀번호를 발급하여 해당 이메일로 보내드립니다.</p>

						<div class="form-group">
							<input type="text" required="required" name="id"
								placeholder="가입했던 아이디를 입력해주세요." /> <i class="mtrl-select"></i>
						</div>


						<div class="form-group">
							<input type="text" required="required" name="email"
								placeholder="가입했던 이메일을 입력해주세요." /> <i class="mtrl-select"></i>
						</div>

						<button type="submit" class="btn btn-primary">확인</button>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">닫기</button>
					</form>
				</div>

			</div>
		</div>
	</div>


</body>

<script src="resources/js/main.min.js"></script>
<script src="resources/js/script.js"></script>
<script>
	//sns 회원가입일 경우
	var logintype = "${logintype }";
	var loginid = "${id }";

	//이전 다음 체크
	var join = 0;

	if (logintype && loginid) {

		//회원가입 페이지가 첫 페이지가 되어야함
		join = 1;
		$('.login-reg-bg').addClass('show');
		$('.log-title:eq(1)').text("SNS 회원가입");
		$('.log-title:eq(1)').next().text("추후 SNS 계정으로 로그인 합니다.");

		//아이디, 비밀번호 입력칸 숨김
		$('.log-reg-area:eq(1) .form-group:eq(0)').css("display", 'none');
		$('.log-reg-area:eq(1) .form-group:eq(1)').css("display", 'none');
		$('.log-reg-area:eq(1) .form-group:eq(2)').css("display", 'none');
	}

	$('button.pre').on("click", function() {
		if (join != 0)
			join--;

		if (join == 1)
			$('.login-reg-bg').removeClass('detail');
		if (join == 0) {

			if (logintype && loginid) {

				alert('sns 가입이 취소됩니다.');
				location.href = "login";
			} else {
				$('.login-reg-bg').removeClass('show');
			}

		}

	});

	$('.signup').on("click", function() {

		if (join != 2)
			join++;

		if (join == 1) {

			$('.login-reg-bg').addClass('show');
		} else if (join == 2) {
			//기본정보가 잘 입력되어있는지 확인
			var check = joinDefaultCheck();

			if (check)
				$('.login-reg-bg').addClass('show detail');
			else
				join--;

		}

		return false;
	});

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

	var checkId = false;
	var checkPassword = false;

	var checkEmail = false;

	$('form:eq(1) input:eq(0)').keyup(function() {

		var id = $(this).val();

		//아이디 유효성 검사 5글자 이상, 12글자 이하 영숫자포함
		var req = /^\w{5,12}$/;

		var label = $('form:eq(1) label:eq(0)');

		if (req.test(id)) {

			label.text('Id');

			//ajax로 사용가능한 아이디인지 확인
			$.ajax({
				method : "post",
				url : "idcheck",
				data : {
					"id" : id
				},
				success : function(result) {

					//아이디 없음
					if (result == 0) {
						checkId = true;
						label.text('사용 가능한 아이디입니다.');
						//아이디 있음
					} else {
						checkId = false;
						label.text('이미 존재하는 아이디입니다.');
					}
				}

			});

		} else {
			checkId = false;
			label.text('영숫자로 5글자 이상 12글자 이하로 작성하세요.');

		}
	});

	$('form:eq(1) input:eq(1)').keyup(function() {

		var password = $(this).val();

		//비밀번호 유효성 검사 5글자 이상, 12글자 이하 영숫자포함
		var req = /^\w{5,12}$/;

		var label = $('form:eq(1) label:eq(1)');

		if (req.test(password)) {
			checkPassword = true;
			label.text('Password');
		} else {
			checkPassword = false;
			label.text('영숫자로 5글자 이상 12글자 이하로 작성하세요.');
		}
	});

	$('form:eq(1) input:eq(2)')
			.keyup(
					function() {

						var email = $(this).val();

						//이메일 유효성
						var req = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

						var label = $('form:eq(1) label:eq(2)');

						if (req.test(email)) {
							checkEmail = true;
							label.text('Email');

						} else {
							checkEmail = false;
							label.text('올바른 이메일을 입력하세요.');

						}
					});

	//기본정보 잘 입력되어있는지 확인
	function joinDefaultCheck() {

		if (!logintype && !loginid) {

			if (!checkId) {
				alert('id가 올바르지 않습니다.');
				$('form:eq(1) input:eq(0)').focus();
				return false;
			}
			if (!checkPassword) {
				alert('password가 올바르지 않습니다.');
				$('form:eq(1) input:eq(1)').focus();
				return false;
			}

			if (!checkEmail) {
				alert('email이 올바르지 않습니다.');
				$('form:eq(1) input:eq(2)').focus();
				return false;
			}
		}
		return true;
	}

	$('.passwordsearch').submit(function() {

		$.ajax({
			url : "passwordsearch",
			data : $(this).serialize(),
			method : "get",
			success : function(result) {

				switch (result) {
				case 0:
					alert("해당 정보가 없습니다.");

					break;
				case 1:
					alert("이메일 발송을 완료하였습니다.");
					break;
				case 2:
					alert("이메일 발송에 실패했습니다.");
					break;
				}
			}

		});

		return false;

	});

	//회원가입 버튼 클릭 시
	$('#join').click(
			function() {

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

					var object = {

						"gender" : $('input[name="gender"]:checked').val(),
						"age" : $('select[name="age"]').val(),
						"location" : $('select[name="location"]').val(),
						"categorykey" : categorykey

					};

					/*로그인 타입에 따라서 object의 값이 달라짐*/
					if (!logintype && !loginid) {
						object.id = $('form:eq(1) input:eq(0)').val(),
								object.logintype = "0", object.password = $(
										'form:eq(1) input:eq(1)').val(),
								object.email = $('form:eq(1) input:eq(2)')
										.val();

					} else {

						object.id = loginid, object.logintype = logintype,
								object.password = "", object.email = "";
					}

					console.log(object);

					$.ajax({

						method : "post",
						url : "joinProcess",
						data : object,
						success : function(result) {

							if (result == 1) {

								alert("회원가입되었습니다.");
								location.href = "login";

							} else {
								alert("회원가입에 실패했습니다.");
							}
						}

					});

				}
			});
</script>
</html>