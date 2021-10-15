<%@page import="com.model.memberVO"%>
<%@page import="com.model.cafeVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>   
<!DOCTYPE html>
<html lang="en">

<head>
	<% memberVO vo = (memberVO)session.getAttribute("member"); %>
	<% ArrayList<cafeVO> info_list =  (ArrayList<cafeVO>)session.getAttribute("info_list"); %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<<<<<<< HEAD
    <title>Cafe, Masil : 카페 상세정보</title>
=======
    <title>Box personal portfolio Template</title>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-New-Bigdata-2/Cafe.git
    <link rel="icon" href="img/cogumaemoji.png" type="image/x-icon">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="ionicons/css/ionicons.min.css" rel="stylesheet">

    <!-- main css -->
    <link href="css/style.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>



    <!-- modernizr -->
    <script src="js/modernizr.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    

    <style>
      #carousel-cafe-generic{
      height: 600px;
  	  width: 600px;
}
      #carousel-cafe-generic{
      top: 50%;
  	  left: 50%;
   	  transform: translate(-50%,-10%);
      overflow: hidden;
}
      .item{
      height: 600px;
      object-fit: cover;
}
      .item>img{
      max-height: 100%;
      width: auto;
      display: block;
      margin: 0px auto;
      top: 50%;
   	 
}
/* image modal */
      .modal {
	  display: none;
	  z-index: 500;
	  width: 100%;
	  height: 100%;
	  position: fixed;
	  top: 0;
	  left: 0;
	  background-color: rgba(0, 0, 0, 0.8);
}
		.modalBox {
		position: relative;
		text-align: center;
		top : 50%;
		left : 50%;
		position : sticky;
}
div img:hover{
   		 cursor: -webkit-zoom-in;
}
	/* image modal end */
    </style>
</head>

<body>

    <!-- Preloader -->
    <div id="preloader">
        <div class="pre-container">
            <div class="spinner">
                <div class="double-bounce1"></div>
                <div class="double-bounce2"></div>
            </div>
        </div>
    </div>
    <!-- end Preloader -->

    <div class="container-fluid">
       <!-- box-header -->
        <header class="box-header">
            <div class="box-logo">
                <a href="main.jsp"><img src="img/fav.png" width="80" alt="Logo"></a>
            </div>
            <!-- box-nav -->
            <a class="box-primary-nav-trigger" href="#0">
                <span class="box-menu-text">Menu</span><span class="box-menu-icon"></span>
            </a>
            <!-- box-primary-nav-trigger -->
        </header>
        <!-- end box-header -->
        
        <!-- box header -->
        <!-- navbar-->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href=main.jsp><img src="img\CM2.png" width="60" alt="img09"></a> <!-- 카페 왼쪽 상단-->
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
          <form action = "searchmapService" class="navbar-form navbar-right" role="search" method="get">
            <div class="form-group">
              <input name = "searchword" type="text" class="form-control" placeholder="검색">
            </div>
            <button type="submit" class="btn btn-default">GO!</button>
          </form>
        </div>
      </div>
    </nav>
        
        
        
        
        
        
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
    </div>
    
    <!-- top-bar -->
    <div class="top-bar">
        <h1>상세보기</h1>
    </div>
    <!-- end top-bar -->
    
    <!-- start modal -->
<div class="modal">
    <div class="modalBox">
    </div>
