<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
<script type="text/javascript">
   function CheckForm() {
      let id = document.loginForm.id.value;
      let passwd = document.loginForm.passwd.value;
      let passwd2 = document.loginForm.passwd2.value;
      
   	  // \d : 숫자를 찾음
      // \D : 숫자가 아닌 값을 찾음
      // \w : 알파벳 + 숫자 + _ 를 찾음
      // \W : 알파벳 + 숫자 + _ 를 제외한 모든 문자를 찾음
      if(/(\w)\1\1/.test(passwd)){      
         alert('같은 문자를 3번 이상 사용하실 수 없습니다.\n패스워드 설정안내를 확인해 주세요.');      
         return false;   
      }
      
      if(passwd != passwd2){
         alert("비밀번호가 일치하지 않습니다.");
         return;
      }
   }

</script>
</head>
<body>
   <form name="loginForm" action="">
      <p>아이디 : <input type="text" name="id" /></p>
      <p>비밀번호 : <input type="password" name ="passwd" /> </p>
      <p>비밀번호 확인 : <input type="password" name ="passwd2" /> </p>
      <p><input type="button" value="전송" onclick="CheckForm()"> </p>
   </form>
</body>
</html>