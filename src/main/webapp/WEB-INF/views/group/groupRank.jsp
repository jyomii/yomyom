<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<style>
.grouprank{
margin-right: 16px;
}
.heigtCustom{
height: 50px;}
</style>
<!-- Header -->
<jsp:include page="../mainpage/header.jsp" />


	<section>
		<div class="gap gray-bg">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="row" id="page-contents">
							
							<div class="col-lg-3">
								
							</div><!-- sidebar -->
							
							<div class="col-lg-6">
								<div class="central-meta">
									<div class="editing-interest">
										<h5 class="f-title"><i class="fas fa-trophy"></i>모임 랭킹</h5>
										
										
										<div class="notification-box">
											<ul>
											<c:forEach items="${groups }" var="item" varStatus="status">
												<li><span class="grouprank badge badge-secondary">${status.count }</span>
													<figure>
																	<c:choose>
																		<c:when test="${empty item.groupDFile }">
																			<img class="heigtCustom" src="resources/images/group_default.png"
																				alt="">
																		</c:when>
																		<c:otherwise>
																			<img  class="heigtCustom" 
																				src="<spring:url value='/image${item.groupDFile }'/>" />
																		</c:otherwise>
																	</c:choose>
													
													
													</figure>
													<div class="notifi-meta">
														<p><a href="group_main.net?groupkey=${item.groupKey}">${item.groupName}</a></p>
														<span>${item.groupInfo }</span>
													</div>
												
												<c:choose>
													<c:when test="${status.count eq 1 }">
													<span style="color:red;"><i class="fas fa-medal"></i></span>
													</c:when>
													<c:when test="${status.count eq 2 }">
													<span style="color:gold;"><i class="fas fa-medal"></i></span>
													</c:when>
													<c:when test="${status.count eq 3 }">
													<span><i class="fas fa-medal"></i></span>
													</c:when>
												</c:choose>
												
												
												</li>
											</c:forEach>
												
												
											</ul>
											
												<div class="lodmore">
												<button class="btn-view btn-load-more"
											
													onclick="moreGroups()"></button>
											</div>
											
										</div>
									</div>
								</div>	
							</div><!-- centerl meta -->
							<div class="col-lg-3">
								
							</div><!-- sidebar -->
						</div>	
					</div>
				</div>
			</div>
		</div>	
	</section>

<!-- footer -->
<jsp:include page="../mainpage/footer.jsp" />
<!-- footer end -->


<script>
var page = 1;

var count = $('.notification-box li').length;


if(count < 10)
	$('.btn-load-more').css(
			'visibility', 'hidden');
			
			
function moreGroups(){
	
	$.ajax({
		
		url : "groupRank",
		method: "post",
		data : {"page" : ++page},
		success : function(result){
			
			
			
			if(result.length >= 1){
				
				print(result);
				
			}
			
			if(result.length< 10){
				//더보기 삭제
				$('.btn-load-more').css(
						'visibility', 'hidden');
			}
		}
	});
	
}

function print(result){
	
	var txt = '';

	for(var i = 0; i < result.length; i++){
		
		var count = $('.grouprank:last').text();
		count *= 1;
		txt += '<li><span class="grouprank badge badge-secondary">'+(count+1)+'</span>';
		txt += '<figure>';
		
		
		if (result[i].groupDFile == null)
			txt += '<img  class="heigtCustom"  src= "resources/images/group_default.png" alt="">';
		else
			txt += "<img  class='heigtCustom'  src= \'<spring:url value='/image"+result[i].groupDFile +"'/>\'/>";
			
		txt += '</figure>';
		txt += '<div class="notifi-meta">';
		txt += '<p><a href="group_main.net?groupkey='+result[i].groupKey+'">'+result[i].groupName+'</a></p>';
		txt += '<span>'+result[i].groupInfo+'</span>';
		txt += '	</div>';
		txt += '</li>';
		
	}
	
	
	console.log(txt);
	$('.notification-box ul').append(txt);
	
	
}

</script>
