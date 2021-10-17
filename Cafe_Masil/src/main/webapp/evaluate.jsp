<%@page import="java.util.ArrayList"%>
<%@page import="com.model.cafeVO"%>
<%@page import="com.model.memberVO"%>
<%@page import="com.model.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cafe Masil : 평가하기</title>

    
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<% memberVO vo1 = (memberVO)session.getAttribute("member"); %>
<% ArrayList<cafeVO> vo2 = (ArrayList<cafeVO>)session.getAttribute("cafe_list"); %>


</head>
<body>
    
    <button class="evaluation" onclick="data('깨끗해요')">깨끗해요</button><br>
    <button class="evaluation" onclick="data('맛있어요')">맛있어요</button><br>
    <button class="evaluation" onclick="data('넓어요')">넓어요</button><br>
    <button class="evaluation" onclick="data('사진 맛집이에요')">사진 맛집이에요</button><br>
    <button onclick="sendAjax()">전송</button>
	
	<% String id = vo1.getId(); %>
	<% String businessNumber = vo2.get(0).getBusinessNumber(); %>
	<% String cafeName = vo2.get(0).getCafeName(); %>
	
	
    <script>
        var a = [];
        
        function data(input) {
            a.push(input);
            console.log(a);
        }
        
        function sendAjax(){
             $.ajax({
                url:"evalService",
                data : {"evaluation": a,"id":<%=id%>,"cafeName":<%=cafeName%>,"businessNumber":<%=businessNumber%>},
                dataType : "json",
                type : "post",
                success : function(data){
                    for(var i = 0; i < data.length(); i++){
                        console.log(data.info);
                        let div = document.createElement("div");
                        div.className = "evalution";
                        let text = document.createTextNode("evaluation");
                        div.appendChild(text);
                        document.body.appendChild(div)
                    }
                },
                error : function(e){
                    alert(e);
                }

            });
            a = [];
        }
    </script>

</body>
</html>