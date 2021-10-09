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
    <style>
    .liston1> img {
    float: left;
}
    .liston1 {
    border: 1px solid black;
    margin: 0 30px;
    padding-top: 30px;
    padding-bottom: 30px;
    margin-top: 30px;
    margin-bottom: 30px;
    border-radius: 20px 20px 20px 20px;
	}
	
	.liston1::after {
	content:"";
	display:block;
	clear:both;
	}
	
	.liston1 img {
		width:25%;
		box-sizing:border-box;
		background-color:green;
		
	}
	
	</style>
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

				<li><a href="main.jsp">홈</a> <i class="ion-ios-circle-filled color"></i></li>
                <li><a href="login.jsp">로그인</a>
                <li><a href="join.jsp">회원가입</a></li>
                <li><a href="fran.jsp">가맹등록</a></li>
                <li><a href="keywordMenu.jsp">전체 카페</a></li>
                <li><a href="searchmap.jsp">카페검색</a></li>
                
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

				<li><a href="main.jsp">홈</a> <i class="ion-ios-circle-filled color"></i></li>
				<li><a href="LogoutService">로그아웃</a></li>
                <li><a href="fran.jsp">가맹등록</a></li>
                <li><a href="keywordMenu.jsp">전체 카페</a></li>
                <li><a href="searchmap.jsp">카페검색</a></li>
                <li><a href="gogacJiwon.jsp">고객지원</a></li>
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
        <h1>카페 검색</h1>
    </div>
    <!-- end Top bar -->

	<% request.setCharacterEncoding("euc-kr"); 
		memberDAO dao = new memberDAO();
		//ArrayList<cafeVO> cafe_list = new ArrayList<>();
		ArrayList<cafeVO> cafe_list = (ArrayList) session.getAttribute("cafe_list");
		
	%>
	<div class="container main-container">
        <div class="col-md-5">
            <form action="#" method="post">
                <div class="container row" style="float:none; margin:0 auto;">
                    <div class="col-md-6">
     			   </div>
                    </div>
                    <div class="col-md-6">
                    </div>
                    <div class="col-md-12">
                    </div>
                    <div class="col-md-12">
                    </div>
                    <div class="col-md-12">
                    </div>
                    <div class="col-md-12">
                    </div>
                    <div class="col-md-12">
                    </div>
                    <div class="col-md-12">
                    </div>                   
                    <div class="col-md-4">
                    </div> 
                    <div class="col-md-4">
                    </div> 
                    <div class="col-md-4">
                    </div> 
                </div>
            </form>
        </div>
	<ul class="" align = "center">
		<form action="searchmapService" method="post">
			<input name="searchword" type="text" placeholder="카페명을 검색하세요">
			<button type="submit">검색</button>
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
    <br> <br> <br> <br>
    
 	</p>
<center><div id="map" style="width:70%;height:350px;"></div></center>
	

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a0848145c218c41d87cceb06f093d635"></script>
<script>


var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(123,12), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨 
    }; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

<% if (cafe_list!=null) {%>
// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = <%=cafe_list.get(0).getLat() %>, // 위도
            lon = <%=cafe_list.get(0).getLng() %>; // 경도
        
        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
        
        // 마커와 인포윈도우를 표시합니다
        displayMarker(locPosition, message);
            
      });
    
}

<%}else{%>
if (navigator.geolocation) {
    //초기지도 센터값
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도
        
        var locPosition = new kakao.maps.LatLng(35.1764544, 126.912556), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
        
        // 마커와 인포윈도우를 표시합니다
        displayMarker(locPosition, message);
            
      });
    
}
<%}%>

// 지도에 마커와 인포윈도우를 표시하는 함수입니다
function displayMarker(locPosition, message) {

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({  
        map: map, 
        position: locPosition
    }); 
    
    var iwContent = message, // 인포윈도우에 표시할 내용
        iwRemoveable = true;

    // 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow({
        content : iwContent,
        removable : iwRemoveable
    });
    
    // 인포윈도우를 마커위에 표시합니다 
    infowindow.open(map, marker);
    
    // 지도 중심좌표를 접속위치로 변경합니다
    map.setCenter(locPosition);      
}    
</script>
<%if(cafe_list!=null) {%>
<div class="container main-container" align = "center">
        <div class="col-md-12">
            <form action="#" method="post">
                <div class="container row" style="float:none; margin:0 auto;">
                    <div class="col-md-12">
                    	<div class="liston1">
                    		<img src="https://www.jeongdong.or.kr/static/portal/img/HKPU_04_04_pic1.jpg" alt="logo" style="width:25%;">
        			    	 <p><%=cafe_list.get(0).getCafeName() %> </p>
        			  	  <p>주소 : <%=cafe_list.get(0).getCafeAddress() %> </p>
        			  	  <p>번호 : <%=cafe_list.get(0).getCafeTel() %> </p>
        			  	  <p><a href = "infoService?businessNumber=2">상세보기</a> </p>
        			    </div>
                    </div>
                    <div class="col-md-12">
                    </div>
                    <div class="col-md-12">
                    </div>
                    <div class="col-md-12">
                    </div>
                    <div class="col-md-12">
                    </div>
                    <div class="col-md-12">
                    </div>
                    <div class="col-md-12">
                    </div>
                    <div class="col-md-12">
                    </div>                   
                    <div class="col-md-4">
                    </div> 
                    <div class="col-md-4">
                    </div> 
                    <div class="col-md-4">
                    </div> 
                </div>
            </form>
        </div>
    </div>
   <%}else{ %>
<div class="container main-container" align = "center">
        <div class="col-md-12">
            <form action="#" method="post">
                <div class="container row" style="float:none; margin:0 auto;">
                    <div class="col-md-12">
                    </div>
                    <div class="col-md-12">
                    </div>
                    <div class="col-md-12">
                    </div>
                    <div class="col-md-12">
                    </div>
                    <div class="col-md-12">
                    </div>
                    <div class="col-md-12">
                    </div>
                    <div class="col-md-12">
                    </div>
                    <div class="col-md-12">
                    </div>                   
                    <div class="col-md-4">
                    </div> 
                    <div class="col-md-4">
                    </div> 
                    <div class="col-md-4">
                    </div> 
                </div>
            </form>
        </div>
    </div>
    <%} %>
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