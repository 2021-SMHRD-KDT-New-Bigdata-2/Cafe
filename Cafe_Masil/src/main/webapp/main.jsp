<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

</head>
<body>

	<ul class="">
		<li><h5>ȸ������</h5></li> <!-- joinInfo table -->
		<form action="JoinService" method="post">
			<li><input name="id" type="text" placeholder="ID�� �Է��ϼ���"></li>
			<li><input name="pw" type="password" placeholder="PW�� �Է��ϼ���"></li>
			<li><input name="nickname" type="text" placeholder="�г����� �Է��ϼ���"></li>
			<li><input name="tel" type="text" placeholder="�޴�����ȣ�� �Է��ϼ���"></li>
			<li><input name="bestmenu" type="text" placeholder="��ȣ�޴��� �Է��ϼ���"></li>
			<li>
				����: <select name="qna">
					<option>���� ��￡ ���� ī��� ����Դϱ�?</option>
					<option></option>
				</select>
			</li>
			<li>��: <input name="answer" type="text" placeholder="���� �Է��ϼ���"></li>
			<li><input type="submit" value="�Ϸ�" class="button fit"></li>
		</form>
	</ul>
	<br> <br> <br>

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
	
	
	
	<ul class="links">
		<li><h5>���͵��</h5></li> <!-- cafeRequest table -->
		<form action="FranService" method="post">
			<li><input name="bossname" type="text" placeholder="�̸��� �Է��ϼ���"></li>
			<li><input name="businessNumber" type="password" placeholder="����ڹ�ȣ�� �Է��ϼ���"></li>
			<li><input name="bosstel" type="text" placeholder="�޴�����ȣ�� �Է��ϼ���"></li>
			<li><input name="cafeName" type="text" placeholder="ī����� �Է��ϼ���"></li>
			<li><input name="cafeaddress" type="text" placeholder="�ּҸ� �Է��ϼ���"></li>
			<li><input name="cafeTel" type="text" placeholder="���Թ�ȣ�� �Է��ϼ���"></li>
			<li><input type="submit" value="���� ��û" class="button fit"></li>
		</form>
	</ul>
	
	
	
</body>
</html>