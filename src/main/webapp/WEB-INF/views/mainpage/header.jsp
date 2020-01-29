<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>GroupIN with together, GroupIN</title>
<link rel="icon" href="resources/images/fav.png" sizes="16x16">
<link rel="stylesheet" href="resources/css/main.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/color.css">
<link rel="stylesheet" href="resources/css/responsive.css">

<script src="resources/js/main.min.js"></script>
<script src="resources/js/script.js"></script>
</head>
<body>
	<!--<div class="se-pre-con"></div>-->
	<div class="theme-layout">




		<!-- 작아졌을때 나오는 헤더 (반응형) -->
		<div class="responsive-header">
			<div class="mh-head first Sticky">
				<span class="mh-btns-left"> <a class="" href="#menu"><i
						class="fa fa-align-justify"></i></a>
				</span> <span class="mh-text"> <a href="main2" title="">
						<img src="resources/images/logo2.png" alt="">
				</a>
				</span> <span class="mh-btns-right"> <a class="fa fa-sliders"
					href="#shoppingbag"></a>
				</span>
			</div>
			<div class="mh-head second">
				<form class="mh-form">
					<input type="text" placeholder="search" /> <a href="#/"
						class="fa fa-search"></a>
				</form>
			</div>
			<nav id="menu" class="res-menu">
				<ul>
					<li><span>카테고리</span>
						<ul>
							<li><a href="index-2.html" title="">Home Social</a></li>
							<li><a href="index2.html" title="">Home Social 2</a></li>
							<li><a href="index-company.html" title="">Home Company</a></li>
							<li><a href="landing.html" title="">Login page</a></li>
							<li><a href="logout.html" title="">Logout Page</a></li>
							<li><a href="main2" title="">news feed</a></li>
						</ul></li>
					<li><span>이 달의 모임</span>
						<ul>
							<li><a href="time-line.html" title="">timeline</a></li>
							<li><a href="timeline-friends.html" title="">timeline
									friends</a></li>
							<li><a href="timeline-groups.html" title="">timeline
									groups</a></li>
							<li><a href="timeline-pages.html" title="">timeline
									pages</a></li>
							<li><a href="timeline-photos.html" title="">timeline
									photos</a></li>
							<li><a href="timeline-videos.html" title="">timeline
									videos</a></li>
							<li><a href="fav-page.html" title="">favourit page</a></li>
							<li><a href="groups.html" title="">groups page</a></li>
							<li><a href="page-likers.html" title="">Likes page</a></li>
							<li><a href="people-nearby.html" title="">people nearby</a></li>


						</ul></li>
					<li><span>마이페이지</span>
						<ul>
							<li><a href="create-fav-page.html" title="">create fav
									page</a></li>
							<li><a href="edit-account-setting.html" title="">edit
									account setting</a></li>
							<li><a href="edit-interest.html" title="">edit-interest</a></li>
							<li><a href="edit-password.html" title="">edit-password</a></li>
							<li><a href="edit-profile-basic.html" title="">edit
									profile basics</a></li>
							<li><a href="edit-work-eductation.html" title="">edit
									work educations</a></li>
							<li><a href="messages.html" title="">message box</a></li>
							<li><a href="inbox.html" title="">Inbox</a></li>
							<li><a href="notifications.html" title="">notifications
									page</a></li>
						</ul></li>
					<li><span>홍보게시판</span>
						<ul>
							<li><a href="forum.html" title="">Forum Page</a></li>
							<li><a href="forums-category.html" title="">Fourm
									Category</a></li>
							<li><a href="forum-open-topic.html" title="">Forum Open
									Topic</a></li>
							<li><a href="forum-create-topic.html" title="">Forum
									Create Topic</a></li>
						</ul></li>
					<li><span>뭐넣냐</span>
						<ul>
							<li><a href="shop.html" title="">Shop Products</a></li>
							<li><a href="shop-masonry.html" title="">Shop Masonry
									Products</a></li>
							<li><a href="shop-single.html" title="">Shop Detail Page</a></li>
							<li><a href="shop-cart.html" title="">Shop Product Cart</a></li>
							<li><a href="shop-checkout.html" title="">Product
									Checkout</a></li>
						</ul></li>
				</ul>
			</nav>
		</div>
		<!-- 작아졌을때나오는 header(반응형) 끝 -->


		<!-- 기존 화면 header 시작 -->
		<div class="topbar stick">
			<!-- 로고 -->
			<div class="logo">
				<a title="" href="main2"> <img
					src="resources/images/logo.png" alt=""></a>
			</div>
			<!-- //로고 -->

			<!-- 카테고리 -->
			<div class="top-area">
				<ul class="main-menu">
					<li><a href="#" title="" onclick="allMenu(); return false;">전체카테고리</a></li>
					<li><a href="prboard" title="">홍보게시판</a></li>
					<li><a href="prboard" title="">모임 랭킹</a></li>
					<li><a href="groupCreate" title="">새로운 모임 만들기</a></li>
					
				</ul>

				<!-- 전체카테고리 -->
				<div id="all-menu" class="all-menu">
					<div class="inner">
						
					</div>
				</div>
				<!-- //전체카테고리 -->


			</div>
			<!-- //카테고리 -->

			<!-- 우측메뉴 -->
			<div class="right-menu">
				<ul class="setting-area">
					<li>
						<div class="box-search">
							<form action="searchText" method="get" class="form-search searchAll2">
								<input name="text" type="text" placeholder="">
								<button type="submit" class="searchAll">
								<i class="ti-search"></i></button>
							</form>
						</div>
					</li>
					<!-- 검색창 bar -->
					
					
					<li><a href="main2" title="Home" data-ripple=""><i
							class="ti-home"></i></a></li>
					<li>
					<a href="#" title="Notification" data-ripple="">
						<i class="ti-bell"><span>new</span></i>
					</a>
					<div class="dropdowns">
						<span>알림 내역</span>
						<ul class="drops-menu">
							
							
						</ul>
						<a href="notifications.html" title="" class="more-mesg">view more</a>
					</div>
				</li>
					
				</ul>
				<div class="user-img">
					<c:choose>
						
						<c:when test="${empty id }">
						<img src="resources/images/resources/admin.jpg" alt="">
						
						<div class="user-setting" onclick="location.href='login'">
						<a title=""><i class="ti-pencil-alt"></i>로그인</a>
					</div>
					
						</c:when>
						
						<c:otherwise>
						
						<c:choose>
							<c:when test="${empty image}">
								<img src="resources/images/resources/admin.jpg" alt="">
							</c:when>
							<c:otherwise>
							<img src= "<spring:url value='/image${image}'/>"/>
							</c:otherwise>
						</c:choose>
						
																		
						<div class="user-setting">
						<c:choose>
							<c:when test="${id == 'admin'}">
							<div onclick="location.href='admin'">
							<a href="#" title=""><i class="ti-pencil-alt"></i>관리자 메뉴</a>
							</div>
							</c:when>
							
							<c:otherwise>
								<div  onclick="location.href='mypage2'">
							<a href="#" title=""><i class="ti-pencil-alt"></i>정보수정</a>
							</div>
							</c:otherwise>
							
						</c:choose>
						<div  onclick="location.href='logout'">
						<a href="" title=""><i class="ti-power-off"></i>로그아웃</a>
						</div>
						</div>
					
					
						</c:otherwise>
					</c:choose>
					
					
				</div>
			</div>
		</div>
		<!-- 기존 화면 header 끝 -->

		<script>
			init_menu();

			function allMenu() {
				if ($('#all-menu').css('display') == 'none') {
					$('#all-menu').show();
				} else {
					$('#all-menu').hide();
				}
			}
			
			
			
			//카테고리 전체 목록을 셋팅합니다.
			function init_menu(){
				
				$.ajax({
					url : "allCategory",
					success : function(result){
						console.log(result);
						
						//대분류 카테고리 for문
						for(var i = 0; i < result.dcategory.length; i++){
							var tag;
							
							tag += '<dl>';
							tag += '<dt>'+result.dcategory[i].dcategoryName+'</dt>';
							
							//해당 대분류의 소분류 for문
							for(var j = 0; j < result.scategory.length; j++){
								
								if(result.dcategory[i].dcategoryKey == 
									result.scategory[j].dcategoryKey){
									tag += '<dd>';
									tag += '<a href="">'+result.scategory[j].scategoryName+'</a>';
									tag += '</dd>';
								}
							}
							tag += '</dl>';
						}
						
						
						$('#all-menu .inner').html(tag);
						
						//카테고리 붙이기
						
						
					}
					
				});
			}
			
			$('.searchAll').click(function(){
				
				sendSearch($('.searchAll2 input').val());
			
			
			});
			
			
			$('.searchAll2 input').keyup(function(){
				   if (window.event.keyCode == 13) {
					   
						sendSearch($('.searchAll2 input').val());
			   
			        }


			});
			
			function sendSearch(text){
				
				if(text)
				location.href="searchText?text="+text;
			}
			
			var count = 0;
			setInterval(checkmessage, 10000);
			checkmessage();
			
			
	
			
			function checkmessage(){
				
				
			
				var id = '${id}';
				
				if(id){
					
					
				$.ajax({
					url : "getMyMessage",
					success : function(result){
						//메세지 필터
						
						var msg = result.filter(function (item) {
							return item.checkDate == null 
							});
						
						if(count != msg.length){
						$('.ti-bell span').text(msg.length);
						$('.ti-bell span').css('color','red');
						
						printMessage(msg);
						}
						
						count = msg.length;
					}
					
				});
				
				}else{
					console.log("로그아웃상태이므로 안돌림.");
				}
			}
		
			
			function printMessage(result){
				var text = '';
				

				console.log(result);
				
				for(var i = 0; i < result.length; i++){
					
					
					
					var date1 = '';
					date1 += result[i].mgDate.year+"-";
					date1 += result[i].mgDate.monthValue+"-";
					date1 += result[i].mgDate.dayOfYear+" ";	
					date1 += result[i].mgDate.hour+":";	
					date1 += result[i].mgDate.minute+":";	
					date1 += result[i].mgDate.second;
					
					
					text += '<li>';
					text += '<a href="#" title="">';
					text += '<div class="mesg-meta">';
					text += '<span>'+result[i].mgContent+'</span>';
				
					text += '<i>'+timeBefore(new Date(date1))+'</i>';
					text += '</div>';
					text += '</a>';
					switch(result[i].mgSort){
					case 'N':
						text += '<span class="tag green">NOTICE</span>';
						break;
						
					case 'D':
						text += '<span class="tag green">NEW</span>';
						break;
					}
					
					text += '</li>';
					
					
					
					
				}
				$('.drops-menu').html(text);
			}
			
			
			    function timeBefore(dd){
			        //현재시간
			        var now = new Date(); 
			      
			        //글쓴 시간 
			        var writeDay = dd;
			        
			        
			        var returnValue;
			        
			        var minus;
			        if(now.getFullYear() > writeDay.getFullYear()){
			            minus= now.getFullYear()-writeDay.getFullYear();
			         
			            returnValue = minus+"년 전";
			        }else if(now.getMonth() > writeDay.getMonth()){
			            minus= now.getMonth()-writeDay.getMonth();
			         
			            returnValue = minus+"달 전";
			        }else if(now.getDate() > writeDay.getDate()){
			            minus= now.getDate()-writeDay.getDate();
			         
			            returnValue = minus+"일 전";
			        }else if(now.getDate() == writeDay.getDate()){
			            var nowTime = now.getTime();
			            var writeTime = writeDay.getTime();
			            if(nowTime>writeTime){
			                sec =parseInt(nowTime - writeTime) / 1000;
			                day  = parseInt(sec/60/60/24);
			                sec = (sec - (day * 60 * 60 * 24));
			                hour = parseInt(sec/60/60);
			                sec = (sec - (hour*60*60));
			                min = parseInt(sec/60);
			                sec = parseInt(sec-(min*60));
			                if(hour>0){
			                 
			                	  returnValue = hour+"시간 전";
			                }else if(min>0){
			                 
			                	  returnValue = min+"분 전";
			                }else if(sec>0){
			                 
			                	 returnValue =sec+"초 전";
			                }
			            }
			        }
			        
			        return returnValue;
			    }
		</script>