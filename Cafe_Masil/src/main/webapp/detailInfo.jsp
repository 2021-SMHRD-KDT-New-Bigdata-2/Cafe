<%@page import="com.model.evalVO"%>
<%@page import="com.model.memberDAO"%>
<%@page import="com.model.memberVO"%>
<%@page import="com.model.cafeVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>   
<!DOCTYPE html>
<html lang="en">

<head>	
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Cafe, Masil : 카페 상세정보</title>
    <link rel="icon" href="img/cogumaemoji.png" type="image/x-icon">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="ionicons/css/ionicons.min.css" rel="stylesheet">

    <!-- main css -->
    <link href="css/style.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>



    <!-- modernizr -->
    <script src="js/modernizr.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    

    <style>
      #carousel-cafe-generic{
      height: 600px;
  	  width: 600px;
}
      #carousel-cafe-generic{
      top: 50%;
  	  left: 50%;
   	  transform: translate(-50%,-10%);
      overflow: hidden;
}
      .item{
      height: 600px;
      object-fit: cover;
}
      .item>img{
      max-height: 100%;
      width: auto;
      display: block;
      margin: 0px auto;
      top: 50%;
   	 
}
/* image modal */
      .modal {
	  display: none;
	  z-index: 500;
	  width: 100%;
	  height: 100%;
	  position: fixed;
	  top: 0;
	  left: 0;
	  background-color: rgba(0, 0, 0, 0.8);
}
		.modalBox {
		position: relative;
		text-align: center;
		top : 50%;
		left : 50%;
		position : sticky;
}
div img:hover{
   		 cursor: -webkit-zoom-in;
}
	/* image modal end */
    </style>
    
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<% memberVO vo = (memberVO)session.getAttribute("member"); %>
	<% ArrayList<cafeVO> info_list =  (ArrayList<cafeVO>)session.getAttribute("info_list"); %>
	<% String nickname = vo.getNickname(); %>
	<% String businessNumber = info_list.get(0).getBusinessNumber(); %>
	<% String cafeName = info_list.get(0).getCafeName(); %>
	<% memberDAO dao = new memberDAO();
ArrayList<evalVO> eval_list = dao.evaluation_select(info_list.get(0).getCafeName());
boolean subsCheck = dao.subscribeCheck(vo.getId(), businessNumber);
boolean stampCheck = dao.stampCheck(vo.getTel(), businessNumber);

%>

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
                <a href="main.jsp"><img src="" width="80" alt="Logo"></a>
            </div>
            <!-- box-nav -->
            <a class="box-primary-nav-trigger" href="#0">
                <span class="box-menu-text">Menu</span><span class="box-menu-icon"></span>
            </a>
            <!-- box-primary-nav-trigger -->
        </header>
        <!-- end box-header -->
        
        <!-- box header -->
        <!-- navbar-->
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
              <input name = "searchword" type="text" class="form-control" placeholder="검색">
            </div>
            <button type="submit" class="btn btn-default">GO!</button>
          </form>
        </div>
      </div>
    </nav>
        
        
        
        
        
        
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
    
    <!-- top-bar -->
    <div class="top-bar">
        <h1>상세보기</h1>
    </div>
    <!-- end top-bar -->
    
    <!-- start modal -->
<div class="modal">
    <div class="modalBox">
    </div>
