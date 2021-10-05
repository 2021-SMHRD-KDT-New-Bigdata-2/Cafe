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
		<li><h5>가맹등록</h5></li> <!-- cafeRequest table -->
		<form action="FranService" method="post">
			<li><input name="bossName" type="text" placeholder="이름를 입력하세요"></li>
			<li><input name="businessNumber" type="password" placeholder="사업자번호를 입력하세요"></li>
			<li><input name="bossTel" type="text" placeholder="휴대폰번호를 입력하세요"></li>
			<li><input name="cafeName" type="text" placeholder="카페명을 입력하세요"></li>
			<li><input name="cafeAddress" type="text" placeholder="주소를 입력하세요"></li>
			<li><input name="cafeTel" type="text" placeholder="가게번호를 입력하세요"></li>
			<li><input type="submit" value="가맹 요청" class="button fit"></li>
		</form>
	</ul>
	
	
</body>
</html>