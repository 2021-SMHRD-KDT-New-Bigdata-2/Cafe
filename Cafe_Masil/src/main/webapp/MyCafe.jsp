<%@page import="com.model.stampVO"%>
<%@page import="com.model.messageVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.memberDAO"%>
<%@page import="com.model.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%
memberVO vo = (memberVO) session.getAttribute("member");
%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="icon" href="img/fav.png" type="image/x-icon">


<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="ionicons/css/ionicons.min.css" rel="stylesheet">

<!-- main css -->
<link href="css/style.css" rel="stylesheet">


<!-- modernizr -->
<script src="js/modernizr.js"></script>
<%
memberDAO dao = new memberDAO();
ArrayList<messageVO> message_list = new ArrayList<messageVO>();
ArrayList<stampVO> stamp_list = new ArrayList<stampVO>();
if (vo != null) {
   message_list = dao.showMessage(vo.getId());
   stamp_list = dao.myStamp(vo.getTel());
}
%>
</head>
<body>
   <style>
div.nickname {
   width: 100%;
   height: 100px;
   padding: 0 150px;
}

.my {
   width: 100%;
   padding: 0 200px;
   padding-bottom: 50px;
   overflow: auto;
}

.mystamp {
   width: 49.5%;
   height: 500px;
   float: left;
   border-radius: 10px;
}

.mycafe {
   width: 49.5%;
   float: right;
   border-radius: 10px;
}

legend {
   display: block;
   margin: 0 auto;
   width: 50%;
   text-align: center;
   font-size: 30px;
}

h3, h5 {
   text-align: center;
}

svg {
   width: 10%;
   height: 80px;
   padding-top: 20px;
   float: left;
}

.nick {
   text-align: left;
   float: right;
   width: 89%;
   padding: 35px 0;
   font-size: 20px;
}

.message {
   border: 1px solid black;
   border-radius: 10px;
   padding: 10px 10px;
   margin: 15px 15px;
   font-size: 20px;
}

.stamp {
   width: 300px;
   height: 200px;
   padding: 10px 10px 10px 10px;
   background-image: url('https://i.stack.imgur.com/9TQsy.png');
}

.stamp2 {
   height: 110px;
}
img {
   text-align: center;
   width: 40px;
}
.test1{
	text-align: left;
	padding-left: 70px;
}
.test2 {
padding-left: 70px;
	text-align: left;
	position: relative;
	top: -79px
	
}
</style>
   <!-- box-header -->
   <header class="box-header">
      <div class="box-logo">
         <a href="main.jsp"><img src="img/cafemasillogo2.jpg" width="80"
            alt="Logo"></a>
      </div>
      <!-- box-nav -->
      <a class="box-primary-nav-trigger" href="#0"> <span
         class="box-menu-text">Menu</span><span class="box-menu-icon"></span>
      </a>
   </header>
   <!-- end box-header -->

   <!-- nav -->
   <%=stamp_list.get(0).getAllStamp()%>
   <%
   if (vo == null) {
   %>
   <nav>
      <ul class="box-primary-nav">
         <li class="box-label">Choose me!</li>

         <li><a href="main.jsp">홈</a> <i
            class="ion-ios-circle-filled color"></i></li>
         <li><a href="login.jsp">로그인</a>
         <li><a href="join.jsp">회원가입</a></li>
         <li><a href="fran.jsp">가맹등록</a></li>
         <li><a href="keywordMenu.jsp">전체 카페</a></li>
         <li><a href="searchmap.jsp">카페검색</a></li>

         <li class="box-label">Follow me!</li>

         <li class="box-social"><a href="#0"><i
               class="ion-social-facebook"></i></a></li>
         <li class="box-social"><a href="#0"><i
               class="ion-social-instagram-outline"></i></a></li>
         <li class="box-social"><a href="#0"><i
               class="ion-social-twitter"></i></a></li>
         <li class="box-social"><a href="#0"><i
               class="ion-social-dribbble"></i></a></li>
      </ul>
   </nav>
   <%
   } else {
   %>
   <nav>
      <ul class="box-primary-nav">
         <li class="box-label">Choose me!</li>

         <li><a href="main.jsp">홈</a> <i
            class="ion-ios-circle-filled color"></i></li>
         <li><a href="LogoutService">로그아웃</a></li>
         <li><a href="fran.jsp">가맹등록</a></li>
         <li><a href="keywordMenu.jsp">전체 카페</a></li>
         <li><a href="searchmap.jsp">카페검색</a></li>
         <li><a href="gogacJiwon.jsp">고객지원</a></li>
         <li><a href="MyCafe.jsp">MyCafe</a></li>

         <li class="box-label">Follow me!</li>

         <li class="box-social"><a href="#0"><i
               class="ion-social-facebook"></i></a></li>
         <li class="box-social"><a href="#0"><i
               class="ion-social-instagram-outline"></i></a></li>
         <li class="box-social"><a href="#0"><i
               class="ion-social-twitter"></i></a></li>
         <li class="box-social"><a href="#0"><i
               class="ion-social-dribbble"></i></a></li>
      </ul>
   </nav>
   <%
   }
   %>
   <!-- end nav -->



   <!-- Top bar -->
   <div class="top-bar">
      <h1>MY CAFE</h1>
      <br>
      <p>Stamp / 구독메세지 확인</p>
   </div>
   <!-- end Top bar -->

   <!-- 닉네임 -->
   <div class="nickname">
      <i class="bi bi-person-circle"></i>
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
         fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
            <path fill-rule="evenodd"
            d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
        </svg>
      <div class="nick"><%=vo.getNickname()%></div>
   </div>

   <div class="my">
      <fieldset class="mystamp">
         <legend>My Stamp</legend>
         <h5>&nbsp;</h5>
         <%
         for (int i = 0; i < stamp_list.size(); i++) {
         %>
         <div class="stamp" style="float: none; margin: 15px auto;">
            <h3 class="stamp2" style="text-align: center">
               <%=stamp_list.get(i).getCafeName()%>
               <br><br>
            <div class="test1">
            	<%for (int k=0; k<10; k++){%>
            	<span class="glyphicon glyphicon-unchecked" aria-hidden="true"></span>
            	<%if (k == 4) {%>
               <br> <br>
               <%}%>
            	<%} %>
            </div>
            <div class="test2">
               <%for (int j = 0; j < stamp_list.get(i).getAllStamp(); j++) {%>
               <%if(j<=8){ %>
               	<span class="glyphicon glyphicon-star"  aria-hidden="true"></span>
               <%if (j == 4) {%>
               <br> <br>
               <%}%>
               <%} %>
               <%if (j == 9) {%>
               <span class="glyphicon glyphicon-gift" aria-hidden="true"></span>
               <%}%>
               <%}%>
               </div>
            </h3>
         </div>
         <%
         }
         %>
      </fieldset>
      <fieldset class="mycafe">
         <legend>My Cafe</legend>
         <h5>구독한 카페의 새로운 소식</h5>
         <%
         for (int i = 0; i < message_list.size(); i++) {
         %>
         <div class="message">
            <p>
               구독 카페명 :
               <%=message_list.get(i).getCafeName()%></p>
            <p>
               메세지 :
               <%=message_list.get(i).getMessage()%></p>
         </div>
         <%
         }
         %>
      </fieldset>
   </div>

   <!-- footer -->
   <footer>
      <div class="container-fluid">
         Shared by <i class="fa fa-love"></i><a
            href="https://bootstrapthemes.co">BootstrapThemes</a>
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