</div> 
    
    <!-- main-container -->
    <div class="container main-container">
    
    
    <div class="center-block">
    <div id="carousel-cafe-generic" class="carousel slide" data-ride="carousel" >
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-cafe-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-cafe-generic" data-slide-to="1"></li>
    <li data-target="#carousel-cafe-generic" data-slide-to="2"></li>
    <li data-target="#carousel-cafe-generic" data-slide-to="3"></li>
    <li data-target="#carousel-cafe-generic" data-slide-to="4"></li>
    <li data-target="#carousel-cafe-generic" data-slide-to="5"></li>
    <li data-target="#carousel-cafe-generic" data-slide-to="6"></li>
    <li data-target="#carousel-cafe-generic" data-slide-to="7"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src=<%=info_list.get(0).getBoard() %> alt="..." class="img-thumbnail" data-pause=""  >
      <div class="carousel-caption"> 메뉴판
      </div>
    </div>
    <div class="item">
      <img src=<%=info_list.get(0).getImage1() %> alt="..."class="img-thumbnail">
    	<div class="carousel-caption"> 사진 1
      </div>
    </div>
     <div class="item">
      <img src=<%=info_list.get(0).getImage2() %> alt="..."class="img-thumbnail">
    	<div class="carousel-caption"> 사진 2
      </div>
    </div>
     <div class="item">
      <img src=<%=info_list.get(0).getImage3() %> alt="..."class="img-thumbnail">
    	<div class="carousel-caption"> 사진 3
      </div>
    </div>
     <div class="item">
      <img src=<%=info_list.get(0).getImage4() %> alt="..."class="img-thumbnail">
    	<div class="carousel-caption"> 사진 4
      </div>
    </div>
    
     <div class="item">
      <img src=<%=info_list.get(0).getImage5() %> alt="..."class="img-thumbnail">
    	<div class="carousel-caption"> 사진 5
      </div>
    </div>
     <div class="item">
      <img src=<%=info_list.get(0).getImage6() %> alt="..."class="img-thumbnail">
    	<div class="carousel-caption"> 사진 6
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-cafe-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-cafe-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>    


        <div class="col-md-12">
            <h3 class="text-uppercase"><%=info_list.get(0).getCafeName()%></h3>
            <h5><%=info_list.get(0).getCafeAddress()%></h5>
            <div class="h-30"></div>
        </div>

        <div class="col-md-9">
            <p> <%=info_list.get(0).getEtc() %> </p>
        </div>

        <div class="col-md-3">
            <ul class="cat-ul">
                <li><i class="ion-ios-circle-filled"></i> 전화번호 : <%=info_list.get(0).getCafeTel()%></li>
                <li><i class="ion-ios-circle-filled"></i> 아메지수 : <%=info_list.get(0).getAmeIndex()%></li>
                <li><i class="ion-ios-circle-filled"></i> 운영시간 : <%=info_list.get(0).getCafeHours()%></li>
                <li><i class="ion-ios-circle-filled"></i> 추천메뉴 : <%=info_list.get(0).getBestmenu()%></li>
                <li><i class="ion-ios-circle-filled"></i> 테이블개수 : <%=info_list.get(0).getTableNum()%></li>
            </ul>
            <div class="h-10"></div>
            <h4>Share</h4>
            <ul class="social-ul">
                <li class="box-social"><a href="#0"><i class="ion-social-facebook"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-instagram-outline"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-twitter"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-dribbble"></i></a></li>
            </ul>
        </div>
    </div>
  
    <!-- end main-container -->
<% if (vo!=null){ %>
<% if (subsCheck==false && stampCheck==false){%>
<div class="container main-container">
     <div class="col-md-6">
          <form action="#" method="post">
              <div class="container row" style="float:none; margin:0 auto;">
                   <div class="col-md-6">
                    <a href = "subscribeService?businessNumber=<%=info_list.get(0).getBusinessNumber() %>&id=<%=vo.getId() %>&cafeName=<%=info_list.get(0).getCafeName() %>" class="btn btn-box">구독</a>
                    </div>
                    <div class="col-md-6">
                    	<a href = "stampService?businessNumber=<%=info_list.get(0).getBusinessNumber() %>&tel=<%=vo.getTel() %>&cafeName=<%=info_list.get(0).getCafeName() %>" class="btn btn-box">스탬프 발급</a>
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
                    <div class="col-md-4">
                    </div> 
                    <div class="col-md-4">
                    </div> 
                    <div class="col-md-4">
                    </div> 
                </div>
            </form>
        </div>
</div>
<%}else if(subsCheck==true && stampCheck==false){%>
<div class="container main-container">
        <div class="col-md-6">
            <form action="#" method="post">
                <div class="container row" style="float:none; margin:0 auto;">
                    <div class="col-md-6">
                       <a href = "removeSubscribe?businessNumber=<%=info_list.get(0).getBusinessNumber() %>&id=<%=vo.getId() %>" class="btn btn-box">구독해제</a>
                    </div>
                    <div class="col-md-6">
                    	<a href = "stampService?businessNumber=<%=info_list.get(0).getBusinessNumber() %>&tel=<%=vo.getTel() %>&cafeName=<%=info_list.get(0).getCafeName() %>" class="btn btn-box">스탬프 발급</a>
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
                    <div class="col-md-4">
                    </div> 
                    <div class="col-md-4">
                    </div> 
                    <div class="col-md-4">
                    </div> 
                </div>
            </form>
        </div>
</div>
<%}else if(subsCheck==false && stampCheck==true){%>
<div class="container main-container">
        <div class="col-md-6">
            <form action="#" method="post">
                <div class="container row" style="float:none; margin:0 auto;">
                    <div class="col-md-6">
                       <a href = "subscribeService?businessNumber=<%=info_list.get(0).getBusinessNumber() %>&id=<%=vo.getId() %>&cafeName=<%=info_list.get(0).getCafeName() %>" class="btn btn-box">구독</a>
                    </div>
                    <div class="col-md-6">
                    	<a href = "" class="btn btn-box">스탬프가 이미 발급되었습니다.</a>
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
                    <div class="col-md-4">
                    </div> 
                    <div class="col-md-4">
                    </div> 
                    <div class="col-md-4">
                    </div> 
                </div>
            </form>
        </div>
</div>
<%}else{%>
<div class="container main-container">
        <div class="col-md-6">
            <form action="#" method="post">
                <div class="container row" style="float:none; margin:0 auto;">
                    <div class="col-md-6">
                       <a href = "removeSubscribe?businessNumber=<%=info_list.get(0).getBusinessNumber() %>&id=<%=vo.getId() %>" class="btn btn-box">구독해제</a>
                    </div>
                    <div class="col-md-6">
                    	<a href = "" class="btn btn-box">스탬프가 이미 발급되었습니다.</a>
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
                    <div class="col-md-4">
                    </div> 
                    <div class="col-md-4">
                    </div> 
                    <div class="col-md-4">
                    </div> 
                </div>
            </form>
        </div>
</div>
<%}%>
<%}else{ %>
<div class="container main-container">
        <div class="col-md-6">
            <form action="#" method="post">
                <div class="container row" style="float:none; margin:0 auto;">
                    <div class="col-md-6">
                       <a href = "loginService" class="btn btn-box">구독</a>
                    </div>
                    <div class="col-md-6">
                    	<a href = "loginService" class="btn btn-box">스탬프 발급</a>
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
                    <div class="col-md-4">
                    </div> 
                    <div class="col-md-4">
                    </div> 
                    <div class="col-md-4">
                    </div> 
                </div>
            </form>
        </div>
</div>
<%}%>
	
	<div id="eval">
		<button class="evaluation" onclick="data('맛이 진해요')">맛이 진해요</button>
    	<button class="evaluation" onclick="data('맛이 연해요')">맛이 연해요</button>
    	<button class="evaluation" onclick="data('커피향이 풍부해요')">커피향이 풍부해요</button>
    	<button class="evaluation" onclick="data('로스팅이 잘됐어요')">로스팅이 잘됐어요</button>
    	<button class="evaluation" onclick="data('가성비에요')">가성비에요</button><br>
    	<button class="evaluation" onclick="data('가게가 청결해요')">가게가 청결해요</button>
    	<button class="evaluation" onclick="data('다시올래요')">다시올래요</button>
    	<button class="evaluation" onclick="data('디저트가 다양해요')">디저트가 다양해요</button>
    	<button class="evaluation" onclick="data('사진 맛집이에요')">사진 맛집이에요</button>
    	<button class="evaluation" onclick="data('직원분이 친절해요')">직원분이 친절해요</button><br>
    	<button class="evaluation" onclick="data('넓어요')">넓어요</button>
    	<button class="evaluation" onclick="data('조용해서 좋아요')">조용해서 좋아요</button>
    	<button class="evaluation" onclick="data('분위기가 좋아요')">분위기가 좋아요</button>
    	<button class="evaluation" onclick="data('배달이 빨라요')">배달이 빨라요</button>
    	<button class="evaluation" onclick="data('일회용기 안써요')">일회용기 안써요</button><br>
    	<button onclick="sendAjax()">전송</button>
    </div>
    
    
    <script>

    $(function(){
//      이미지 클릭시 해당 이미지 모달
    $(".item").click(function(){
         let img = new Image();
         img.src = $(this).attr("src")
         $('.modalBox').html(img);
         $(".modal").show();
     });
     
     
     
//   모달 클릭할때 이미지 닫음
     $(".modal").click(function (e) {
     $(".modal").toggle();
   });
 });
