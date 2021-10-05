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
		<li><h5>회원가입</h5></li> <!-- joinInfo table -->
		<form action="JoinService" method="post">
			<li><input name="id" type="text" placeholder="ID를 입력하세요"></li>
			<li><input name="pw" type="password" placeholder="PW를 입력하세요"></li>
			<li><input name="nickname" type="text" placeholder="닉네임을 입력하세요"></li>
			<li><input name="tel" type="text" placeholder="휴대폰번호를 입력하세요"></li>
			<li><input name="bestMenu" type="text" placeholder="선호메뉴를 입력하세요"></li>
			<li>
				질문: <select name="qna">
					<option>가장 기억에 남는 카페는 어디입니까?</option>
					<option>태어난 곳은 어디입니까?</option>
					<option>가장 좋아하는 색깔은 무엇입니까?</option>
					<option>가장 좋아하는 동물은 무엇입니까?</option>
				</select>
			</li>
			<li>답: <input name="answer" type="text" placeholder="답을 입력하세요"></li>
			<li><input type="submit" value="완료" class="button fit"></li>
		</form>
	</ul>
	<br> <br> <br>

</body>
</html>