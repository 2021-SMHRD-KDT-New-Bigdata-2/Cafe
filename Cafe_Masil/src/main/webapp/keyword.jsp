<%@page import="com.model.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="jquery-3.6.0.min.js"></script>
</head>
<body>
    <button onlick = "data()">������ ��û</button> 
    
    <script>
        /* 
    1. ȸ������
    2. ���� �ʿ��� API ã��
    3. Ű�� �߱�
    4. �� �����ּҸ� ���
    5. API �����ڵ带 �м�
    5.1 ����X , ������������ �𸦶��� �������ִ� ����(doc) �����!
    6. API ������ �°� ����

        */
	<% request.setCharacterEncoding("euc-kr"); 
		memberDAO dao = new memberDAO();
		//ArrayList<cafeVO> cafe_list = new ArrayList<>();
		ArrayList<cafeVO> wifi_list = (ArrayList) session.getAttribute("wifi_list");
		
	%>
        function data() {
            $.ajax( {
                // �������� �����͸� �񵿱�� ��û�ϴ� �κ�
                // ��û�� ����
                // ����� �۵��ϴ� ����
                // URL
                // �Ѱ��� ������(�ʿ��� ���)
                url:"KstudyService",
                type="post",
                data: {"theme" : "wifi"}, �Ѱ��� �����Ͱ� ���� ���� ���� ����
                success : function(res){
                   
                    
                    
                    // ��������� �Լ�
                    mapmake(data)
                    
                }
            })
        }
    </script>



</body>
</html>