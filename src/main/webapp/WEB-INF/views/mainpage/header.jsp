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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script src="resources/js/main.min.js"></script>
<script src="resources/js/script.js"></script>
<style>
#categoryList{
list-style: none;

}
</style>
</head>
<body>
	<!--<div class="se-pre-con"></div>-->
	<div class="theme-layout">




		<!-- 작아졌을때 나오는 헤더 (반응형) -->
		<div class="responsive-header">
			<div class="mh-head first Sticky">
				<span class="mh-btns-left"> <a class="" href="#menu"><i
						class="fa fa-align-justify"></i></a>
				</span> <span class="mh-text"> <a href="main2" title=""> Group IN
				</a>
				</span> <span class="mh-btns-right"> <a class="fa fa-sliders"
					href="#shoppingbag"></a>
				</span>
			</div>
			<div class="mh-head second">
		
							<form class="form-search">
								<input name="text" type="text" placeholder="" style="width:60%; color:black;"
									>
								<button class="sendAll" style="width:20%;">
									<i class="ti-search"></i>
								</button>
							</form>
						
			</div>
			<nav id="menu" class="res-menu">
				<ul>
					<li>
					<span>카테고리</span>
						<ul id="categoryList">
							
						</ul>
					</li>
					
					
					<li><span><a href="prboard" title="">홍보게시판</a></span></li>
					
					<c:choose>
						<c:when test="${empty id }">
						<li><span><a href="login" title="">로그인</a></span></li>
						</c:when>
						<c:otherwise>
						<li><span><a href="mypage2" title="">마이페이지</a></span></li>
						<li><span><a href="logout" title="">로그아웃</a></span></li>
						</c:otherwise>
					</c:choose>
					
				</ul>
			</nav>
		</div>
		<!-- 작아졌을때나오는 header(반응형) 끝 -->

 
		<!-- 기존 화면 header 시작 -->
		<div class="topbar stick">
			<!-- 로고 --> 
			<div class="logo">
				<a title="" href="main2"><h5 style="color:#4f93ce;     line-height: 2em;"><b>GroupIN</b></h5></a>
			</div>
			<!-- //로고 -->

			<!-- 카테고리 -->
			<div class="top-area">
				<ul class="main-menu">
					<li><a href="#" title="" onclick="allMenu(); return false;">전체카테고리</a></li>
					<li><a href="prboard" title="">홍보게시판</a></li>
					<li><a href="groupRank" title="">모임 랭킹</a></li>
					<c:if test="${!empty id }">
						<li><a href="groupCreate" title="">새로운 모임 만들기</a></li>
					</c:if>
				</ul>

				<!-- 전체카테고리 -->
				<div id="all-menu" class="all-menu">
					<div class="inner"></div>
				</div>
				<!-- //전체카테고리 -->


			</div>
			<!-- //카테고리 -->

			<!-- 우측메뉴 -->
			<div class="right-menu">
				<ul class="setting-area">
				
					<li>
					
						<div class="box-search">
						<!-- style="margin-top: 1em;"-->
							<form class="form-search">
								<input name="text" type="text" placeholder=""
									style="color:black;">
								<button class="sendAll">
									<i class="ti-search"></i>
								</button>
							</form>
						</div>
					</li>
					<!-- 검색창 bar -->


					<li><a onclick="admin('main2');" href="main2" title="Home" data-ripple=""><i
							class="ti-home"></i></a></li>
					<c:if test="${!empty id }">
					<li><a href="#" id="noti" title="Notification" data-ripple="">
							<i class="ti-bell"><span></span></i>
					</a>
						<div class="dropdowns">
							<span>알림 내역</span>
							<ul class="drops-menu">


							</ul>
							<a onclick="admin('mypage2');" href="mypage2" title="" class="more-mesg">view
								more</a>
						</div></li></c:if>

				</ul>
				<div class="user-img">
					<c:choose>

						<c:when test="${empty id }">
							<img src="resources/images/default.png" style="width:40px;" alt="">

							<div class="user-setting" onclick="location.href='login'">
								<a title=""><i class="ti-pencil-alt"></i>로그인</a>
							</div>

						</c:when>

						<c:otherwise>

							<c:choose>
								<c:when test="${empty image}">
									<img src="resources/images/default.png" style="width:40px;" alt="">
								</c:when>
								<c:otherwise>
									<img style="width:40px;" alt="" src="<spring:url value='/image${image}'/>" />
								</c:otherwise>
							</c:choose>


							<div class="user-setting">
								<c:choose>
									<c:when test="${id == 'admin'}">
									
											<a onclick="admin('admin');" title=""><i class="ti-pencil-alt"></i>관리자 메뉴</a>
									
									</c:when>

									<c:otherwise>
									
											<a onclick="admin('mypage2');" title=""><i class="ti-pencil-alt"></i>정보수정</a>
									
									</c:otherwise>

								</c:choose>
								
									<a onclick="admin('logout');"  title=""><i class="ti-power-off"></i>로그아웃</a>
							
							</div>


						</c:otherwise>
					</c:choose>


				</div>
			</div>
		</div>
		<!-- 기존 화면 header 끝 -->

		<script>
			init_menu();
			
			function admin(link){
				location.href=link;
				
			}

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
					
						
						//대분류 카테고리 for문
						var tag;
						var tag2;
						
						for(var i = 0; i < result.dcategory.length; i++){
							
							
							tag2 +='<li><span>'+result.dcategory[i].dcategoryName+'</span></li>';
							tag2 += '<ul>';
							
							tag += '<dl>';
							tag += '<dt>'+result.dcategory[i].dcategoryName+'</dt>';
							
							//해당 대분류의 소분류 for문
							for(var j = 0; j < result.scategory.length; j++){
								
								if(result.dcategory[i].dcategoryKey == 
									result.scategory[j].dcategoryKey){
									tag += '<dd>';
									tag += '<a href="CateogryMain?categorykey='+result.scategory[j].scategoryKey+'">'+result.scategory[j].scategoryName+'</a>';
									tag += '</dd>';
									
									tag2 +='<li><span><a href="CateogryMain?categorykey='+result.scategory[j].scategoryKey+'">'+result.scategory[j].scategoryName+'</a></span></li>';
								}
							}
							tag2 += '</ul>';
							tag += '</dl>';
						}
						
						
						$('#all-menu .inner').html(tag);
						$('#categoryList').html(tag2);
						
						//카테고리 붙이기
						
						
					}
					
				});
			}
			
			
			$('#noti').click(function(){
				
				
				
				//공지사항 제외하고 자신에게 온 알람  읽기
				$.ajax({
					url : "readMessage"
				});
				
			});
			
			
			
			$('form input').keyup(function(){
				if (window.event.keyCode == 13) {

				sendSearch($(this).val());
				}
			});
			
			
			$('.sendAll').click(function(){
				sendSearch($(this).prev().val());
			});
			

		
			
			function sendSearch(text){
				
				if(text){
				location.href="searchText?text="+text;
				
			
				}
					
			}
			
			var count = 0;
			

			var id = '${id}';
			
			if(id){
				
			setInterval(checkmessage, 10000);
			checkmessage();
			
			}
	
			
			function checkmessage(){
				
				$.ajax({
					url : "getMyMessage",
					success : function(result){
						//메세지 필터
						
						var msg = result.filter(function (item) {
							return item.checkDate == null 
							});
						
						if(count != msg.length && count < msg.length){
						$('.ti-bell span').text(msg.length);
						$('.ti-bell span').css('color','red');
						
						printMessage(msg);
						}
						
						count = msg.length;
					}
					
				});
				
			
			}
		
			
			function printMessage(result){
				var text = '';
				

			
				
				for(var i = 0; i < result.length; i++){
					
					
					
					var date1 = '';
					date1 += result[i].mgDate.year+"-";
					date1 += result[i].mgDate.monthValue+"-";
					date1 += result[i].mgDate.dayOfMonth+" ";	
					date1 += result[i].mgDate.hour+":";	
					date1 += result[i].mgDate.minute+":";	
					date1 += result[i].mgDate.second;
					
					
					text += '<li>';
					text += '<a href="mypage2" title="">';
					text += '<div class="mesg-meta">';
					text += '<span>'+result[i].mgContent+'</span>';
				
					console.log(date1);
					text += '<i>'+timeBefore(new Date(date1))+'</i>';
					text += '</div>';
					text += '</a>';
					switch(result[i].mgSort){
					case 'N':
					
						text += '<span class="tag green">NOTICE</span>';
						break;
						
					default:
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