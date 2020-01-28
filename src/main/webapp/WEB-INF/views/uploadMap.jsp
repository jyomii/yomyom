<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h1>지도 데이터 불러오기</h1>

	<button id="receiveFromChild" onclick="javascript:openWin();">새로운
		지도 그리기</button>
	<button onclick="javascript:saveMap();">현재 지도 저장하기</button>
	<button onclick="javascript:loadMap();">저장한 지도 불러오기</button>
	<button onclick="javascript:deleteMap();">저장한 지도 삭제하기</button>
	<div id="map" style="width: 350px; height: 350px;"></div>


	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=81901835c348429fbab043210a118692&libraries=drawing,services"></script>

	<script>
		var w = window.innerWidth / 2;
		var h = window.innerHeight / 2;
		var overlays = []; // 지도에 그려진 도형을 담을 배열
		//현재 지도에 그려진 객체들 정보
		var ReturnValue, Level = 3, Latlng = new kakao.maps.LatLng(33.450701, 126.570667);
		$('#map').height(h);
		$('#map').width(w);

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : Latlng, // 지도의 중심좌표
			draggable : false,
			level : Level
		// 지도의 확대 레벨
		};

		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption);

		function openWin() {

			var windowObj = window
					.open(
							"DrawMap",
							"지도 추가",
							"width="
									+ w
									+ ", height="
									+ h
									+ ",status=no, toolbar=no, menubar=no, scrollbars=no, resizable=yes");

		}

		//리턴받은 지도 데이터를 뿌립니다.
		function getReturnValue(returnValue, level, latlng) {
			console.log(returnValue);

			ReturnValue = returnValue;
			Level = level;
			Latlng = latlng;

			// 이동할 위도 경도 위치를 생성합니다 
			var moveLatLon = new kakao.maps.LatLng(latlng.getLat(), latlng
					.getLng());

			// 지도 중심을 이동 시킵니다
			map.setCenter(moveLatLon);
			map.setLevel(level);

			//지도에 그려진 도형이 있다면 모두 지웁니다
			removeOverlays();

			// 지도에 가져온 데이터로 도형들을 그립니다
			drawMarker(returnValue[kakao.maps.drawing.OverlayType.MARKER]);
			drawPolyline(returnValue[kakao.maps.drawing.OverlayType.POLYLINE]);

		}

		// Drawing Manager에서 가져온 데이터 중 마커를 아래 지도에 표시하는 함수입니다
		function drawMarker(markers) {
			var len = markers.length, i = 0;

			for (; i < len; i++) {
				var marker = new kakao.maps.Marker(
						{
							map : map,
							position : new kakao.maps.LatLng(markers[i].y,
									markers[i].x),
							zIndex : markers[i].zIndex
						});

				overlays.push(marker);
			}
		}

		// 아래 지도에 그려진 도형이 있다면 모두 지웁니다
		function removeOverlays() {
			var len = overlays.length, i = 0;

			for (; i < len; i++) {
				overlays[i].setMap(null);
			}

			overlays = [];
		}

		// Drawing Manager에서 가져온 데이터 중 선을 아래 지도에 표시하는 함수입니다
		function drawPolyline(lines) {
			var len = lines.length, i = 0;

			for (; i < len; i++) {
				var path = pointsToPath(lines[i].points);
				var style = lines[i].options;
				var polyline = new kakao.maps.Polyline({
					map : map,
					path : path,
					strokeColor : style.strokeColor,
					strokeOpacity : style.strokeOpacity,
					strokeStyle : style.strokeStyle,
					strokeWeight : style.strokeWeight
				});

				overlays.push(polyline);
			}
		}

		// Drawing Manager에서 가져온 데이터 중 
		// 선 정보를 kakao.maps.LatLng객체로 생성하고 배열로 반환하는 함수입니다 
		function pointsToPath(points) {
			var len = points.length, path = [], i = 0;

			for (; i < len; i++) {
				var latlng = new kakao.maps.LatLng(points[i].y, points[i].x);
				path.push(latlng);
			}

			return path;
		}

		
		function deleteMap(){
			
			$.ajax({
				url : "deleteMap",
				success : function(result){
					
					if(result >0)
						alert("삭제되었습니다.");
					
				}
			});
			
		}
		//현재 지도 저장하기
		function saveMap() {

			var info = [];

			var index = 0;

			//마커 정보 DB화 
			for (var i = 0; i < ReturnValue.marker.length; i++) {

				var item = {
					postkey : 0,
					lat : ReturnValue.marker[i].y,
					lng : ReturnValue.marker[i].x,
					mapoption : 'M',
					mapseq : index++

				};

				if (i == 0) {
					item.maplevel = Level;
					item.maplat = Latlng.getLat();
					item.maplng = Latlng.getLng();
				}

				info.push(item);

			}

			//선 정보 DB화
			//선 묶음 
			for (var j = 0; j < ReturnValue.polyline.length; j++) {

				//j번 선정보의 선묶음
				for (var k = 0; k < ReturnValue.polyline[j].points.length; k++) {

					var item = {
						postkey : 0,
						lat : ReturnValue.polyline[j].points[k].y,
						lng : ReturnValue.polyline[j].points[k].x,
						mapoption : 'L',
						mapseq : index
					};

					info.push(item);

				}

				index++;

			}

			var jsonData = JSON.stringify(info);
			jQuery.ajaxSettings.traditional = true;

			$.ajax({

				url : "saveMap",
				data : {
					"info" : jsonData
				},
				method : "post",
				success : function(result) {
					if(result > 0)
					alert('추가되었습니다.');
				}

			});
		}

		//저장한 지도 불러오기
		function loadMap() {

			$.ajax({

				url : "getMap",
				data : {
					"postkey" : 0
				},
				method : "get",
				success : function(result) {
					
					var moveLatLon = new kakao.maps.LatLng(result[0].maplat,
							result[0].maplng);

					//지도 그리기
					map.setCenter(moveLatLon);
					map.setLevel(result[0].maplevel);

					
					//선 번호
					var index = 0;
					//선 묶음
					var lines = [];
					
					//line / marker 그리기
					for (var i = 0; i < result.length; i++) {

						//마커일경우
						if (result[i].mapoption == 'M') {
						
							var marker = new kakao.maps.Marker({
								map : map,
								position : new kakao.maps.LatLng(result[i].lat,
										result[i].lng),
								zIndex : 0
							});

							overlays.push(marker);
						} else {
							//선인 경우 선묶음인걸 확인하고 그려야함
							
							
							if(index == 0){
								index = result[i].mapseq;
							}
							
							if(index != result[i].mapseq){
								
								index = result[i].mapseq;
								
								DrawLine(lines);
								lines = [];
							}
							
							
							lines.push({x: result[i].lng,
								y: result[i].lat});
							
							
						}
					}
					
					
					DrawLine(lines);

				}

			});
		}
		
		
		function DrawLine(lines){
			
			var path = pointsToPath(lines);
			
			var polyline = new kakao.maps.Polyline({
				map : map,
				path : path
				
			});
			console.log(lines);
			overlays.push(polyline);
			
			
		}
	</script>


</body>
</html>