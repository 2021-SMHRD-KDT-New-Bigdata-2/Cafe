<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

</head>
<body>

	<ul class="links">
		<li><h5>로그인</h5></li>  <!-- joinInfo table -->
		<form action="LoginService" method="post"> 
			<li><input name="id" type="text" placeholder="ID를 입력하세요"></li>
			<li><input name="pw" type="password" placeholder="PW를 입력하세요"></li>
			<li>
				<input type="submit" value="로그인" class="button fit">
				<input type="submit" value="아이디 찾기" class="button fit">
				<input type="submit" value="비밀번호 찾기" class="button fit">
			</li>	
		</form>
	</ul>
	

	
</body>
</html>