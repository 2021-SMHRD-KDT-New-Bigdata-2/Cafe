<%@page import="com.model.cafeVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("euc-kr"); 
		memberDAO dao = new memberDAO();
		//ArrayList<cafeVO> cafe_list = new ArrayList<>();
		ArrayList<cafeVO> cafe_list = (ArrayList) session.getAttribute("cafe_list");
		
	%>

	<ul class="">
		<li><h5>searchmap</h5></li> <!-- cafeInfo table -->
		<form action="searchmapService" method="post">
			<li>
			<input name="searchword" type="text" placeholder="ī����� �˻��ϼ���">
			<button type="submit">�˻�</button>
			</li>
		</form>
	</ul>
	<p></p>
	<ul class="actions">
	<% if (cafe_list!=null) { %>
		<li><%=cafe_list.get(0).getCafeName() %></li>
		<li><%=cafe_list.get(0).getCafeAddress() %></li>
		<li><%=cafe_list.get(0).getCafeTel() %></li>
		<li><%=cafe_list.get(0).getAmeIndex() %></li>
		<li><%=cafe_list.get(0).getLat() %></li>
		<li><%=cafe_list.get(0).getLng() %></li>
		<li><%=cafe_list.get(0).getCafeHours() %></li>
		<li><%=cafe_list.get(0).getBestmenu() %></li>
		<li><%=cafe_list.get(0).getTableNum() %></li>
		<li><%=cafe_list.get(0).getWifi() %></li>
		<li><%=cafe_list.get(0).getGroupseat() %></li>
		<li><%=cafe_list.get(0).getBeansell() %></li>
		<li><%=cafe_list.get(0).getCompanion() %></li>
		<li><%=cafe_list.get(0).getSmokingArea() %></li>
		<li><%=cafe_list.get(0).getRoasting() %></li>
		<li><%=cafe_list.get(0).getSubsidy() %></li>
		<li><%=cafe_list.get(0).getBoard() %></li>
		<li><%=cafe_list.get(0).getImage1() %></li>
		<li><%=cafe_list.get(0).getImage2() %></li>
	</ul>
	<% } %>
	<p style="margin-top:-12px">
	
    <b>Chrome �������� https ȯ�濡���� geolocation�� �����մϴ�.</b> �������ּ���.
    <br> <br> <br> <br>
    
    <b># ���͵�</b> <b># ����</b> <b># ������</b>
 	</p>
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a0848145c218c41d87cceb06f093d635"></script>
<script>


var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = { 
        center: new kakao.maps.LatLng(123,12), // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ���� 
    }; 

var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

<% if (cafe_list!=null) {%>
// HTML5�� geolocation���� ����� �� �ִ��� Ȯ���մϴ� 
if (navigator.geolocation) {
    
    // GeoLocation�� �̿��ؼ� ���� ��ġ�� ���ɴϴ�
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = <%=cafe_list.get(0).getLat() %>, // ����
            lon = <%=cafe_list.get(0).getLng() %>; // �浵
        
        var locPosition = new kakao.maps.LatLng(lat, lon), // ��Ŀ�� ǥ�õ� ��ġ�� geolocation���� ���� ��ǥ�� �����մϴ�
            message = '<div style="padding:5px;">���⿡ ��Ű���?!</div>'; // ���������쿡 ǥ�õ� �����Դϴ�
        
        // ��Ŀ�� ���������츦 ǥ���մϴ�
        displayMarker(locPosition, message);
            
      });
    
}

<%}else{%>
if (navigator.geolocation) {
    //�ʱ����� ���Ͱ�
    // GeoLocation�� �̿��ؼ� ���� ��ġ�� ���ɴϴ�
    navigator.geolocation.getCurrentPosition(function(position) {
        var lat = position.coords.latitude, // ����
            lon = position.coords.longitude; // �浵
        
        var locPosition = new kakao.maps.LatLng(35.1764544, 126.912556), // ��Ŀ�� ǥ�õ� ��ġ�� geolocation���� ���� ��ǥ�� �����մϴ�
            message = '<div style="padding:5px;">���⿡ ��Ű���?!</div>'; // ���������쿡 ǥ�õ� �����Դϴ�
        
        // ��Ŀ�� ���������츦 ǥ���մϴ�
        displayMarker(locPosition, message);
            
      });
    
}
<%}%>

// ������ ��Ŀ�� ���������츦 ǥ���ϴ� �Լ��Դϴ�
function displayMarker(locPosition, message) {

    // ��Ŀ�� �����մϴ�
    var marker = new kakao.maps.Marker({  
        map: map, 
        position: locPosition
    }); 
    
    var iwContent = message, // ���������쿡 ǥ���� ����
        iwRemoveable = true;

    // ���������츦 �����մϴ�
    var infowindow = new kakao.maps.InfoWindow({
        content : iwContent,
        removable : iwRemoveable
    });
    
    // ���������츦 ��Ŀ���� ǥ���մϴ� 
    infowindow.open(map, marker);
    
    // ���� �߽���ǥ�� ������ġ�� �����մϴ�
    map.setCenter(locPosition);      
}    
</script>

</body>
</html>