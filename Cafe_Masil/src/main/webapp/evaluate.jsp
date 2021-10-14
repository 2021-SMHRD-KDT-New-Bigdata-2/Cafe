<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body>
    
    <button class="evaluation" onclick="data('�����ؿ�')">�����ؿ�</button><br>
    <button class="evaluation" onclick="data('���־��')">���־��</button><br>
    <button class="evaluation" onclick="data('�о��')">�о��</button><br>
    <button class="evaluation" onclick="data('���� �����̿���')">���� �����̿���</button><br>
    <button onclick="sendAjax()">����</button>

    <script>
        var a = [];
        function data(input) {
            a.push(input);
            console.log(a);
        }
        function sendAjax(){
             $.ajax({
                url:"evalService",
                data : {"evaluation": a},
                dataType : "json",
                type : "post",
                success : function(data){
                    for(var i = 0; i < data.length(); i++){
                        console.log(data.info);
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