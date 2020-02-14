<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>지도 첨부 예제</title>
<style>
#menu_wrap {
	display: none; position : absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 300px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
	position: absolute;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

.map_wrap {
	width: 100%;
	position: relative;
}

.modes {
	position: absolute;
	top: 10px;
	left: 10px;
	z-index: 1;
}

#drawingMap {
	width: 100%;
	height: 100vh;
	
}
</style>

</head>
<body>
	<div class="map_wrap">
		<div id="drawingMap"></div>
		<div class="modes" style="width: 100%">
			<button onclick="selectPlace()" style="float: right;">장소 검색</button>
			<button onclick="selectOverlay('MARKER')" style="float: right;">마커 추가</button>
			<button onclick="selectOverlay('POLYLINE')" style="float: right;">선 추가</button>
			<button onclick="sendToParent()" style="float: right;">저장하기</button>

		</div>


		<div id="menu_wrap" class="bg_white">
			<div class="option">
				<div>
					<form onsubmit="searchPlaces(); return false;">
						키워드 : <input type="text" value="이태원 맛집" id="keyword" size="15">
						<button type="submit">검색하기</button>
					</form>
				</div>
			</div>
			<hr>
			<ul id="placesList"></ul>
			<div id="pagination"></div>
		</div>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=71851d7efcc82896ade029d259354bc9&libraries=drawing,services"></script>
	<script>
		// 마커를 담을 배열입니다
		var markers = [];
		// 검색된 마커를 담을 배열입니다
		var search_markers = [];
		
		//현재 지도의 레벨, 중심 좌표
		var level = 3, latlng = new kakao.maps.LatLng(33.450701, 126.570667);

		// Drawing Manager로 도형을 그릴 지도 div
		var drawingMapContainer = document.getElementById('drawingMap'), drawingMap = {
			center : this.latlng, // 지도의 중심좌표
			level : this.level
		// 지도의 확대 레벨
		};

		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var drawingMap = new kakao.maps.Map(drawingMapContainer, drawingMap);

		var options = { // Drawing Manager를 생성할 때 사용할 옵션입니다
			map : drawingMap, // Drawing Manager로 그리기 요소를 그릴 map 객체입니다
			drawingMode : [ // Drawing Manager로 제공할 그리기 요소 모드입니다
			kakao.maps.drawing.OverlayType.MARKER,
					kakao.maps.drawing.OverlayType.POLYLINE

			],
			// 사용자에게 제공할 그리기 가이드 툴팁입니다
			// 사용자에게 도형을 그릴때, 드래그할때, 수정할때 가이드 툴팁을 표시하도록 설정합니다
			guideTooltip : [ 'draw', 'drag', 'edit' ],
			markerOptions : { // 마커 옵션입니다 
				draggable : true, // 마커를 그리고 나서 드래그 가능하게 합니다 
				removable : true
			// 마커를 삭제 할 수 있도록 x 버튼이 표시됩니다  
			},
			polylineOptions : { // 선 옵션입니다
				draggable : true, // 그린 후 드래그가 가능하도록 설정합니다
				removable : true, // 그린 후 삭제 할 수 있도록 x 버튼이 표시됩니다
				editable : true, // 그린 후 수정할 수 있도록 설정합니다 
				strokeColor : '#39f', // 선 색
				hintStrokeStyle : 'dash', // 그리중 마우스를 따라다니는 보조선의 선 스타일
				hintStrokeOpacity : 0.5
			// 그리중 마우스를 따라다니는 보조선의 투명도
			}
		};

		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places();

		// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
			zIndex : 1
		});

		// 키워드로 장소 div 표출/ 숨기기
		function selectPlace() {

			

			$('#placesList').html('');
			$('#pagination').html('');
			
			if ($("#menu_wrap").css("display") == "none") {
				//검색결과 초기화

				$("#menu_wrap").show();
			} else {
				
				removeMarker();
				$("#menu_wrap").hide();
			}

		}

		// 키워드 검색을 요청하는 함수입니다
		function searchPlaces() {

			var keyword = document.getElementById('keyword').value;

			if (!keyword.replace(/^\s+|\s+$/g, '')) {
				alert('키워드를 입력해주세요!');
				return false;
			}

			// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
			ps.keywordSearch(keyword, placesSearchCB);
		}

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {

				// 정상적으로 검색이 완료됐으면
				// 검색 목록과 마커를 표출합니다
				displayPlaces(data);

				// 페이지 번호를 표출합니다
				displayPagination(pagination);

			} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

				alert('검색 결과가 존재하지 않습니다.');
				return;

			} else if (status === kakao.maps.services.Status.ERROR) {

				alert('검색 결과 중 오류가 발생했습니다.');
				return;

			}
		}

		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(places) {

			var listEl = document.getElementById('placesList'), menuEl = document
					.getElementById('menu_wrap'), fragment = document
					.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';

			// 검색 결과 목록에 추가된 항목들을 제거합니다
			removeAllChildNods(listEl);

			// 지도에 표시되고 있는 마커를 제거합니다
			removeMarker();

			for (var i = 0; i < places.length; i++) {

				// 마커를 생성하고 지도에 표시합니다
				var placePosition = new kakao.maps.LatLng(places[i].y,
						places[i].x), marker = addMarker(placePosition, i), itemEl = getListItem(
						i, places[i]); // 검색 결과 항목 Element를 생성합니다

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
				// LatLngBounds 객체에 좌표를 추가합니다
				bounds.extend(placePosition);

				// 마커와 검색결과 항목에 mouseover 했을때
				// 해당 장소에 인포윈도우에 장소명을 표시합니다
				// mouseout 했을 때는 인포윈도우를 닫습니다
				(function(marker, title) {
					kakao.maps.event.addListener(marker, 'mouseover',
							function() {
								displayInfowindow(marker, title);
							});

					kakao.maps.event.addListener(marker, 'mouseout',
							function() {
								infowindow.close();
							});

					//검색된 마커를 클릭 했을때 이벤트
					kakao.maps.event.addListener(marker, 'click', function(
							mouseEvent) {
						var check = confirm('해당 마커를 저장하시겠습니까?');

						if (check) {

							// 그리기 관리자에 마커를 추가한다 마커 이미지의 index는 1로 정한다
							manager.put(kakao.maps.drawing.OverlayType.MARKER,
									marker.getPosition(), 1);

						}
					});

					itemEl.onmouseover = function() {
						displayInfowindow(marker, title);
					};

					itemEl.onmouseout = function() {
						infowindow.close();
					};
				})(marker, places[i].place_name);

				fragment.appendChild(itemEl);
			}

			// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
			listEl.appendChild(fragment);
			menuEl.scrollTop = 0;

			// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			drawingMap.setBounds(bounds);
		}

		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {

			var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
					+ (index + 1)
					+ '"></span>'
					+ '<div class="info">'
					+ '   <h5>' + places.place_name + '</h5>';

			if (places.road_address_name) {
				itemStr += '    <span>' + places.road_address_name + '</span>'
						+ '   <span class="jibun gray">' + places.address_name
						+ '</span>';
			} else {
				itemStr += '    <span>' + places.address_name + '</span>';
			}

			itemStr += '  <span class="tel">' + places.phone + '</span>'
					+ '</div>';

			el.innerHTML = itemStr;
			el.className = 'item';

			return el;
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
			var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
			imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
			imgOptions = {
				spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
				spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
				offset : new kakao.maps.Point(13, 37)
			// 마커 좌표에 일치시킬 이미지 내에서의 좌표
			}, markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
					imgOptions), marker = new kakao.maps.Marker({
				position : position, // 마커의 위치
				image : markerImage
			});

			marker.setMap(drawingMap); // 지도 위에 마커를 표출합니다
			search_markers.push(marker); // 배열에 생성된 마커를 추가합니다

			return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			for (var i = 0; i < search_markers.length; i++) {
				search_markers[i].setMap(null);
			}
			search_markers = [];
		}

		// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
		function displayPagination(pagination) {
			var paginationEl = document.getElementById('pagination'), fragment = document
					.createDocumentFragment(), i;

			// 기존에 추가된 페이지번호를 삭제합니다
			while (paginationEl.hasChildNodes()) {
				paginationEl.removeChild(paginationEl.lastChild);
			}

			for (i = 1; i <= pagination.last; i++) {
				var el = document.createElement('a');
				el.href = "#";
				el.innerHTML = i;

				if (i === pagination.current) {
					el.className = 'on';
				} else {
					el.onclick = (function(i) {
						return function() {
							pagination.gotoPage(i);
						}
					})(i);
				}

				fragment.appendChild(el);
			}
			paginationEl.appendChild(fragment);
		}

		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
			var content = '<div style="padding:5px;z-index:1;">' + title
					+ '</div>';

			infowindow.setContent(content);
			infowindow.open(drawingMap, marker);
		}

		// 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {
			while (el.hasChildNodes()) {
				el.removeChild(el.lastChild);
			}
		}

		// 위에 작성한 옵션으로 Drawing Manager를 생성합니다
		var manager = new kakao.maps.drawing.DrawingManager(options);

		// 버튼 클릭 시 호출되는 핸들러 입니다
		function selectOverlay(type) {
			// 그리기 중이면 그리기를 취소합니다
			manager.cancel();

			//검색화면 켜져있으면 검색 마커 모두 지움
			deleteSearchMaker();

			// 클릭한 그리기 요소 타입을 선택합니다
			manager.select(kakao.maps.drawing.OverlayType[type]);
		}

		// 키워드로 장소 div 표출/ 숨기기
		function deleteSearchMaker() {

			if ($("#menu_wrap").css("display") != "none") {
				$("#menu_wrap").hide();

				removeMarker();

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
		// 선과 다각형의 꼭지점 정보를 kakao.maps.LatLng객체로 생성하고 배열로 반환하는 함수입니다 
		function pointsToPath(points) {
			var len = points.length, path = [], i = 0;

			for (; i < len; i++) {
				var latlng = new kakao.maps.LatLng(points[i].y, points[i].x);
				path.push(latlng);
			}

			return path;
		}
		
		
		
	
		
		// 지도가 이동, 확대, 축소로 인해 중심좌표가 변경되면 마지막 파라미터로 넘어온 함수를 호출하도록 이벤트를 등록합니다
		kakao.maps.event.addListener(drawingMap, 'center_changed', function() {

		    // 지도의  레벨을 얻어옵니다
		    level = drawingMap.getLevel();

		    // 지도의 중심좌표를 얻어옵니다 
		    latlng = drawingMap.getCenter(); 

		});
		
      function sendToParent(){
    	  
    	// Drawing Manager에서 그려진 데이터 정보를 가져옵니다 
    	var data = manager.getData();
    	//부모 페이지에 넘겨줍니다.
    
       	window.opener.getReturnValue(data, level, latlng);

    
       window.close();
      }
    </script>

	</div>
</body>
</html>
