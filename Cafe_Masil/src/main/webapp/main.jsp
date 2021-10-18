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
      <script src="https://oss.maxcdn.com/respond/1.4.2/r��espond.min.js"></script>
    <![endif]-->
    
    <style>
   .row {
overflow: hidden;
position: relative;
z-index:1;
}

   #overlay {
position: absolute;
top: 0;
left: 0;
width: 100%;
height: 100%;
background: #000;
opacity: 0.7;
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
.joinUs button{
	font-size: 40px;
	border-radius:5px; 
	width: 25%;
	hight: 50%;
	margin: 50px;
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
          <a class="navbar-brand" href=main.jsp><img src="img\CM5.png" width="50px" alt="CAFE,MASIL"></a> <!-- ī�� ���� ���-->
        </div>
        <div class="collapse navbar-collapse" id="bs-example-collapse-1">
          <!-- �׺���̼� �ٿ� ȸ���α���-->
        <% if(vo==null){%>
          <ul class="nav navbar-nav navbar-right">
          <li ><a href="bosslogin.jsp">ī�����<span class="sr-only"></span></a></li>
            <li ><a href="login.jsp">�α���<span class="sr-only"></span></a></li>
            <li ><a href="join.jsp">ȸ������</a></li>
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
              <a class="box-primary-nav-trigger" href="#0">
                <span class="box-menu-text">Menu</span><span class="box-menu-icon">
            </a>
          </ul>
          <%}else{%>
          <ul class="nav navbar-nav navbar-right">
          <li ><a href="bosslogin.jsp">ī�����<span class="sr-only"></span></a></li>
            <li ><a href="LogoutService">�α׾ƿ�</a></li>
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
              <a class="box-primary-nav-trigger" href="#0">
                <span class="box-menu-text">Menu</span><span class="box-menu-icon">
            </a>
          </ul>
          <%}%>
          <form action = "searchmapService" class="navbar-form navbar-right" role="search" method="get">
            <div class="form-group">
              <input name = "searchword" type="text" class="form-control" placeholder="ī�� �˻�">
            </div>
            <button type="submit" class="btn btn-default">
            <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
            </button>
          </form>
        </div>
      </div>
    </nav>
    <!-- end navbar -->
            
            
            <!-- box-primary-nav-trigger -->
        </header>
        <!-- end box header -->

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
                <li><a href="MyCafe.jsp">MyCafe</a></li>
                <li><a href="gogacJiwon.jsp">������</a></li>
                
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
                    src="https://www.youtube.com/embed/BaDe3MZKLF8?autoplay=1&mute=1&start=10&controls=0"
                     title="YouTube video player"
                    frameborder="0" scrolling="no"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen alt="#�����#"></iframe></p>
                <div class="text-wrap">
                    <div id="overlay">
                        <h1 style="text-align: center; color: #fff;"><span
                                style="font-family: Georgia, serif, ����, batang; font-size: 120px;"><em><br><br>CAF<span style="text-color: F9813A;">E</span>,<br>MASI<span style="text-color: F9813A;">L</span></em></span>
                        </h1>
                    </div>
                </div>
            </div>
        </div> 
    </div>
        <!-- end box-intro -->
    </div>
    
    <p style="pading-top: 200px; margin:200px; align:center;">
    <center><h1> �츮 ������ ������ ������ �߰��غ�����. </h1></center><br>
    <center><h4> �پ��� �ŷ��� ī����� ����� ��ٸ����־��. </h4></center></p>

    <!-- portfolio div -->
    <div class="portfolio-div"  style= "padding-top: 100px; padding-down: 150px;margin-left:100px;opacity:1.0;padding:100px">
        <div class="portfolio">
            <div class="no-padding portfolio_container">
                <!-- single work -->
                <div class="col-md-3 col-sm-6  fashion logo">
                    <a href="login.jsp" class="portfolio_item">
                        <img src="img/img1.jpg" alt="image" class="img-responsive" />
                        <div class="portfolio_item_hover">
                            <div class="portfolio-border clearfix">
                                <div class="item_info">
                                    <span>010ī��</span>
                                    <em>��� / ���μ� / �ݷ����� / ���� / ����Ʈ</em>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- end single work -->

                <!-- single work -->
                <div class="col-md-3 col-sm-6 ads graphics" style='padding=100px'>
                    <a href="login.jsp" class="portfolio_item">
                        <img src="img/img2.jpg" alt="image" class="img-responsive" />
                        <div class="portfolio_item_hover">
                            <div class="portfolio-border clearfix">
                                <div class="item_info">
                                    <span>��ũ������</span>
                                    <em>���μ� / ����Ʈ</em>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- end single work -->

                <!-- single work -->
                <div class="col-md-6 col-sm-12 photography">
                    <a href="login.jsp" class="portfolio_item">
                        <img src="img/img3.jpg" alt="image" class="img-responsive" />
                        <div class="portfolio_item_hover">
                            <div class="portfolio-border clearfix">
                                <div class="item_info">
                                    <span>��Ƽ���ι���</span>
                                    <em>�����Ǹ� / ����Ʈ</em>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- end single work -->

                <!-- single work -->
                <div class="col-md-3 col-sm-6 fashion ads">
                    <a href="login.jsp" class="portfolio_item">
                        <img src="img/img4.jpg" alt="image" class="img-responsive" />
                        <div class="portfolio_item_hover">
                            <div class="portfolio-border clearfix">
                                <div class="item_info">
                                    <span>ī�� ũ����</span>
                                    <em>��� / �ݷ����� / ����Ʈ</em>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- end single work -->

                <!-- single work -->
                <div class="col-md-3 col-sm-6 graphics ads">
                    <a href="login.jsp" class="portfolio_item">
                        <img src="img/img5.jpg" alt="image" class="img-responsive" />
                        <div class="portfolio_item_hover">
                            <div class="portfolio-border clearfix">
                                <div class="item_info">
                                    <span>���ũ</span>
                                    <em>��� / ����Ʈ</em>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- end single work -->

                <!-- single work -->
                <div class="col-md-6 col-sm-12 photography">
                    <a href="login.jsp" class="portfolio_item">
                        <img src="img/img6.jpg" alt="image" class="img-responsive" />
                        <div class="portfolio_item_hover">
                            <div class="portfolio-border clearfix">
                                <div class="item_info">
                                    <span>Ŀ�ǰ��� �ϳ���</span>
                                    <em>��� / ���μ� / �����Ǹ� / �ν��� / ����Ʈ</em>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- end single work -->

                <!-- single work -->
                <div class="col-md-3 col-sm-6 graphics ads">
                    <a href="login.jsp" class="portfolio_item">
                        <img src="img/img7.jpg" alt="image" class="img-responsive" />
                        <div class="portfolio_item_hover">
                            <div class="portfolio-border clearfix">
                                <div class="item_info">
                                    <span>���������ư</span>
                                    <em>��� / ����Ʈ</em>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- end single work -->

                <!-- single work -->
                <div class="col-md-3 col-sm-6 graphics ads">
                    <a href="login.jsp" class="portfolio_item">
                        <img src="img/img8.jpg" alt="image" class="img-responsive" />
                        <div class="portfolio_item_hover">
                            <div class="portfolio-border clearfix">
                                <div class="item_info">
                                    <span>���̺���Ŀ��</span>
                                    <em>����Ʈ</em>
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
 	<br><br><br><br><br><br>
    <center><h1> ���ϴ� Ű����� ī�並 ã�ƺ����� </h1></center><br>
    <center><h4> All# ��������# ��ü��# �����Ǹ�# �ְߵ���# 24�ð�# ����ž# ����������</h4></center></p>
    <br><br><br><br></div>
      <!-- Thumbnail start -->
    <div class="container" style="padding: 50px;">
      <div class="row">
        <div class="col-sm-6 col-md-4 ">
          <div class="thumbnail">
            <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxODExMjlfMTkx%2FMDAxNTQzNDE5NDA3ODYw.DB6_a5k8FMKd4FryvhZJFbAVI37agEiF7BmiPdN-T4wg.g91V2mOkPs_OU0DhD-A9-zowVnSw4ziePCp9yqDBk8og.JPEG.cn3040%2FNaverBlog_20181129_003647_01.jpg&type=sc960_832" alt="...">
            <div class="caption">
              <h3>����</h3>
              <p>#��ް����ؿ� #�����Ǹ� #�츮���� ��������</p>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4">
          <div class="thumbnail">
            <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA4MTNfMTIx%2FMDAxNjI4NzgyMTc2NjQ2.SmaBlqxmr14m3hNEc5s8l0B9S6xyo-1gBb9OBL4e2e4g.291WTRIUTs6J4Tjk04LK52bYDgCIqKGagtvwHd0qGb8g.JPEG.tpfls019%2FIMG_0230.jpg&type=sc960_832" alt="...">
            <div class="caption">
              <h3>��ũ������</h3>
              <p>#ī�䰡 �����ؿ� #�������� #�����Ⱑ ���ƿ�</p>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4">
          <div class="thumbnail">
            <img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAxMjRfMTM5%2FMDAxNjExNDYzODc1NzQw.WdnFlykA9ExR6-ZoFSFtfagWpGMZZ5VkNQStWLMuqBwg.-2-jhGi9IjfHM667jmF_HAeyA_7puJ1rKqwZSaYy_ksg.JPEG.lovepinkday%2F9FFBCB00-19BC-4A59-8A31-8412803A546A.jpeg" alt="...">
            <div class="caption">
              <h3>��Ƽ���ι���</h3>
              <p>#����Ʈ�� �پ��ؿ� #Ŀ�Ǹ��� ���ؿ� # �� �÷���</p>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4">
          <div class="thumbnail">
            <img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMDlfMTc1%2FMDAxNTgzNzI1NjY4Mjkw.hCVpKpNE-tT44uVoVz_ZOrpH3uvZFzPwaHFQsn80eHUg.HZO0N-imWC7q2viJZ9NrhVUWHTGvZKDGNOcK80XYe64g.JPEG.saladbuono%2FC7C6CD58-8F1A-4C0A-8E87-D8B594AF3A73.jpg" alt="...">
            <div class="caption">
              <h3>ī��25</h3>
              <p>#�������� ģ���ؿ� # �����ν��� �ؿ� # �о�� </p>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4">
          <div class="thumbnail">
            <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20091031_135%2Fgrace_rain_1256999897381q9FAp_jpg%2F%25C7%25CF%25B9%25D9%25BA%25F1_001_grace_rain.jpg&type=sc960_832" alt="...">
            <div class="caption">
              <h3>Ŀ�ǰ��� �ϳ���</h3>
              <p># ���԰� ģ���ؿ� # �ν����� �ߵƾ�� # ����Ʈ�� �پ��ؿ�</p>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 ">
          <div class="thumbnail">
            <img src="https://search.pstatic.net/common/?autoRotate=true&quality=95&type=w750&src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA5MTVfMTMz%2FMDAxNjMxNzA0ODUyMzk0.zXAtlCIDmt_dLwyHKPRhKfksjtBxxMh4bGb5O75Tidsg.HrpEYWUvSeiPDmbKt6HNMlOrBDcWNapKMWsAoFy9ZMYg.JPEG.jjoyuzin%2FIMG_5196.JPG" alt="...">
            <div class="caption">
              <h3>���̺���Ŀ��</h3>
              <p># �����Ⱑ ���ƿ� # Ŀ������ ǳ���ؿ� # �ٽ� �÷���</p>
            </div>
          </div>
        </div>
      </div>   
   </div>
   <br><br><br><br><br><br>
      <!-- end Thumbnail  -->
   
   <hr>
   <!--  insert img -->
   
   <center>
	   <div class="row">
	   	<div class="col-sm-12">
	   		<br>
	   		<div>
	   		<br><br><br><br><br><br>
	   		<center><h1> ���ְ��� ī�並 ����ϰ� <br> ������ �ѹ��� �����ؿ� </h1></center><br><br><br></div>
	   		</div>
	   		<div>
	   		<img src="img/mainMenu.jpg" alt="������,����" class="img-rounded">
	   		</div>
	   	</div>
	   </div>
   </center>
   <br><br><br><br><br><br>
   <!-- end img -->
   <hr>
   
   <div class="row">
      <div class="col-sm-12">
         <div class="joinUs">
         <br><br><br><br><br><br>
          <center><h1 style="margin:100px"> ī�� ������̶�� ������ �������<br> CAFEMASIL�� �ı��� �� �� �־��! </h1></center><br>
          <center><button class="btn btn-danger" onclick="location.href='fran.jsp' " type="submit">�����ϱ�</button></center></div>
      </div>
   </div>
   <br><br><br><br><br><br><br><br><br>
   <hr>
   
   <!-- end put the image -->
   
   <!-- submit to join service -->

   <!-- end submit to join service -->
   
    <!-- footer -->
    <footer>
        <div class="container-fluid">
          <i class="fa fa-love">����� ���׿� �Բ� �ϴ�, CafeMasil</i><br>
          <a href="https://www.youtube.com/watch?v=BS7tz2rAOSA">Made by, Co.����</a>
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