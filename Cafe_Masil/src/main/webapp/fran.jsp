<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	
	<ul class="links">
		<li><h5>���͵��</h5></li> <!-- cafeRequest table -->
		<form action="FranService" method="post">
			<li><input name="bossName" type="text" placeholder="�̸��� �Է��ϼ���"></li>
			<li><input name="businessNumber" type="password" placeholder="����ڹ�ȣ�� �Է��ϼ���"></li>
			<li><input name="bossTel" type="text" placeholder="�޴�����ȣ�� �Է��ϼ���"></li>
			<li><input name="cafeName" type="text" placeholder="ī����� �Է��ϼ���"></li>
			<li><input name="cafeAddress" type="text" placeholder="�ּҸ� �Է��ϼ���"></li>
			<li><input name="cafeTel" type="text" placeholder="���Թ�ȣ�� �Է��ϼ���"></li>
			<li><input type="submit" value="���� ��û" class="button fit"></li>
		</form>
	</ul>
	
	
</body>
</html>