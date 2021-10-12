<%@page import="com.model.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
   <% memberVO vo = (memberVO)session.getAttribute("member"); %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Box personal portfolio Template</title>
    <link rel="icon" href="img/fav.png" type="image/x-icon">

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
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style>
    	.no-padding [class^="col-"] {
    	padding-top:30px; 
    	padding-bottom:30px;
    	}
    	
    	.no-padding [class^="col-"] img{
    	border-radius: 30px;
    	width:600px; height:600px;"
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

    <div class="container-fluid">
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
    </div>

    <!-- top bar -->
    <div class="top-bar">
        <h1>전체 카페</h1>
    </div>
    <!-- end top bar -->

    <!-- main container -->
    <div class="main-container portfolio-inner clearfix">
        <!-- portfolio div -->
        <div class="portfolio-div">
            <div class="portfolio">
                <!-- portfolio_filter -->
                <div class="categories-grid wow fadeInLeft">
                    <nav class="categories text-center">
                        <ul class="portfolio_filter">
                            <li><a href="" class="active" data-filter="*">All</a></li>
                            <li><a href="" data-filter=".delivery">배달</a></li>
                            <li><a href="" data-filter=".groupseat">다인석</a></li>
                            <li><a href="" data-filter=".beansell">원두판매</a></li>
                            <li><a href="" data-filter=".companion">반려동물</a></li>
                            <li><a href="" data-filter=".smokingArea">흡연구역</a></li>
                            <li><a href="" data-filter=".roasting">로스팅</a></li>
                            <li><a href="" data-filter=".dessert">디저트</a></li>
                        </ul>
                    </nav>
                </div>
                <!-- portfolio_filter -->

                <!-- portfolio_container -->
                <div class="no-padding portfolio_container clearfix">
                    <!-- single work -->
                    <div class="col-md-4 col-sm-6 fashion logo">
                        <a href="infoService?businessNumber=2" class="portfolio_item">
                            <center><img src="" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>인더하우스</span>
                                        <em>Fashion / Logo</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->

                    <!-- single work -->
                    <div class="col-md-4 col-sm-6 ads graphics">
                        <a href="single-project.html" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA5MjNfMjUy%2FMDAxNjMyMzU3NTI1NTc2.i9GfydlJUg2bNjpvoERdlvWSTUN-x6x4TiERs5-CAjgg.I--CRbfrEN22MOTFvb4lhKJPWQfmhAF5TpM2SBRwI6Yg.JPEG.woneebe%2F20210609_193806.jpg&type=a340" alt="image" class="img-responsive" ></center>
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
                    <div class="col-md-4 col-sm-12 photography">
                        <a href="single-project.html" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA5MTNfMjU0%2FMDAxNjMxNTQyNzI0MTQ4.0K4fU7LB4u54kU-6eq7_H913P_x8tVAzcoHx1pTSL14g.ov3k6ZhBdBUDXeIaxYf5UnISdF8nB5RsK3HwG7GEiMIg.JPEG.ehdrmftlsl%2FKakaoTalk_20210913_224336807_06.jpg&type=a340" alt="image" class="img-responsive" /></center>
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
                    <div class="col-md-4 col-sm-6 fashion ads">
                        <a href="single-project.html" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA5MzBfMjc1%2FMDAxNjMyOTc3NTYzMTQx.JHmICdLeuNOxvxBJaKmeub3VzMo63iFELRieytNHLzYg.MkxV43xKoY2UFDHLcS8nMkv6Ag3dTWIIY4CCAGDqCzsg.JPEG.soyammy%2FIMG_4244.jpg&type=a340" alt="image" class="img-responsive" /></center>
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
                    <div class="col-md-4 col-sm-6 graphics ads">
                        <a href="single-project.html" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA5MTVfMTE1%2FMDAxNjMxNjc4NDQ2NjI3.2G3j9YJkB5BouUbFa8RboPEhyZFW0MMOF4ZFA13bDzkg.1iRMVXxZTwXHQEokrep4kqvUsk239dk5t2_eh34B9xwg.JPEG.yonsun51%2F20210910%25A3%25DF132451.jpg&type=a340" alt="image" class="img-responsive" /></center>
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
                    <div class="col-md-4 col-sm-12 photography">
                        <a href="single-project.html" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA5MjZfMTU2%2FMDAxNjMyNjUzODQ3NTg4.um7BF-ia7aSNfjr5ubz9JPFSC_Ij5iTN7boj_eCp1FAg.MU4OdUSUO3v8x89UO3WjcnDGQ7JC3ztfRsVDF8wHXRYg.JPEG.chomhow7%2Fphoto-1627982031565-4e9799032058.jpg&type=a340" alt="image" class="img-responsive"/></center>
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
                    <div class="col-md-4 col-sm-6 graphics ads">
                        <a href="single-project.html" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA5MjhfMTk4%2FMDAxNjMyODMzNDU3NDg5.OpVc_XcHID4QZ8w9BzZMrkjEJK3hgaKXh-ehHNzywSMg.yeUd332wDTwLA-lJKE-Se2UYxbOh4XbTN9qtjU_IuPog.JPEG.saaa95%2FIMG_9482.JPG&type=a340" alt="image" class="img-responsive"/></center>
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
                    <div class="col-md-4 col-sm-6 graphics ads">
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
                    <div class="col-md-4 col-sm-6 graphics ads">
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
    </div>
    <!-- end main container -->


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