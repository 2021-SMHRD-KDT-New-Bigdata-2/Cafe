<%@page import="com.model.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
   <% memberVO vo = (memberVO)session.getAttribute("member"); %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Cafe, Masil</title>
    <link rel="icon" href="img/cogumaemoji.png" type="image/x-icon">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="ionicons/css/ionicons.min.css" rel="stylesheet">

    <!-- main css -->
    <link href="css/style.css" rel="stylesheet">


    <!-- modernizr -->
    <script src="js/modernizr.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/rㄹespond.min.js"></script>
    <![endif]-->
    
    <style>
   .row {
overflow: hidden;
position: relative;
z-index:-1;
}

   #overlay {
position: absolute;
top: 0;
left: 0;
width: 100%;
height: 100%;
background: #FFF;
opacity: 0.8;
            /*background:rgba(255,255,255,0.8); or just this*/
z-index: 50;
color: #000;
overflow: hidden;
        }
   .navbar-brand{
position: absolute;
top: -30%;
left: 1%;
}
.center-block {
  display: block;
  margin-left: auto;
  margin-right: auto;
}

.element {
  .center-block();
}
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

        <!-- box header -->
        <!-- navbar-->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href=main.jsp><img src="img\CM5.png" width="50" alt="img09"></a> <!-- 카페 왼쪽 상단-->
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

        <!-- box-intro -->
    
       <div class="row">
        <div class="col-md-12">
            <p align="center">
                <iframe class="embed-responsive-item" width="100%" height="900px"
                    src="https://www.youtube.com/embed/18niiM-1dfI?autoplay=1&mute=1"
                     title="YouTube video player"
                    frameborder="0" scrolling="no"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen alt="#썸네일#"></iframe></p>
                <div class="text-wrap">
                    <div id="overlay">
                        <h1 style="text-align: center;"><span
                                style="font-family: Georgia, serif, 바탕, batang; font-size: 120px;"><em><br><br>CAFE,<br>MASIL</em></span>
                        </h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <!-- end box-intro -->
    </div>
    
    <p style="pading-top: 200px; margin:200px; align:center;">
    <center><h1> 우리 동네의 숨겨진 보물을 발견해보세요. </h1></center><br>
    <center><h4> 특색있는 카페들이 당신을 기다리고있어요. </h4></center></p>

    <!-- portfolio div -->
    <div class="portfolio-div"  style= "padding-top: 200px; padding-down: 150px;">
        <div class="portfolio">
            <div class="no-padding portfolio_container">
                <!-- single work -->
                <div class="col-md-3 col-sm-6  fashion logo">
                    <a href="single-project.html" class="portfolio_item">
                        <img src="http://placehold.it/1000x1000" alt="image" class="img-responsive" />
                        <div class="portfolio_item_hover">
                            <div class="portfolio-border clearfix">
                                <div class="item_info">
                                    <span>Mockups in seconds</span>
                                    <em>Fashion / Logo</em>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- end single work -->

                <!-- single work -->
                <div class="col-md-3 col-sm-6 ads graphics">
                    <a href="single-project.html" class="portfolio_item">
                        <img src="http://placehold.it/1000x1000" alt="image" class="img-responsive" />
                        <div class="portfolio_item_hover">
                            <div class="portfolio-border clearfix">
                                <div class="item_info">
                                    <span>Floating mockups</span>
                                    <em>Ads / Graphics</em>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- end single work -->

                <!-- single work -->
                <div class="col-md-6 col-sm-12 photography">
                    <a href="single-project.html" class="portfolio_item">
                        <img src="http://placehold.it/1000x1000" alt="image" class="img-responsive" />
                        <div class="portfolio_item_hover">
                            <div class="portfolio-border clearfix">
                                <div class="item_info">
                                    <span>Photorealistic smartwatch</span>
                                    <em>Photography</em>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- end single work -->

                <!-- single work -->
                <div class="col-md-3 col-sm-6 fashion ads">
                    <a href="single-project.html" class="portfolio_item">
                        <img src="http://placehold.it/1000x1000" alt="image" class="img-responsive" />
                        <div class="portfolio_item_hover">
                            <div class="portfolio-border clearfix">
                                <div class="item_info">
                                    <span>Held by hands</span>
                                    <em>Fashion / Ads</em>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- end single work -->

                <!-- single work -->
                <div class="col-md-3 col-sm-6 graphics ads">
                    <a href="single-project.html" class="portfolio_item">
                        <img src="http://placehold.it/1000x1000" alt="image" class="img-responsive" />
                        <div class="portfolio_item_hover">
                            <div class="portfolio-border clearfix">
                                <div class="item_info">
                                    <span>Mobile devices</span>
                                    <em>Graphics / Ads</em>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- end single work -->

                <!-- single work -->
                <div class="col-md-6 col-sm-12 photography">
                    <a href="single-project.html" class="portfolio_item">
                        <img src="http://placehold.it/1000x1000" alt="image" class="img-responsive" />
                        <div class="portfolio_item_hover">
                            <div class="portfolio-border clearfix">
                                <div class="item_info">
                                    <span>Photorealistic smartwatch</span>
                                    <em>Photography</em>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- end single work -->

                <!-- single work -->
                <div class="col-md-3 col-sm-6 graphics ads">
                    <a href="single-project.html" class="portfolio_item">
                        <img src="http://placehold.it/1000x1000" alt="image" class="img-responsive" />
                        <div class="portfolio_item_hover">
                            <div class="portfolio-border clearfix">
                                <div class="item_info">
                                    <span>Mobile devices</span>
                                    <em>Graphics / Ads</em>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- end single work -->

                <!-- single work -->
                <div class="col-md-3 col-sm-6 graphics ads">
                    <a href="single-project.html" class="portfolio_item">
                        <img src="http://placehold.it/1000x1000" alt="image" class="img-responsive" />
                        <div class="portfolio_item_hover">
                            <div class="portfolio-border clearfix">
                                <div class="item_info">
                                    <span>Mobile devices</span>
                                    <em>Graphics / Ads</em>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- end single work -->

                <!-- single work -->
                <div class="col-md-3 col-sm-6 graphics ads">
                    <a href="single-project.html" class="portfolio_item">
                        <img src="http://placehold.it/1000x1000" alt="image" class="img-responsive" />
                        <div class="portfolio_item_hover">
                            <div class="portfolio-border clearfix">
                                <div class="item_info">
                                    <span>Mobile devices</span>
                                    <em>Graphics / Ads</em>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- end single work -->

                <!-- single work -->
                <div class="col-md-3 col-sm-6 graphics ads">
                    <a href="single-project.html" class="portfolio_item">
                        <img src="http://placehold.it/1000x1000" alt="image" class="img-responsive" />
                        <div class="portfolio_item_hover">
                            <div class="portfolio-border clearfix">
                                <div class="item_info">
                                    <span>Mobile devices</span>
                                    <em>Graphics / Ads</em>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- end single work -->
            </div>
            <!-- end portfolio_container -->
        </div>
        <!-- portfolio -->
    </div>
    <!-- end portfolio div -->
    
    
 <hr>
 <p style="pading: 100px; margin:50px; align:center;">
    <center><h1> 원하는 키워드로 카페를 찾아보세요 </h1></center><br>
    <center><h4> All# 와이파이# 단체석# 원두판매# 애견동반# 24시간# 루프탑# 국민지원금</h4></center></p>
    <br><br><br><br></div>
      <!-- Thumbnail start -->
    <div class="container" style="padding: 50px;">
      <div class="row">
        <div class="col-sm-6 col-md-4 ">
          <div class="thumbnail">
            <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxODExMjlfMTkx%2FMDAxNTQzNDE5NDA3ODYw.DB6_a5k8FMKd4FryvhZJFbAVI37agEiF7BmiPdN-T4wg.g91V2mOkPs_OU0DhD-A9-zowVnSw4ziePCp9yqDBk8og.JPEG.cn3040%2FNaverBlog_20181129_003647_01.jpg&type=sc960_832" alt="...">
            <div class="caption">
              <h3>고마다</h3>
              <p>#배달 #원두판매</p>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4">
          <div class="thumbnail">
            <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA4MTNfMTIx%2FMDAxNjI4NzgyMTc2NjQ2.SmaBlqxmr14m3hNEc5s8l0B9S6xyo-1gBb9OBL4e2e4g.291WTRIUTs6J4Tjk04LK52bYDgCIqKGagtvwHd0qGb8g.JPEG.tpfls019%2FIMG_0230.jpg&type=sc960_832" alt="...">
            <div class="caption">
              <h3>시크릿가든</h3>
              <p>#카페가 깨끗해요 #</p>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4">
          <div class="thumbnail">
            <img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAxMjRfMTM5%2FMDAxNjExNDYzODc1NzQw.WdnFlykA9ExR6-ZoFSFtfagWpGMZZ5VkNQStWLMuqBwg.-2-jhGi9IjfHM667jmF_HAeyA_7puJ1rKqwZSaYy_ksg.JPEG.lovepinkday%2F9FFBCB00-19BC-4A59-8A31-8412803A546A.jpeg" alt="...">
            <div class="caption">
              <h3>비티씨인무드</h3>
              <p>카페 설명</p>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4">
          <div class="thumbnail">
            <img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMDlfMTc1%2FMDAxNTgzNzI1NjY4Mjkw.hCVpKpNE-tT44uVoVz_ZOrpH3uvZFzPwaHFQsn80eHUg.HZO0N-imWC7q2viJZ9NrhVUWHTGvZKDGNOcK80XYe64g.JPEG.saladbuono%2FC7C6CD58-8F1A-4C0A-8E87-D8B594AF3A73.jpg" alt="...">
            <div class="caption">
              <h3>카페이름 4</h3>
              <p>카페 설명</p>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4">
          <div class="thumbnail">
            <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20091031_135%2Fgrace_rain_1256999897381q9FAp_jpg%2F%25C7%25CF%25B9%25D9%25BA%25F1_001_grace_rain.jpg&type=sc960_832" alt="...">
            <div class="caption">
              <h3>커피공장 하나비</h3>
              <p>카페 설명</p>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 ">
          <div class="thumbnail">
            <img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA5MTVfMTMz%2FMDAxNjMxNzA0ODUyMzk0.zXAtlCIDmt_dLwyHKPRhKfksjtBxxMh4bGb5O75Tidsg.HrpEYWUvSeiPDmbKt6HNMlOrBDcWNapKMWsAoFy9ZMYg.JPEG.jjoyuzin%2FIMG_5196.JPG" alt="...">
            <div class="caption">
              <h3>다이브인커피</h3>
              <p>카페 설명</p>
            </div>
          </div>
        </div>
      </div>   
   </div>
      <!-- end Thumbnail  -->
   
   <hr>
   <!--  insert img -->
   
   <hr>
   
   <div class="row">
      <div class="col-sm-12">
         <p class="joinUs">
          <center><h1 style="margin:100px"> 카페 사장님이라면 간단한 양식으로<br> CAFEMASIL의 식구가 될 수 있어요! </h1></center><br>
          <center><button class="btn btn-danger" type="submit">동행하기</button></center></p>
      </div>
   </div>
   
   <hr>
   
   <!-- end put the image -->
   
   <!-- submit to join service -->

   <!-- end submit to join service -->
   
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