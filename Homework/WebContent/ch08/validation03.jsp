<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkLogin() {
		var form = document.loginForm; 
		var passwd = form.passwd.value;
		var passwdCheck = form.passwdCheck.value;
		var regExpPasswd = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,}$/;
		
		if (!regExpPasswd.test(passwd)) {
			alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
			form.passwd.focus();
			return false;
		}  else if (passwd != passwdCheck) {
			alert("비밀번호를 다시 확인해주세요!");
			form.passwdCheck.focus();
			return false;
		}
		form.submit();
	}
</script>
<body>
	<form name="loginForm" method="post">
		<p> 아 이 디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="text" name="passwd">
		<p> 비밀번호 확인 : <input type="text" name="passwdCheck">
		<p> <input type="button" value="전송" onclick="checkLogin()">
	</form>
</body>
</html>