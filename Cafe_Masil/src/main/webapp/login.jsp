<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

</head>
<body>

	<ul class="links">
		<li><h5>�α���</h5></li>  <!-- joinInfo table -->
		<form action="LoginService" method="post"> 
			<li><input name="id" type="text" placeholder="ID�� �Է��ϼ���"></li>
			<li><input name="pw" type="password" placeholder="PW�� �Է��ϼ���"></li>
			<li>
				<input type="submit" value="�α���" class="button fit">
				<input type="submit" value="���̵� ã��" class="button fit">
				<input type="submit" value="��й�ȣ ã��" class="button fit">
			</li>	
		</form>
	</ul>
	

	
</body>
</html>