</script>
	
    
    

<%if(eval_list!=null){ %>
<div>
<table border="1" id="tableForData" >
<th>닉네임</th>
<th>카페명</th>
<th>평가</th>
<%for(int i = 0;i<eval_list.size();i++){ %>
<tr class="reviewTable">
	<td id="td1"><%=eval_list.get(i).getNickname() %></td>
	<td id="td2"><%=eval_list.get(i).getCafeName() %></td>
	<td id="td3"><%=eval_list.get(i).getEvaluation()%></td>
</tr>
<%} %>

<script>
        var a = [];
        function data(input) {
            a.push(input);
            console.log(a);
        }
        
        	function sendAjax(){
        	
             $.ajax({
                url:"evalService",
                data : {"evaluation": a,"nickname":'<%=nickname%>',"cafeName":'<%=cafeName%>',"businessNumber":'<%=businessNumber%>'},
                traditional : true,
                dataType : "json",
                type : "post",
                success : function(data){
                	console.log(data);
                    for(var i = data.length-1; i < data.length; i++){
                        console.log(data[i].nickname);
                        console.log(data[i].cafeName);
                        console.log(data[i].evaluation);
                        $("#tableForData").append("<tr class='reviewTable'><td>"+data[i].nickname + "</td><td>"+data[i].cafeName + "</td><td>"+data[i].evaluation + "</td></tr>" )
                        
                        
                        //tr들고와서 어펜드 차일드( "<td>"+data[i].nickname + "</td>")
                        //tr들고와서 어펜드 차일드( "<td>"+data[i].cafeName + "</td>")
                        //tr들고와서 어펜드 차일드( "<td>"+data[i].evaluation + "</td>")
                        
                    }
                   
                    
                    //div
                    //document.gete~("div").append("넣을데이터");
                    //innerhtml, append, createlment 
                },
                error : function(){
                    alert("통신 실패");
                }

            });
            a = [];
        }

    </script>

</table>
</div>
<%}else{
}%>


    
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