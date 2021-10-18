<%@page import="com.model.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<% memberVO bossLogin = (memberVO)session.getAttribute("bossLogin"); %>
   <% memberVO vo = (memberVO)session.getAttribute("member"); %>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cafe Masil : 구독 / 스탬프 관리</title>
    <link rel="icon" href="img/cogumaemoji.png" type="image/x-icon">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="ionicons/css/ionicons.min.css" rel="stylesheet">

    <!-- main css -->
    <link href="css/style.css" rel="stylesheet">


    <!-- modernizr -->
    <script src="js/modernizr.js"></script>
</head>
<body>   
<style>
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
        <!-- box-header -->

        <!-- end box-header -->

        <!-- box header -->
        <!-- navbar-->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href=main.jsp><img src="img\CM5.png" width="50px" alt="Cafe,Masil"></a> <!-- 카페 왼쪽 상단-->
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
              <input name = "searchword" type="text" class="form-control" placeholder="카페 검색">
            </div>
            <button type="submit" class="btn btn-default">
            <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
            </button>
          </form>
        </div>
      </div>
    </nav>

            <!-- box-primary-nav-trigger -->
        </header>
        <!-- end box header -->

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
        <h1>카페관리</h1>
        <br>
        <p>구독관리 / 스탬프관리</p>
    </div>
    <!-- end Top bar -->
    
    
    <div class="container main-container">
   		<fieldset class="mystamp">
        <div class="col-md-6">
            <form action="messageService?businessNumber=<%=bossLogin.getBusinessNumber()%>" method="post">
                <div class="container row" style="float:none; margin:0 auto;">
                    <div class="col-md-12">
                           <center><legend><p>To 구독자</p></legend></center>
                    </div>
                    <div class="col-md-12">
                        <div class="input-contact">
                            <input name="message" type="text" align="center">
                            <span style="font-size: 15px">구독자에게 보낼 메세지를 입력해주세요</span>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <center><input type="submit" value="전송" class="btn btn-box" style="border:0;outline:0;"></center>
                    </div> 
                    <div>
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
                    <div class="col-md-2">
                    </div> 
                </div>
            </form>
        </div>
        </fieldset>
	</div>
    <div class="container main-container">
        <div class="col-md-6">
            <form action="stampAddService?businessNumber=<%=bossLogin.getBusinessNumber()%>" method="post">
                <div class="container row" style="float:none; margin:0 auto;">
                    <div class="col-md-12">
                            <center><legend><p>스탬프</p></legend></center>
                    </div>
                    <div class="col-md-12">
                        <div class="input-contact">
                            <input name="tel" type="text">
                            <span style="font-size: 15px">이용자의 전화번호를 입력해주세요</span>
                        </div>
                    </div>
                    <div class="col-md-12" style="float:none; margin:0 auto;">
                        <center><input type="submit" value="스탬프 찍기" class="btn btn-box" style="border:0;outline:0;"></center>
                    </div> 
                    <div>
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
                    <div class="col-md-2">
                    </div> 
                </div>
            </form>
        </div>
	</div>
	<div class="container main-container">
        <div class="col-md-6">
            <form action="stampResetService?businessNumber=<%=bossLogin.getBusinessNumber()%>" method="post">
                <div class="container row" style="float:none; margin:0 auto;">
                    <div class="col-md-12">
                            <center><legend><p>스탬프 초기화</p></legend></center>
                    </div>
                    <div class="col-md-12">
                        <div class="input-contact">
                            <input name="tel" type="text">
                            <span style="font-size: 15px">이용자의 전화번호를 입력해주세요</span>
                        </div>
                    </div>
                    <div class="col-md-12" style="float:none; margin:0 auto;">
                        <center><input type="submit" value="초기화" class="btn btn-box" style="border:0;outline:0;"></center>
                    </div> 
                    <div>
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
                    <div class="col-md-2">
                    </div> 
                </div>
            </form>
        </div>
	</div>
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