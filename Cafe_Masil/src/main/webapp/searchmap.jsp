<%@page import="com.model.memberVO"%>
<%@page import="com.model.cafeVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<% String searchword = request.getParameter("searchword"); %>
	<% memberVO vo = (memberVO)session.getAttribute("member"); %>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cafe Masil : 카페검색</title>
    <link rel="icon" href="img/cogumaemoji.png" type="image/x-icon">

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
	    margin:30px 0 30px 0;
	    padding:30px 30px 30px 30px;
	    border-radius: 20px;
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
	
	#searchForm{
		border:1px solid black;
		width:330px;
		height:50px;
		border-radius:50px;
		margin-left:37%;
		padding:5px 50px 0 25px;
	}
	input{
		width:230px;
		font-size:18px;
		border:none;
		padding:2px 0 0 10px;;
		position:relative;
	}
	button{
		width:40px;
		background-color:white;
		padding:2px;
		border:none;
		position:absolute;
		margin:5px;
	}
	
	.glyphicon.glyphicon-search::before{
		padding:0;
		font-size:22px;
		width:35px;
		height:35px;
	}
	.cafeName{
		fong-size:30px;
		padding-top:35px;
	}
	p{
		font-size:20px;
		color:black;
	}
	.btn.btn-default{
	border:none;
}
.form-control{
	border:none;
	font-size:15px;
	padding:6px 3px;
}
.navbar-form.navbar-right{
	border:1px solid #777;
	border-radius:50px;
	background-color: #fff;
}
	</style>
</head>
<body>   
	 <!-- box header -->
        <!-- navbar-->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href=main.jsp><img src="img\CM5.png" width="50px" alt="CAFE,MASIL"></a> <!-- 카페 왼쪽 상단-->
        </div>
        <div class="collapse navbar-collapse" id="bs-example-collapse-1">
          <!-- 네비게이션 바에 회원로그인-->
        <% if(vo==null){%>
          <ul class="nav navbar-nav navbar-right">
          <li ><a href="bosslogin.jsp">카페관리<span class="sr-only"></span></a></li>
            <li ><a href="login.jsp">로그인<span class="sr-only"></span></a></li>
            <li ><a href="join.jsp">회원가입</a></li>
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
              <a class="box-primary-nav-trigger" href="#0">
                <span class="box-menu-text">Menu</span><span class="box-menu-icon">
            </a>
          </ul>
          <%}else{%>
          <ul class="nav navbar-nav navbar-right">
          <li ><a href="bosslogin.jsp">카페관리<span class="sr-only"></span></a></li>
            <li ><a href="LogoutService">로그아웃</a></li>
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
              <a class="box-primary-nav-trigger" href="#0">
                <span class="box-menu-text">Menu</span><span class="box-menu-icon">
            </a>
          </ul>
          <%}%>
        </div>
      </div>
    </nav>.
  
        <!-- end navbar -->
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
                <li><a href="MyCafe.jsp">MyCafe</a></li>
                <li><a href="gogacJiwon.jsp">고객지원</a></li>
                
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
	<div class="container main-container search">
                <div class="container row search">
					<form id="searchForm" action="searchmapService" method="post">
					<%if(searchword==null){ %>
						<input name="searchword" type="text" placeholder="카페명을 검색하세요">
						<button type="submit">
						<span class="glyphicon glyphicon-search"aria-hidden="true"></span>
						</button>
					<%}else{ %>
						<input name="searchword" type="text" placeholder="<%=searchword %>">
						<button type="submit">
						<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
						</button>
					<%} %>
					</form>
                </div>
    </div>
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
            message = '<div style="padding:5px;"><%=cafe_list.get(0).getCafeName() %></div>'; // 인포윈도우에 표시될 내용입니다
        
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
        
        var locPosition = new kakao.maps.LatLng(123,12), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
            message = '<div style="padding:5px;"></div>'; // 인포윈도우에 표시될 내용입니다
        
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
                    		<img src="<%=cafe_list.get(0).getImage1() %>" alt="logo" style="width:25%;">
        			    	 <p class="cafeName"><%=cafe_list.get(0).getCafeName() %> </p>
        			  	  <p>주소 : <%=cafe_list.get(0).getCafeAddress() %> </p>
        			  	  <p>번호 : <%=cafe_list.get(0).getCafeTel() %> </p>
        			  	  <p><a href = "infoService?businessNumber=<%=cafe_list.get(0).getBusinessNumber() %>">상세보기</a> </p>
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
          <i class="fa fa-love">당신의 동네와 함께 하는, CafeMasil</i><br>
          <a href="https://www.youtube.com/watch?v=BS7tz2rAOSA">Made by, Co.구마</a>
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