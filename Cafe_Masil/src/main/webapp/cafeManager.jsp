<%@page import="com.model.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<% memberVO bossLogin = (memberVO)session.getAttribute("bossLogin"); %>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
        <!-- box-header -->
        <header class="box-header">
            <div class="box-logo">
                <a href="main.jsp"><img src="img/cafemasillogo2.jpg" width="80" alt="Logo"></a>
            </div>
                        <!-- box-nav -->
            
        </header>
        <!-- end box-header -->

        <!-- nav -->

        <!-- end nav -->


     <!-- Top bar -->
     <div class="top-bar">
        <h1>ī�����</h1>
        <p><a href="#">��������</a> / ����������</p>
    </div>
    <!-- end Top bar -->
    <div class="container main-container">
        <div class="col-md-6">
       
            <form action="messageService?businessNumber=<%=bossLogin.getBusinessNumber()%>" method="post">
                <div class="container row" style="float:none; margin:0 auto;">
                    <div class="col-md-12">
                            <p>To ������</p>
                    </div>
                    <div class="col-md-12">
                        <div class="input-contact">
                            <input name="message" type="text">
                            <span>�����ڿ��� ���� �޼����� �Է����ּ���</span>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-2">
                        <input type="submit" value="����" class="btn btn-box">
                        </div>
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
            <form action="stampAddService?businessNumber=<%=bossLogin.getBusinessNumber()%>" method="post">
                <div class="container row" style="float:none; margin:0 auto;">
                    <div class="col-md-12">
                            <p>������</p>
                    </div>
                    <div class="col-md-12">
                        <div class="input-contact">
                            <input name="tel" type="text">
                            <span>�̿����� ��ȭ��ȣ�� �Է����ּ���</span>
                        </div>
                    </div>
                    <div class="col-md-12" style="float:none; margin:0 auto;">
                        <input type="submit" value="������ ���" class="btn btn-box">
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
                            <p>������ �ʱ�ȭ</p>
                    </div>
                    <div class="col-md-12">
                        <div class="input-contact">
                            <input name="tel" type="text">
                            <span>�̿����� ��ȭ��ȣ�� �Է����ּ���</span>
                        </div>
                    </div>
                    <div class="col-md-12" style="float:none; margin:0 auto;">
                        <input type="submit" value="�ʱ�ȭ" class="btn btn-box">
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