<%@page import="com.model.cafeVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cafe, Masil : 카페검색</title>
    <script src="jquery-3.6.0.min.js"></script>
</head>
<body>
    <button onlick = "data()">데이터 요청</button> 
    
    <script>
        /* 
    1. 회원가입
    2. 내가 필요한 API 찾기
    3. 키값 발급
    4. 내 서버주소를 등록
    5. API 샘플코드를 분석
    5.1 샘플X , 무슨내용인지 모를때는 공개되있는 문서(doc) 열어보기!
    6. API 나에게 맞게 수정

        */
	<% request.setCharacterEncoding("euc-kr"); 
		memberDAO dao = new memberDAO();
		//ArrayList<cafeVO> cafe_list = new ArrayList<>();
		ArrayList<cafeVO> wifi_list = (ArrayList) session.getAttribute("wifi_list");
		
	%>
        function data() {
            $.ajax( {
                // 서버에게 데이터를 비동기로 요청하는 부분
                // 요청할 내용
                // 기능이 작동하는 공간
                // URL
                // 넘겨줄 데이터(필요한 경우)
                url:"KwifiService",
                type="post",
                data: {"theme" : "wifi"}, 넘겨줄 데이터가 없을 때는 생략 가능
                success : function(res){
                	alert("성공")
                   console.log(res);                    
                    // 지도만드는 함수
                    //mapmake(data)
                    
                },
                error : function(){
                	alert("실패")
                }
            })
        }
        
    </script>
    	
    	
    <script>
    	$(document).ready(function() {
    		$('#bttwifi').click(function() {
    			var wifi = $('#wifi').val();
    			$.ajax( {
    				type:'POST',
    				data: {theme:1},
    				url: 'kwifiService',
    				success: function(res) {
    					
    				}
    			})
    		})
    	});
    </script>
	
	<form>
		wifi <input type="text" id="wifi">
		<input type="button" value="wifi" id="bttwifi"> 
		<br>
		<span id="result1"></span>
	</form>


</body>
</html>