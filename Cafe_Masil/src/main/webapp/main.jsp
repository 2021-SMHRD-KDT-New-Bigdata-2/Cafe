<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

</head>
<body>

	<ul class="">
		<li><h5>회원가입</h5></li> <!-- joinInfo table -->
		<form action="JoinService" method="post">
			<li><input name="id" type="text" placeholder="ID를 입력하세요"></li>
			<li><input name="pw" type="password" placeholder="PW를 입력하세요"></li>
			<li><input name="nickname" type="text" placeholder="닉네임을 입력하세요"></li>
			<li><input name="tel" type="text" placeholder="휴대폰번호를 입력하세요"></li>
			<li><input name="bestmenu" type="text" placeholder="선호메뉴를 입력하세요"></li>
			<li>
				질문: <select name="qna">
					<option>가장 기억에 남는 카페는 어디입니까?</option>
					<option></option>
				</select>
			</li>
			<li>답: <input name="answer" type="text" placeholder="답을 입력하세요"></li>
			<li><input type="submit" value="완료" class="button fit"></li>
		</form>
	</ul>
	<br> <br> <br>

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
	
	
	
	<ul class="links">
		<li><h5>가맹등록</h5></li> <!-- cafeRequest table -->
		<form action="FranService" method="post">
			<li><input name="bossname" type="text" placeholder="이름를 입력하세요"></li>
			<li><input name="businessNumber" type="password" placeholder="사업자번호를 입력하세요"></li>
			<li><input name="bosstel" type="text" placeholder="휴대폰번호를 입력하세요"></li>
			<li><input name="cafeName" type="text" placeholder="카페명을 입력하세요"></li>
			<li><input name="cafeaddress" type="text" placeholder="주소를 입력하세요"></li>
			<li><input name="cafeTel" type="text" placeholder="가게번호를 입력하세요"></li>
			<li><input type="submit" value="가맹 요청" class="button fit"></li>
		</form>
	</ul>
	
	
	
</body>
</html>