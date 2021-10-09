<%@page import="com.model.memberVO"%>
<%@page import="com.model.cafeVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<% memberVO vo = (memberVO)session.getAttribute("member"); %>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="icon" href="img/fav.png" type="image/x-icon">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="ionicons/css/ionicons.min.css" rel="stylesheet">

    <!-- main css -->
    <link href="css/style.css" rel="stylesheet">


    <!-- modernizr -->
    <script src="js/modernizr.js"></script>
</head>
<body>   
        <!-- box-header -->
        <header class="box-header">
            <div class="box-logo">
               <a href="main.jsp"><img src="img/cafemasillogo2.jpg" width="80" alt="Logo"></a>
            </div>
                        <!-- box-nav -->
            <a class="box-primary-nav-trigger" href="#0">
                <span class="box-menu-text">Menu</span><span class="box-menu-icon"></span>
            </a>
        </header>
        <!-- end box-header -->

        <!-- nav -->
       <%if(vo==null) {%>
    	<nav>
     	    <ul class="box-primary-nav">
     	        <li class="box-label"> Choose me! </li>

				<li><a href="main.jsp">Ȩ</a> <i class="ion-ios-circle-filled color"></i></li>
                <li><a href="login.jsp">�α���</a>
                <li><a href="join.jsp">ȸ������</a></li>
                <li><a href="fran.jsp">���͵��</a></li>
                <li><a href="keywordMenu.jsp">��ü ī��</a></li>
                <li><a href="searchmap.jsp">ī��˻�</a></li>
                
                <li class="box-label">Follow me!</li>

                <li class="box-social"><a href="#0"><i class="ion-social-facebook"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-instagram-outline"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-twitter"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-dribbble"></i></a></li>
            </ul>
        </nav>
        <%}else{%>
        <nav>
     	    <ul class="box-primary-nav">
     	        <li class="box-label"> Choose me! </li>

				<li><a href="main.jsp">Ȩ</a> <i class="ion-ios-circle-filled color"></i></li>
				<li><a href="LogoutService">�α׾ƿ�</a></li>
                <li><a href="fran.jsp">���͵��</a></li>
                <li><a href="keywordMenu.jsp">��ü ī��</a></li>
                <li><a href="searchmap.jsp">ī��˻�</a></li>
                <li><a href="gogacJiwon.jsp">������</a></li>
                <li><a href="MyCafe.jsp">MyCafe</a></li>
                
                <li class="box-label">Follow me!</li>

                <li class="box-social"><a href="#0"><i class="ion-social-facebook"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-instagram-outline"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-twitter"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-dribbble"></i></a></li>
            </ul>
        </nav>
        <%}%>
        <!-- end nav -->


     <!-- Top bar -->
     <div class="top-bar">
        <h1>ī�� �˻�</h1>
    </div>
    <!-- end Top bar -->

	<% request.setCharacterEncoding("euc-kr"); 
		memberDAO dao = new memberDAO();
		//ArrayList<cafeVO> cafe_list = new ArrayList<>();
		ArrayList<cafeVO> cafe_list = (ArrayList) session.getAttribute("cafe_list");
		
	%>

	<ul class="">
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
	


    <!-- footer -->
    <footer>
        <div class="container-fluid">
            Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>
        </div>
    </footer>
    <!-- end footer -->

    <!-- back to top -->
    <a href="#0" class="cd-top"><i class="ion-android-arrow-up"></i></a>
    <!-- end back to top -->

    <!-- jQuery -->
    <script src="js/jquery-2.1.1.js"></script>
    <!--  plugins -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/menu.js"></script>
    <script src="js/animated-headline.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>


    <!--  custom script -->
    <script src="js/custom.js"></script>
</body>
</html>