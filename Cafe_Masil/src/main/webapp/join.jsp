<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<ul class="">
		<li><h5>ȸ������</h5></li> <!-- joinInfo table -->
		<form action="JoinService" method="post">
			<li><input name="id" type="text" placeholder="ID�� �Է��ϼ���"></li>
			<li><input name="pw" type="password" placeholder="PW�� �Է��ϼ���"></li>
			<li><input name="nickname" type="text" placeholder="�г����� �Է��ϼ���"></li>
			<li><input name="tel" type="text" placeholder="�޴�����ȣ�� �Է��ϼ���"></li>
			<li><input name="bestMenu" type="text" placeholder="��ȣ�޴��� �Է��ϼ���"></li>
			<li>
				����: <select name="qna">
					<option>���� ��￡ ���� ī��� ����Դϱ�?</option>
					<option>�¾ ���� ����Դϱ�?</option>
					<option>���� �����ϴ� ������ �����Դϱ�?</option>
					<option>���� �����ϴ� ������ �����Դϱ�?</option>
				</select>
			</li>
			<li>��: <input name="answer" type="text" placeholder="���� �Է��ϼ���"></li>
			<li><input type="submit" value="�Ϸ�" class="button fit"></li>
		</form>
	</ul>
	<br> <br> <br>

</body>
</html>