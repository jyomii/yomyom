<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../mainpage/header.jsp" />

<style>
.x_content>div{
width:100%;
height: 400px;}
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
											<li>
												<i class="ti-clipboard"></i>
												<a href="admin" title="">통계</a>
											</li>
											<li>
												<i class="fas fa-user"></i>
												<a href="adminusers" title="">회원</a>
											</li>
											<li>
												<i class="fas fa-users"></i>
												<a href="admingroup" title="">모임</a>
											</li>
											
											<li>
												<i class="fas fa-align-justify"></i>
												<a href="admincategory" title="">카테고리</a>
											</li>
											
											<li>
												<i class="fas fa-clipboard"></i>
												<a href="adminnotice" title="">공지사항</a>
											</li>
											
										</ul>
									</div>
									<!-- 관리자 메뉴 -->
									
									<!-- who's following -->
								</aside>
							</div><!-- sidebar -->
							<div class="col-lg-6">
								<div class="central-meta">
									<div class="messages">
										<h5 class="f-title"><i class="fa fa-line-chart"></i>통계 </span></h5>
										<div class="insight-box">
											
											<div class="x_panel">
											  <div class="x_title">
												<h2>회원 가입자 수</h2>
												<ul class="toolbox">
												  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
												  </li>
												
												  <li><a class="close-link"><i class="fa fa-close"></i></a>
												  </li>
												</ul>
											  </div>
											  <div class="x_content">

												<div id="joinGraph"></div>

											  </div>
											</div>
											
											<div class="x_panel">
											  <div class="x_title">
												<h2>회원 연령대 분포 수</h2>
												<ul class="toolbox">
												  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
												  </li>
												
												  <li><a class="close-link"><i class="fa fa-close"></i></a>
												  </li>
												</ul>
											  </div>
											  <div class="x_content">

												<div id="ageGraph"></div>

											  </div>
											</div>
											
												<div class="x_panel">
											  <div class="x_title">
												<h2>회원 지역 분포 수</h2>
												<ul class="toolbox">
												  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
												  </li>
												
												  <li><a class="close-link"><i class="fa fa-close"></i></a>
												  </li>
												</ul>
											  </div>
											  <div class="x_content">

												<div id="locationGraph"></div>

											  </div>
											</div>
											<div class="x_panel">
											  <div class="x_title">
												<h2>회원 카테고리 분포 수</h2>
												<ul class="toolbox">
												  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
												  </li>
												
												  <li><a class="close-link"><i class="fa fa-close"></i></a>
												  </li>
												</ul>
											  </div>
											  <div class="x_content">

												<div id="categoryGraph"></div>

											  </div>
											</div>
											
										</div>
									</div>
								</div>	
							</div><!-- centerl meta -->
							
							<div class="col-lg-3">
									<aside class="sidebar static">
										<div class="widget">
											<h4 class="widget-title">모임 카테고리 분포 </h4>
											
										
											  <div class="x_content" style="margin: 30px;">

												<div id="gcategoryGraph"></div>

											  </div>
											
										</div>
										
									

									</aside>
									
									
									<aside class="sidebar static">
										<div class="widget">
											<h4 class="widget-title">모임 연령대 분포 </h4>
											
										
											  <div class="x_content" style="margin: 30px;">

												<div id="gageGraph"></div>

											  </div>
											
										</div>
										
									

									</aside>
									
									
									<aside class="sidebar static">
										<div class="widget">
											<h4 class="widget-title">모임 지역 분포 </h4>
											
										
											  <div class="x_content" style="margin: 30px;">

												<div id="glocationGraph"></div>

											  </div>
											
										</div>
										
									

									</aside>
								</div>
								
						</div>	
					</div>
				</div>
			</div>
		</div>	
	</section>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4">
					<div class="widget">
						<div class="foot-logo">
							<div class="logo">
								<a href="index-2.html" title=""><img src="resources/images/logo.png" alt=""></a>
							</div>	
							<p>
								The trio took this simple idea and built it into the world’s leading carpooling platform.
							</p>
						</div>
						<ul class="location">
							<li>
								<i class="ti-map-alt"></i>
								<p>33 new montgomery st.750 san francisco, CA USA 94105.</p>
							</li>
							<li>
								<i class="ti-mobile"></i>
								<p>+1-56-346 345</p>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-4">
					<div class="widget">
						<div class="widget-title"><h4>follow</h4></div>
						<ul class="list-style">
							<li><i class="fa fa-facebook-square"></i> <a href="https://web.facebook.com/shopcircut/" title="">facebook</a></li>
							<li><i class="fa fa-twitter-square"></i><a href="https://twitter.com/login?lang=en" title="">twitter</a></li>
							<li><i class="fa fa-instagram"></i><a href="https://www.instagram.com/?hl=en" title="">instagram</a></li>
							<li><i class="fa fa-google-plus-square"></i> <a href="https://plus.google.com/discover" title="">Google+</a></li>
							<li><i class="fa fa-pinterest-square"></i> <a href="https://www.pinterest.com/" title="">Pintrest</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-4">
					<div class="widget">
						<div class="widget-title"><h4>Navigate</h4></div>
						<ul class="list-style">
							<li><a href="about.html" title="">about us</a></li>
							<li><a href="contact.html" title="">contact us</a></li>
							<li><a href="terms.html" title="">terms & Conditions</a></li>
							<li><a href="#" title="">RSS syndication</a></li>
							<li><a href="sitemap.html" title="">Sitemap</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-4">
					<div class="widget">
						<div class="widget-title"><h4>useful links</h4></div>
						<ul class="list-style">
							<li><a href="#" title="">leasing</a></li>
							<li><a href="#" title="">submit route</a></li>
							<li><a href="#" title="">how does it work?</a></li>
							<li><a href="#" title="">agent listings</a></li>
							<li><a href="#" title="">view All</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-4">
					<div class="widget">
						<div class="widget-title"><h4>download apps</h4></div>
						<ul class="colla-apps">
							<li><a href="https://play.google.com/store?hl=en" title=""><i class="fa fa-android"></i>android</a></li>
							<li><a href="https://www.apple.com/lae/ios/app-store/" title=""><i class="ti-apple"></i>iPhone</a></li>
							<li><a href="https://www.microsoft.com/store/apps" title=""><i class="fa fa-windows"></i>Windows</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer><!-- footer -->
	<div class="bottombar">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<span class="copyright"><a target="_blank" href="https://www.templateshub.net">Templates Hub</a></span>
					<i><img src="resources/images/credit-cards.png" alt=""></i>
				</div>
			</div>
		</div>
	</div>
