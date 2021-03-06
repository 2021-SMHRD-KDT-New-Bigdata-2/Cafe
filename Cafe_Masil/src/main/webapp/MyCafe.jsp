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
<%memberVO vo = (memberVO) session.getAttribute("member");%>
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
   padding: 20px 150px;
}

.container.main-container {
   width: 100%;
   height:100%;
   padding: 0 200px;
   padding-bottom: 50px;
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

svg {
   width: 10%;
   height: 80px;
   padding-top: 20px;
   float: left;
}

.nick {
   text-align: left;
   float: right;
   width: 50%;
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
   text-align:center;
}

.test1{
   text-align: left;
   padding-left: 70px;
}
.test2 {
   padding-left: 70px;
   text-align: left;
   position: relative;
   top: -80px
   
}
h5{
   text-align:center;
   font-size:16px;
}

.glyphicon-gift{
   color:rgb(249,129,58);
   text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
}
.glyphicon-user{
   color: rgb(249,129,58);
   font-size: 30px;
   left: -50px;
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
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href=main.jsp><img src="img\CM5.png" width="50px" alt="CafeMasil"></a> <!-- 카페 왼쪽 상단-->
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

   <!-- nav -->
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
         <li><a href="MyCafe.jsp">MyCafe</a></li>
         <li><a href="gogacJiwon.jsp">고객지원</a></li>

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
   <div class="nickname" >
        <div class="nick"><span class="glyphicon glyphicon-user" aria-hidden="true">&nbsp;&nbsp;<%=vo.getNickname()%></span></div>
   </div>
    <br><br>

   <div class="container main-container">
      <fieldset class="mystamp">
         <legend>My Stamp</legend>
         <h5>&nbsp;</h5>
         <%
         for (int i = 0; i < stamp_list.size(); i++) {
         %>
         <div class="stamp" style="float: none; margin: 15px auto;">
            <h3 class="stamp2">
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
                  <span class="glyphicon glyphicon-check"  aria-hidden="true"></span>
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
<%if(message_list.get(i).getMessage()!=null){%>
<%=message_list.get(i).getMessage()%></p>
<%}else{ %>
메세지가 없습니다!
<%} %>
         </div>
         <%
         }
         %>
      </fieldset>
      
   </div>

   <!-- footer -->
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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