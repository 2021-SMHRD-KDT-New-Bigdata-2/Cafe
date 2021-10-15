<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Box personal portfolio Template</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="ionicons/css/ionicons.min.css" rel="stylesheet">
    <link rel="icon" href="img/cogumaemoji.png" type="image/x-icon">

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
</head>

<body>
	<style>
		p{
			margin-top:20px;
		}
	</style>
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
                <a href="main.jsp"><img src="img/cafemasillogo2.jpg" width="100" alt="Logo"></a>
            </div>
            <!-- box-nav -->
            <!-- box-primary-nav-trigger -->
        </header>
        <!-- end box-header -->

    </div>

    <!-- top bar -->
    <div class="top-bar">
        <h1>ī�����</h1>
        <br>
        <p>�� �������� ī�� ����Ե��� ���� �������Դϴ�.<br>����Ե��� ����ڹ�ȣ�� �߱޹��� PW�� ���� �α������ּ���.</p>
    </div>
    <!-- end top bar -->

    <!-- main-container -->
    <div class="container main-container">
        <div class="col-md-6">
            <form action="BossLoginService" method="post">
                <div class="container row" style="float:none; margin:100 auto;">
                    <div class="col-md-8" style="float:none; margin:0 auto;">
                        <div class="input-contact">
                            <input name="businessNumber" type="text">
                            <span>����ڹ�ȣ�� �Է��ϼ���</span>
                        </div>
                    </div>
                    <div class="col-md-8" style="float:none; margin:0 auto;">
                        <div class="input-contact">
                            <input name="bossPw" type="text">
                            <span>��й�ȣ�� �Է��ϼ���</span>
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
                    <div class="col-md-2" style="float:none; margin:0 auto;">
                        <input type="submit" value="�α���" class="btn btn-box">
                    </div> 
                    
                </div>
            </form>
        </div>



    </div>
    <!-- end main-container -->

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