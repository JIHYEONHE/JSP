<%@ page  contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<h3>회원가입</h3>
	<form action="form02_process.jsp" name="member" method="post">
		<p>아이디 :
			<input type="text" name="id" />
			<input type="button" value="아이디 중복검사" />
		</p>
		<p>비밀번호 :<input type="password" name="passwd"></p>
		<p>이름 : <input type="text" name="name" /></p>
		<p>연락처 :
			<select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select> 
			- <input type="text" maxlength="4" size="4" name="phone2" />
			- <input type="text" maxlength="4" size="4" name="phone3" />
		</p>
		<!-- radio에서 checked한것이 초기값으로 선택됨 -->
		<p>성별 :<input type="radio" name="gender" value="남성" checked /> 남성
				<input type="radio" name="gender" value="여성"  /> 여성
		</p>
		<!--체크박스를 선택한 경우 on이, 선택하지 않은 경우 null이 전송 됨 -->
		<p>취미 : 독서<input type="checkbox" name="hobby" value ="독서" checked />
				운동<input type="checkbox" name="hobby" value ="운동" />
				영화<input type="checkbox" name="hobby" value ="영화" />
		</p>
		<p>
			<!-- wrap ="off" : 줄바꿈 안함. 
				 wrap ="soft" : 자동 줄바꿈 (기본)
				 wrap ="hard" : 서버 전송 시 캐리지 리턴 문자를 전달함-->
			<textarea name="comment" rows="3" cols="30"
				placeholder="가입인사를 입력해주세요" wrap="soft"></textarea>
		</p>
		<p>
			<!--입력된 데이터를 서버로 전송 -->
			<input type="submit" value="가입하기 " />
			<!-- reset은 입력된 데이터를 지움 -->
			<input type="reset" value="다시쓰기 " />
		</p>
	</form>
</body>
</html>