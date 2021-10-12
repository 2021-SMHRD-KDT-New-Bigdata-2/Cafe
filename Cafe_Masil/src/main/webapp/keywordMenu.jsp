<%@page import="com.model.cafeVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
   <% 
   memberVO vo = (memberVO)session.getAttribute("member"); 
   %>
   
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
    	width:500px; height:500px;"
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
                
                    <!-- 1. single work -->
                    <div class="col-md-4 col-sm-12">
                        <a href="infoService?businessNumber=1000000001" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20210629_138%2F162493686744844uxK_JPEG%2FX4EqxguJ4FdC8nQqPaFs5QE6.jpg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>더빅커피</span>
                                        <em></em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 2. single work -->
                    <div class="col-md-4 col-sm-6 delivery groupseat beansell roasting dessert">
                        <a href="infoService?businessNumber=1000000002" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxODExMjlfMTkx%2FMDAxNTQzNDE5NDA3ODYw.DB6_a5k8FMKd4FryvhZJFbAVI37agEiF7BmiPdN-T4wg.g91V2mOkPs_OU0DhD-A9-zowVnSw4ziePCp9yqDBk8og.JPEG.cn3040%2FNaverBlog_20181129_003647_01.jpg&type=sc960_832" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>고마다커피</span>
                                        <em>배달 / 다인석 / 원두판매 / 로스팅 / 디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 3. single work -->
                    <div class="col-md-4 col-sm-6 beansell companion roasting dessert">
                        <a href="infoService?businessNumber=1000000003" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20190125_50%2F1548404949290B40bq_JPEG%2FWTTGFgMMj_bkA7fwdvuStY4d.jpg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>일다</span>
                                        <em>원두판매 / 반려동물 / 로스팅 / 디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 4. single work -->
                    <div class="col-md-4 col-sm-6 delivery groupseat">
                        <a href="infoService?businessNumber=1000000004" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAyMjdfMjA1%2FMDAxNjE0NDE3NjAyODI4.Qy041FHKooTKUHKwXd_oEYqirxj7qyX8ZjCCb_bQLlwg.8dLWVbnL56mZ8JYBgg5HLsP6Mh5LLACKC1yz0pOQNegg.JPEG.freegee_%2FIMG_5184.jpg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>카페, 다옴 279-51</span>
                                        <em>배달 / 다인석</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 5. single work -->
                    <div class="col-md-4 col-sm-6 delivery groupseat companion smokingArea dessert">
                        <a href="infoService?businessNumber=1000000005" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAzMjRfMjAy%2FMDAxNjE2NTY1MDgzMjI0.0QZHOaPsGqDh0TDceyHK70up23FVaJH7Cv4fzg_kclMg.zC5YtDz4IotOIjSqAlRjqidf3zc-ujOGdKjAvOX0mNAg.JPEG.wlswls1022%2FKakaoTalk_20210322_083152607_08.jpg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>010카페</span>
                                        <em>배달 / 다인석 / 반려동물 / 흡연실 / 디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 6. single work -->
                    <div class="col-md-4 col-sm-6 beansell roasting dessert">
                        <a href="infoService?businessNumber=1000000006" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTEwMDJfMTEy%2FMDAxNjMzMTIxNjU1NDI2.OJkp_hRzY6UpYg_YfSDoeLGb2VI2sfByOkH0w_oAVNMg.WorAwiVGGEngy0Imb5gFwJbL6GuJZ3GF_5i74KlxEgwg.JPEG.car01215%2F20210929%25A3%25DF135531%25A3%25AD01.jpeg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>럭키7카페</span>
                                        <em>원두판매 / 로스팅 / 디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 7. single work -->
                    <div class="col-md-4 col-sm-6 delivery groupseat companion dessert">
                        <a href="infoService?businessNumber=1000000007" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDExMDJfNzIg%2FMDAxNjA0MzE0MjgzMDA5.opPQX2oIeOEFhblNPiPtAegF0DPTQSc4SdId_IvGG5sg.wVaAJMWIwsysOUArSWaTSq85S2WUUGVSdfvq-MAUXbwg.JPEG.qkrruddk782%2F%25B3%25BB%25BA%25CE3.jpg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>온클라우드나인</span>
                                        <em>배달 / 다인석 / 반려동물 / 디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 8. single work -->
                    <div class="col-md-4 col-sm-6 ">
                        <a href="infoService?businessNumber=1000000008" class="portfolio_item">
                            <center><img src="" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>럭키세븐커피</span>
                                        <em></em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 9. single work -->
                    <div class="col-md-4 col-sm-6 ">
                        <a href="infoService?businessNumber=1000000002" class="portfolio_item">
                            <center><img src="" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>간식</span>
                                        <em></em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 10. single work -->
                    <div class="col-md-4 col-sm-6 ">
                        <a href="infoService?businessNumber=1000000002" class="portfolio_item">
                            <center><img src="" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>시크릿가든</span>
                                        <em></em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 11. single work -->
                    <div class="col-md-4 col-sm-6 ">
                        <a href="infoService?businessNumber=1000000002" class="portfolio_item">
                            <center><img src="" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>라플레버</span>
                                        <em></em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 12. single work -->
                    <div class="col-md-4 col-sm-6 ">
                        <a href="infoService?businessNumber=1000000002" class="portfolio_item">
                            <center><img src="" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>비티씨인무드</span>
                                        <em></em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 13. single work -->
                    <div class="col-md-4 col-sm-6 ">
                        <a href="infoService?businessNumber=1000000002" class="portfolio_item">
                            <center><img src="" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>무드로우</span>
                                        <em></em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 14. single work -->
                    <div class="col-md-4 col-sm-6 ">
                        <a href="infoService?businessNumber=1000000002" class="portfolio_item">
                            <center><img src="" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>카페 크레테</span>
                                        <em></em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 15. single work -->
                    <div class="col-md-4 col-sm-6 ">
                        <a href="infoService?businessNumber=1000000002" class="portfolio_item">
                            <center><img src="" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>리버플로우</span>
                                        <em></em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 16. single work -->
                    <div class="col-md-4 col-sm-6 ">
                        <a href="infoService?businessNumber=1000000002" class="portfolio_item">
                            <center><img src="" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>다감적</span>
                                        <em></em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 17. single work -->
                    <div class="col-md-4 col-sm-6 ">
                        <a href="infoService?businessNumber=1000000002" class="portfolio_item">
                            <center><img src="" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>훼이보릿커피</span>
                                        <em></em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 18. single work -->
                    <div class="col-md-4 col-sm-6 ">
                        <a href="infoService?businessNumber=1000000002" class="portfolio_item">
                            <center><img src="" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>해롱해롱</span>
                                        <em></em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 19. single work -->
                    <div class="col-md-4 col-sm-6 ">
                        <a href="infoService?businessNumber=1000000002" class="portfolio_item">
                            <center><img src="" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>베러데이즈</span>
                                        <em></em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 20. single work -->
                    <div class="col-md-4 col-sm-6 ">
                        <a href="infoService?businessNumber=1000000002" class="portfolio_item">
                            <center><img src="" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>카페수</span>
                                        <em></em>
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