</div> 
    
    <!-- main-container -->
    <div class="container main-container">
    
    
    <div class="center-block">
    <div id="carousel-cafe-generic" class="carousel slide" data-ride="carousel" >
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-cafe-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-cafe-generic" data-slide-to="1"></li>
    <li data-target="#carousel-cafe-generic" data-slide-to="2"></li>
    <li data-target="#carousel-cafe-generic" data-slide-to="3"></li>
    <li data-target="#carousel-cafe-generic" data-slide-to="4"></li>
    <li data-target="#carousel-cafe-generic" data-slide-to="5"></li>
    <li data-target="#carousel-cafe-generic" data-slide-to="6"></li>
    <li data-target="#carousel-cafe-generic" data-slide-to="7"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src=<%=info_list.get(0).getBoard() %> alt="..." class="img-thumbnail" data-pause=""  >
      <div class="carousel-caption"> 메뉴판
      </div>
    </div>
    <div class="item">
      <img src=<%=info_list.get(0).getImage1() %> alt="..."class="img-thumbnail">
    	<div class="carousel-caption"> 사진 1
      </div>
    </div>
     <div class="item">
      <img src=<%=info_list.get(0).getImage2() %> alt="..."class="img-thumbnail">
    	<div class="carousel-caption"> 사진 2
      </div>
    </div>
     <div class="item">
      <img src=<%=info_list.get(0).getImage3() %> alt="..."class="img-thumbnail">
    	<div class="carousel-caption"> 사진 3
      </div>
    </div>
     <div class="item">
      <img src=<%=info_list.get(0).getImage4() %> alt="..."class="img-thumbnail">
    	<div class="carousel-caption"> 사진 4
      </div>
    </div>
    
     <div class="item">
      <img src=<%=info_list.get(0).getImage5() %> alt="..."class="img-thumbnail">
    	<div class="carousel-caption"> 사진 5
      </div>
    </div>
     <div class="item">
      <img src=<%=info_list.get(0).getImage6() %> alt="..."class="img-thumbnail">
    	<div class="carousel-caption"> 사진 6
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-cafe-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-cafe-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>    


        <div class="col-md-12">
            <h3 class="text-uppercase"><%=info_list.get(0).getCafeName()%></h3>
            <h5><%=info_list.get(0).getCafeAddress()%></h5>
            <div class="h-30"></div>
        </div>

        <div class="col-md-9">
            <p> <%=info_list.get(0).getEtc() %> </p>
        </div>

        <div class="col-md-3">
            <ul class="cat-ul">
                <li><i class="ion-ios-circle-filled"></i> 전화번호 : <%=info_list.get(0).getCafeTel()%></li>
                <li><i class="ion-ios-circle-filled"></i> 아메지수 : <%=info_list.get(0).getAmeIndex()%></li>
                <li><i class="ion-ios-circle-filled"></i> 운영시간 : <%=info_list.get(0).getCafeHours()%></li>
                <li><i class="ion-ios-circle-filled"></i> 추천메뉴 : <%=info_list.get(0).getBestmenu()%></li>
                <li><i class="ion-ios-circle-filled"></i> 테이블개수 : <%=info_list.get(0).getTableNum()%></li>
            </ul>
            <div class="h-10"></div>
            <h4>Share</h4>
            <ul class="social-ul">
                <li class="box-social"><a href="#0"><i class="ion-social-facebook"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-instagram-outline"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-twitter"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-dribbble"></i></a></li>
            </ul>
        </div>
    </div>
    <!-- end main-container -->
<div class="container main-container">
        <div class="col-md-6">
            <form action="#" method="post">
                <div class="container row" style="float:none; margin:0 auto;">
                    <div class="col-md-6">
                       <a href = "subscribeService?businessNumber=<%=info_list.get(0).getBusinessNumber() %>&id=<%=vo.getId() %>&cafeName=<%=info_list.get(0).getCafeName() %>" class="btn btn-box">구독</a>
                    </div>
                    <div class="col-md-6">
                    	<a href = "stampService?businessNumber=<%=info_list.get(0).getBusinessNumber() %>&tel=<%=vo.getTel() %>&cafeName=<%=info_list.get(0).getCafeName() %>" class="btn btn-box">스탬프 발급</a>
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
<script>

    $(function(){
//      이미지 클릭시 해당 이미지 모달
    $(".item").click(function(){
         let img = new Image();
         img.src = $(this).attr("src")
         $('.modalBox').html(img);
         $(".modal").show();
     });
     
     
     
//   모달 클릭할때 이미지 닫음
     $(".modal").click(function (e) {
     $(".modal").toggle();
   });
 });
</script>

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