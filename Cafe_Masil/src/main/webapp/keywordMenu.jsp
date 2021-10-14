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
                    <div class="col-md-4 col-sm-6 delivery beansell companion roasting dessert">
                        <a href="infoService?businessNumber=1000000008" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA3MjVfMTYg%2FMDAxNjI3MTM5ODE3NDU5.OQTCBbDeu0DhUBqow0dj2muqipw-SrYILdS1hSqUly0g.3b47PoIKM3HYDPsh40vDIPekRNklK2yaItbz3ay5QvEg.JPEG.fkqpsej1984%2FIMG_8380.jpg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>럭키세븐커피</span>
                                        <em>배달 / 원두판매 / 반려동물 / 로스팅 / 디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 9. single work -->
                    <div class="col-md-4 col-sm-6 groupseat dessert">
                        <a href="infoService?businessNumber=1000000009" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA4MTdfMzgg%2FMDAxNjI5MjA3NjY5OTgw.AoTiPSklAXec3VqXeLGPO8hgeyoGfBYzcVSKWsjqx-0g.0zPcEbIyTfxNXQfXSR5OhflI5-5jgjgxjznOnCxxGvMg.JPEG.soonchun1217%2Foutput_3926190385.jpg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>간식</span>
                                        <em>다인석 / 디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 10. single work -->
                    <div class="col-md-4 col-sm-6 groupseat dessert">
                        <a href="infoService?businessNumber=1000000010" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA4MTNfMTIx%2FMDAxNjI4NzgyMTc2NjQ2.SmaBlqxmr14m3hNEc5s8l0B9S6xyo-1gBb9OBL4e2e4g.291WTRIUTs6J4Tjk04LK52bYDgCIqKGagtvwHd0qGb8g.JPEG.tpfls019%2FIMG_0230.jpg&type=sc960_832" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>시크릿가든</span>
                                        <em>다인석 / 디저트 </em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 11. single work -->
                    <div class="col-md-4 col-sm-6 delivery groupseat dessert">
                        <a href="infoService?businessNumber=1000000011" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fmyplace-phinf.pstatic.net%2F20210906_143%2F1630901280307FHbTr_JPEG%2Fupload_ba9c3123600165db9955562c981287ab.jpeg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>라플레버</span>
                                        <em>배달 / 다인석 / 디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 12. single work -->
                    <div class="col-md-4 col-sm-6 beansell dessert">
                        <a href="infoService?businessNumber=1000000012" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA5MTBfMjc3%2FMDAxNjMxMjM5NzA0NDI1.oL-YTA51amkFpnJQJsr29vjitWhffOU4Z7bjja9OZxUg.vAZxH8qRysy-xwjBJl__4OaYzbiawdu6W0pM5udiYw8g.JPEG.leejang1226%2FIMG_8623.jpg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>비티씨인무드</span>
                                        <em>원두판매 / 디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 13. single work -->
                    <div class="col-md-4 col-sm-6 delivery groupseat dessert">
                        <a href="infoService?businessNumber=1000000013" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAxMjRfMTM5%2FMDAxNjExNDYzODc1NzQw.WdnFlykA9ExR6-ZoFSFtfagWpGMZZ5VkNQStWLMuqBwg.-2-jhGi9IjfHM667jmF_HAeyA_7puJ1rKqwZSaYy_ksg.JPEG.lovepinkday%2F9FFBCB00-19BC-4A59-8A31-8412803A546A.jpeg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>무드로우</span>
                                        <em>배달 / 다인석 / 디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 14. single work -->
                    <div class="col-md-4 col-sm-6 delivery companion dessert">
                        <a href="infoService?businessNumber=1000000014" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA1MTJfOTcg%2FMDAxNTg5MjU1NTgwNDU0.IF9vFw4YqLeycfSuqIkmK_b68u6KuaJKjZdp7Qx_cRog.DI_v3-44v80E0wAUtONty86n9nbwOl3RwRBJ_xsBkeEg.JPEG.he0205%2F1589255579012.jpg&type=sc960_832" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>카페 크레테</span>
                                        <em>배달 / 반려동물 / 디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 15. single work -->
                    <div class="col-md-4 col-sm-6 groupseat roasting dessert">
                        <a href="infoService?businessNumber=1000000015" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxNjEyMTZfMjkg%2FMDAxNDgxODgxMjk4OTg0.4szbVSYJR81nm4b5_nBgukmOWCsFotU2XpWjXYmVgMcg.UUJiouxT4QKuH4VmCcO6HyM29s5Ci81s9xCYHUbnDrQg.JPEG.jiyeon5583%2Fse3_image_2749208036.jpg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>리버플로우</span>
                                        <em>다인석 / 로스팅 / 디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 16. single work -->
                    <div class="col-md-4 col-sm-6 dessert">
                        <a href="infoService?businessNumber=1000000016" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA5MjBfMjg3%2FMDAxNjAwNTkyNjA4ODYw.ZoDl2a6ZTPLfoMKTvbaguJBeT_ZfI0GFBeVgQha59lkg.zqKonrPUCgXpHJazt6rJ4pSCAWgQlZixFJxJtFk2Srkg.JPEG.sonaki3333%2F1600592608261.jpg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>다감적</span>
                                        <em>디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 17. single work -->
                    <div class="col-md-4 col-sm-6 groupseat beansell dessert">
                        <a href="infoService?businessNumber=1000000017" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxODA2MTJfNzAg%2FMDAxNTI4Nzg5MDAzNjQ5.dpEA5OI-XGJCEW-z5oq6XFhNcUhFEMn7STihWe6RmWMg.5ocQ4VvwK5V7g1pw4hELkKmdMy0dMTb-uAL23-wNfh8g.JPEG.phwoo01%2FIMG_1167.jpg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>훼이보릿커피</span>
                                        <em>다인석 / 원두판매 / 디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 18. single work -->
                    <div class="col-md-4 col-sm-6 dessert">
                        <a href="infoService?businessNumber=1000000018" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMDlfMTc1%2FMDAxNTgzNzI1NjY4Mjkw.hCVpKpNE-tT44uVoVz_ZOrpH3uvZFzPwaHFQsn80eHUg.HZO0N-imWC7q2viJZ9NrhVUWHTGvZKDGNOcK80XYe64g.JPEG.saladbuono%2FC7C6CD58-8F1A-4C0A-8E87-D8B594AF3A73.jpg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>해롱해롱</span>
                                        <em>디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 19. single work -->
                    <div class="col-md-4 col-sm-6 delivery groupseat dessert">
                        <a href="infoService?businessNumber=1000000019" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxODA0MjJfNTgg%2FMDAxNTI0Mzk1NzA3NzEz.SMi37J6vxu6h8LYX7zWEckM0NnVH3NH7P8HQRo18eqAg.lXt0Q1FZnNueIBS22XjncyIZ6iGDT0Qkhi1NEploJeYg.JPEG.minhuimini%2Foutput_3770159224.jpg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>베러데이즈</span>
                                        <em>배달 / 다인석 / 디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 20. single work -->
                    <div class="col-md-4 col-sm-6 dessert">
                        <a href="infoService?businessNumber=1000000020" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20190927_227%2F1569583235628wTRlX_JPEG%2Fj6Ld4Er9h4kMO6pFeRf0vvl5.jpghttps://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20190927_227%2F1569583235628wTRlX_JPEG%2Fj6Ld4Er9h4kMO6pFeRf0vvl5.jpg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>카페수</span>
                                        <em>디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 21. single work -->
                    <div class="col-md-4 col-sm-6 delivery groupseat beansell roasting dessert">
                        <a href="infoService?businessNumber=1000000021" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20091031_135%2Fgrace_rain_1256999897381q9FAp_jpg%2F%25C7%25CF%25B9%25D9%25BA%25F1_001_grace_rain.jpg&type=sc960_832" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>커피공장 하나비</span>
                                        <em>배달 / 다인석 / 원두판매 / 로스팅 / 디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 22. single work -->
                    <div class="col-md-4 col-sm-6 dessert">
                        <a href="infoService?businessNumber=1000000022" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxODA2MTNfODkg%2FMDAxNTI4ODU2ODk3NDk4.I3vSUKfCh19vzlU9wpV9ufQt4jALi2O432m0dKuy9aUg.bZTyBMGbS7ddhTvgedbD9foT4j4N9pRX7WluzSbvtLUg.JPEG.roniaronia%2FIMG_1399.JPG" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>용봉커피</span>
                                        <em>디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 23. single work -->
                    <div class="col-md-4 col-sm-6 delivery dessert">
                        <a href="infoService?businessNumber=1000000023" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTEyMTVfMTEy%2FMDAxNTc2MzkwOTY4MjQ0.JOkOAnlyk4eshrMk_GMIqjJJjJuCKcMOCdi3BTRGWl4g.6BYvAViXnmXnsYWPGUUj862YdjFjQCt9DAASR5L9Kl8g.JPEG.fluffy98%2FIMG_2020.jpg&type=a340" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>언노크</span>
                                        <em>배달 / 디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 24. single work -->
                    <div class="col-md-4 col-sm-6 delivery beansell dessert">
                        <a href="infoService?businessNumber=1000000024" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA5MDJfNTcg%2FMDAxNjMwNTYwNTcxMTEx.UE_9iChxlhCJrjyIBKEwCfHGr-cgunsH69_BEEk_qMkg.puvpSbatVUqW_QY64992EavGpt5zhwFcK42CmEcV4Xkg.JPEG.ccolzziaa%2FKakaoTalk_20210902_141052937_07.jpg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>수평선</span>
                                        <em>배달 / 원두판매 / 디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 25. single work -->
                    <div class="col-md-4 col-sm-6 dessert">
                        <a href="infoService?businessNumber=1000000025" class="portfolio_item">
                            <center><img src="" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>다이브인커피</span>
                                        <em>디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 20. single work -->
                    <div class="col-md-4 col-sm-6 dessert">
                        <a href="infoService?businessNumber=1000000020" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20190927_227%2F1569583235628wTRlX_JPEG%2Fj6Ld4Er9h4kMO6pFeRf0vvl5.jpghttps://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20190927_227%2F1569583235628wTRlX_JPEG%2Fj6Ld4Er9h4kMO6pFeRf0vvl5.jpg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>카페수</span>
                                        <em>디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 20. single work -->
                    <div class="col-md-4 col-sm-6 dessert">
                        <a href="infoService?businessNumber=1000000020" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20190927_227%2F1569583235628wTRlX_JPEG%2Fj6Ld4Er9h4kMO6pFeRf0vvl5.jpghttps://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20190927_227%2F1569583235628wTRlX_JPEG%2Fj6Ld4Er9h4kMO6pFeRf0vvl5.jpg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>카페수</span>
                                        <em>디저트</em>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end single work -->
                    
                    <!-- 20. single work -->
                    <div class="col-md-4 col-sm-6 dessert">
                        <a href="infoService?businessNumber=1000000020" class="portfolio_item">
                            <center><img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20190927_227%2F1569583235628wTRlX_JPEG%2Fj6Ld4Er9h4kMO6pFeRf0vvl5.jpghttps://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20190927_227%2F1569583235628wTRlX_JPEG%2Fj6Ld4Er9h4kMO6pFeRf0vvl5.jpg" alt="image" class="img-responsive"/></center>
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
                                        <span>카페수</span>
                                        <em>디저트</em>
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