</div>
	<div class="side-panel">
			<h4 class="panel-title">General Setting</h4>
			<form method="post">
				<div class="setting-row">
					<span>use night mode</span>
					<input type="checkbox" id="nightmode1"/> 
					<label for="nightmode1" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Notifications</span>
					<input type="checkbox" id="switch22" /> 
					<label for="switch22" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Notification sound</span>
					<input type="checkbox" id="switch33" /> 
					<label for="switch33" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>My profile</span>
					<input type="checkbox" id="switch44" /> 
					<label for="switch44" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Show profile</span>
					<input type="checkbox" id="switch55" /> 
					<label for="switch55" data-on-label="ON" data-off-label="OFF"></label>
				</div>
			</form>
			<h4 class="panel-title">Account Setting</h4>
			<form method="post">
				<div class="setting-row">
					<span>Sub users</span>
					<input type="checkbox" id="switch66" /> 
					<label for="switch66" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>personal account</span>
					<input type="checkbox" id="switch77" /> 
					<label for="switch77" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Business account</span>
					<input type="checkbox" id="switch88" /> 
					<label for="switch88" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Show me online</span>
					<input type="checkbox" id="switch99" /> 
					<label for="switch99" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Delete history</span>
					<input type="checkbox" id="switch101" /> 
					<label for="switch101" data-on-label="ON" data-off-label="OFF"></label>
				</div>
				<div class="setting-row">
					<span>Expose author name</span>
					<input type="checkbox" id="switch111" /> 
					<label for="switch111" data-on-label="ON" data-off-label="OFF"></label>
				</div>
			</form>
		</div><!-- side panel -->		
	
	<script src="resources/js/main.min.js"></script>
	 <script src="resources/js/echarts.min.js"></script>
    
	 <!-- <script src="resources/js/custom.js"></script> -->
	<script src="resources/js/script.js"></script>
	<script>
	
	
	
	$(document).ready(function() {
	    $('.collapse-link').on('click', function() {
	        var $BOX_PANEL = $(this).closest('.x_panel'),
	            $ICON = $(this).find('i'),
	            $BOX_CONTENT = $BOX_PANEL.find('.x_content');
	        
	        // fix for some div with hardcoded fix class
	        if ($BOX_PANEL.attr('style')) {
	            $BOX_CONTENT.slideToggle(200, function(){
	                $BOX_PANEL.removeAttr('style');
	            });
	        } else {
	            $BOX_CONTENT.slideToggle(200); 
	            $BOX_PANEL.css('height', 'auto');  
	        }

	        $ICON.toggleClass('fa-chevron-up fa-chevron-down');
	    });

	    $('.close-link').click(function () {
	        var $BOX_PANEL = $(this).closest('.x_panel');

	        $BOX_PANEL.remove();
	    });
	});
	
	
	
	var theme = {
			  color: [
				  '#26B99A', '#34495E', '#BDC3C7', '#3498DB',
				  '#9B59B6', '#8abb6f', '#759c6a', '#bfd3b7'
			  ],

			  title: {
				  itemGap: 8,
				  textStyle: {
					  fontWeight: 'normal',
					  color: '#408829'
				  }
			  },

			  dataRange: {
				  color: ['#1f610a', '#97b58d']
			  },

			  toolbox: {
				  color: ['#408829', '#408829', '#408829', '#408829']
			  },

			  tooltip: {
				  backgroundColor: 'rgba(0,0,0,0.5)',
				  axisPointer: {
					  type: 'line',
					  lineStyle: {
						  color: '#408829',
						  type: 'dashed'
					  },
					  crossStyle: {
						  color: '#408829'
					  },
					  shadowStyle: {
						  color: 'rgba(200,200,200,0.3)'
					  }
				  }
			  },

			  dataZoom: {
				  dataBackgroundColor: '#eee',
				  fillerColor: 'rgba(64,136,41,0.2)',
				  handleColor: '#408829'
			  },
			  grid: {
				  borderWidth: 0
			  },

			  categoryAxis: {
				  axisLine: {
					  lineStyle: {
						  color: '#408829'
					  }
				  },
				  splitLine: {
					  lineStyle: {
						  color: ['#eee']
					  }
				  }
			  },

			  valueAxis: {
				  axisLine: {
					  lineStyle: {
						  color: '#408829'
					  }
				  },
				  splitArea: {
					  show: true,
					  areaStyle: {
						  color: ['rgba(250,250,250,0.1)', 'rgba(200,200,200,0.1)']
					  }
				  },
				  splitLine: {
					  lineStyle: {
						  color: ['#eee']
					  }
				  }
			  },
			  timeline: {
				  lineStyle: {
					  color: '#408829'
				  },
				  controlStyle: {
					  normal: {color: '#408829'},
					  emphasis: {color: '#408829'}
				  }
			  },

			  k: {
				  itemStyle: {
					  normal: {
						  color: '#68a54a',
						  color0: '#a9cba2',
						  lineStyle: {
							  width: 1,
							  color: '#408829',
							  color0: '#86b379'
						  }
					  }
				  }
			  },
			  map: {
				  itemStyle: {
					  normal: {
						  areaStyle: {
							  color: '#ddd'
						  },
						  label: {
							  textStyle: {
								  color: '#c12e34'
							  }
						  }
					  },
					  emphasis: {
						  areaStyle: {
							  color: '#99d2dd'
						  },
						  label: {
							  textStyle: {
								  color: '#c12e34'
							  }
						  }
					  }
				  }
			  },
			  force: {
				  itemStyle: {
					  normal: {
						  linkStyle: {
							  strokeColor: '#408829'
						  }
					  }
				  }
			  },
			  chord: {
				  padding: 4,
				  itemStyle: {
					  normal: {
						  lineStyle: {
							  width: 1,
							  color: 'rgba(128, 128, 128, 0.5)'
						  },
						  chordStyle: {
							  lineStyle: {
								  width: 1,
								  color: 'rgba(128, 128, 128, 0.5)'
							  }
						  }
					  },
					  emphasis: {
						  lineStyle: {
							  width: 1,
							  color: 'rgba(128, 128, 128, 0.5)'
						  },
						  chordStyle: {
							  lineStyle: {
								  width: 1,
								  color: 'rgba(128, 128, 128, 0.5)'
							  }
						  }
					  }
				  }
			  },
			  gauge: {
				  startAngle: 225,
				  endAngle: -45,
				  axisLine: {
					  show: true,
					  lineStyle: {
						  color: [[0.2, '#86b379'], [0.8, '#68a54a'], [1, '#408829']],
						  width: 8
					  }
				  },
				  axisTick: {
					  splitNumber: 10,
					  length: 12,
					  lineStyle: {
						  color: 'auto'
					  }
				  },
				  axisLabel: {
					  textStyle: {
						  color: 'auto'
					  }
				  },
				  splitLine: {
					  length: 18,
					  lineStyle: {
						  color: 'auto'
					  }
				  },
				  pointer: {
					  length: '90%',
					  color: 'auto'
				  },
				  title: {
					  textStyle: {
						  color: '#333'
					  }
				  },
				  detail: {
					  textStyle: {
						  color: 'auto'
					  }
				  }
			  },
			  textStyle: {
				  fontFamily: 'Arial, Verdana, sans-serif'
			  }
		  };
	
	
	
	
	
	
	//회원 연령대 분포수
	var arraynameAge = new Array();
	
	var arrayAge = new Array();
	<c:forEach items="${age}" var="item">
		
	arrayAge.push({
			value: '${item.value}', 
			name: '${item.age}'+'대'
		  });
		
	arraynameAge.push('${item.age}'+'대');

	</c:forEach>
	
	
	
	
	//관리자 - 연령대 분포 수 

	  
	  var echartPie = echarts.init(document.getElementById('ageGraph'),theme);

	  echartPie.setOption({
		tooltip: {
		  trigger: 'item',
		  formatter: "{a} <br/>{b} : {c} ({d}%)"
		},
		legend: {
		  x: 'center',
		  y: 'bottom',
		  data: arraynameAge
		},
		toolbox: {
		  show: true,
		  feature: {
			magicType: {
			  show: true,
			  type: ['pie', 'funnel'],
			  option: {
				funnel: {
				  x: '25%',
				  width: '50%',
				  funnelAlign: 'left',
				  max: 1548
				}
			  }
			},
			restore: {
			  show: true,
			  title: "Restore"
			},
			saveAsImage: {
			  show: true,
			  title: "Save Image"
			}
		  }
		},
		calculable: true,
		series: [{
		  name: '연령대',
		  type: 'pie',
		  radius: '55%',
		  center: ['50%', '48%'],
		  data: arrayAge
		}]
	  });

	  var dataStyle = {
		normal: {
		  label: {
			show: false
		  },
		  labelLine: {
			show: false
		  }
		}
	  };

	  var placeHolderStyle = {
		normal: {
		  color: 'rgba(0,0,0,0)',
		  label: {
			show: false
		  },
		  labelLine: {
			show: false
		  }
		},
		emphasis: {
		  color: 'rgba(0,0,0,0)'
		}
	  };

	
	
	
	//회원 지역 분포수
	var arrayname = new Array();
	
	var array = new Array();
	<c:forEach items="${location}" var="item">
		
		array.push({
			value: '${item.value}', 
			name: '${item.location}'
		  });
		
		arrayname.push('${item.location}');

	</c:forEach>
		
	//관리자 - 지역 분포수
	if ($('#locationGraph').length ){ 
			  
			  var echartPieCollapse = echarts.init(document.getElementById('locationGraph'),theme);
			  
			  echartPieCollapse.setOption({
				tooltip: {
				  trigger: 'item',
				  formatter: "{a} <br/>{b} : {c} ({d}%)"
				},
				legend: {
				  x: 'center',
				  y: 'bottom',
				  data: arrayname
				},
				toolbox: {
				  show: true,
				  feature: {
					magicType: {
					  show: true,
					  type: ['pie', 'funnel']
					},
					restore: {
					  show: true,
					  title: "Restore"
					},
					saveAsImage: {
					  show: true,
					  title: "Save Image"
					}
				  }
				},
				calculable: true,
				series: [{
				  name: 'Area Mode',
				  type: 'pie',
				  radius: [25, 90],
				  center: ['50%', 170],
				  roseType: 'area',
				  x: '50%',
				  max: 40,
				  sort: 'ascending',
				  data: array
				}]
			  });

			}
	
	
	
	
	//일간 가입자 수
	var arraynamejoindate = new Array();
	
	var arrayvaluejoindate = new Array();
	<c:forEach items="${joindate}" var="item">
		
	arraynamejoindate.push('${item.joindate}');
		
	arrayvaluejoindate.push('${item.value}');

	</c:forEach>
	
	
	
	  //가입자 수
	  
	if ($('#joinGraph').length ){
	  
		  var echartBar = echarts.init(document.getElementById('joinGraph'),theme);

		  echartBar.setOption({
			
			tooltip: {
			  trigger: 'axis'
			},
			legend: {
			  data: ['가입자 수']
			},
			toolbox: {
			  show: false
			},
			calculable: false,
			xAxis: [{
			  type: 'category',
			  data: arraynamejoindate
			}],
			yAxis: [{
			  type: 'value'
			}],
			series: [{
			  name: '가입자 수',
			  type: 'bar',
			  data: arrayvaluejoindate,
			  markPoint: {
				data: [{
				  type: 'max',
				  name: '???'
				}, {
				  type: 'min',
				  name: '???'
				}]
			  },
			  markLine: {
				data: [{
				  type: 'average',
				  name: '가입자 수'
				}]
			  }
			}]
		  });

	}
	  
	  
	  
	
	//회원 카테고리 분포 수
	var arraynamecategory = new Array();
	
	var arrayvaluecategory = new Array();

	<c:forEach items="${ucategory}" var="item">
		
	arraynamecategory.push('${item.category}');
		
	arrayvaluecategory.push('${item.value}');
	
	</c:forEach>
	

	
	if ($('#categoryGraph').length ){ 
		  
		  var echartBar = echarts.init(document.getElementById('categoryGraph'),theme);

		  echartBar.setOption({
			
			tooltip: {
			  trigger: 'axis'
			},
			legend: {
			  x: 100,
			  data: ['관심 회원 수']
			},
			toolbox: {
			  show: true,
			  feature: {
				saveAsImage: {
				  show: true,
				  title: "Save Image"
				}
			  }
			},
			calculable: true,
			xAxis: [{
			  type: 'value',
			  boundaryGap: [0, 0.01]
			}],
			yAxis: [{
			  type: 'category',
			  data: arraynamecategory
			}],
			series: [{
			  name: '관심 회원 수',
			  type: 'bar',
			  data: arrayvaluecategory
			}]
		  });

		}
	

	
	//모임 카테고리
	var arraygnamecategory = new Array();
	

	var arraygNamevaluecategory = new Array();
	<c:forEach items="${category}" var="item">
		
	arraygnamecategory.push('${item.category}');
		
	
	arraygNamevaluecategory.push({value: '${item.value}', name: '${item.category}'});
	</c:forEach>
	
	
		//모임 카테고리 분포 수
		  var gcategoryGraph = echarts.init(document.getElementById('gcategoryGraph'),theme);

		  
		  gcategoryGraph.setOption({
			  tooltip: {
			        trigger: 'item',
			        formatter: '{a} <br/>{b}: {c} ({d}%)'
			    },
			    legend: {
			       
			        x: 'center',
					y: 'top',
			       
			        data: arraygnamecategory
			    },
			    series: [
			        {
			            name: '카테고리 수',
			            type: 'pie',
			            radius: ['50%', '70%'],
			            avoidLabelOverlap: false,
			            label: {
			                normal: {
			                    show: false,
			                    position: 'center'
			                },
			                emphasis: {
			                    show: true,
			                    textStyle: {
			                        fontSize: '10',
			                        fontWeight: 'bold'
			                    }
			                }
			            },
			            labelLine: {
			                normal: {
			                    show: false
			                }
			            },
			            data: arraygNamevaluecategory
			        }
			    ]
		  });

		
	
	
    //모임 연령대 분포	  
 
 	var arraynamegage = new Array();
	
	var arrayNamevaluegage = new Array();
	<c:forEach items="${gage}" var="item">
	<c:if test="${item.age != 0}">
	arrayNamevaluegage.push({
		value: '${item.value}', 
		name: '${item.age}'+'대'
	  });
	
	arraynamegage.push('${item.age}'+'대');
	
	</c:if>
	
	<c:if test="${item.age == 0}">
	arrayNamevaluegage.push({
		value: '${item.value}', 
		name: '제한 없음'
	  });
	
	arraynamegage.push('제한 없음');
	</c:if>
	</c:forEach>
	
	
  var gageGraph = echarts.init(document.getElementById('gageGraph'),theme);

		  
  gageGraph.setOption( {
	    
	    tooltip: {
	        trigger: 'item',
	        formatter: '{a} <br/>{b} : {c} ({d}%)'
	    },
	    legend: {
	       
	        x: 'center',
			y: 'top',
	        data: arraynamegage
	    },
	    series: [
	        {
	            name: '모임 연령대',
	            type: 'pie',
	            radius: '55%',
	            center: ['50%', '60%'],
	            data: arrayNamevaluegage,
	            emphasis: {
	                itemStyle: {
	                    shadowBlur: 10,
	                    shadowOffsetX: 0,
	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
	                }
	            }
	        }
	    ]
	});

  
  
  
  

	
  	//모임 지역대 분포	  

	var arraynameglocation = new Array();
	
	var arrayvalueglocation = new Array();
	
	
	<c:forEach items="${glocation}" var="item">
	
	
	<c:if test="${item.location != '		'}">
	arrayvalueglocation.push({value : '${item.value}', name: '${item.location}'});
	
	arraynameglocation.push('${item.location}');
	</c:if>
	
	<c:if test="${item.location == '		'}">
	arrayvalueglocation.push({value : '${item.value}', name: '제한 없음'});
	
	arraynameglocation.push('제한 없음');
	</c:if>
	</c:forEach>
	
	console.log(arrayvalueglocation);
  
  //모임 지역 분포
   var glocationGraph = echarts.init(document.getElementById('glocationGraph'),theme);
   glocationGraph.setOption({
	    
	    tooltip: {
	        trigger: 'item',
	        formatter: '{a} <br/>{b} : {c} ({d}%)'
	    },
	    legend: {
	       
	        x: 'center',
			y: 'top',
	        data: arraynameglocation
	    },
	    series: [
	        {
	            name: '모임 연령대',
	            type: 'pie',
	            radius: '55%',
	            center: ['50%', '60%'],
	            data: arrayvalueglocation,
	            emphasis: {
	                itemStyle: {
	                    shadowBlur: 10,
	                    shadowOffsetX: 0,
	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
	                }
	            }
	        }
	    ]
	});
	
	</script>
</body>	

</html>