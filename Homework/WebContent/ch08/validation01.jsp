<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
<script type="text/javascript">
   function checkLogin() {
      
      let form = document.loginForm;
      
      if (form.id.value == "") {
         alert("아이디를 입력해주세요.");
         form.id.focus(); 
         return;
      }
      
      if (form.passwd.value == "") {
         alert("비밀번호를 입력해주세요.");
         form.passwd.focus(); 
         return;
      }
            
      if (form.passwd.value == form.id.value) {
         alert("비밀번호는 아이디를 포함할 수 없습니다.");
         form.id.focus();  
         return;
      }
      form.submit();
   }
</script>
</head>
<body>
   <form name="loginForm" action="validation_process.jsp" method="post">
      <p>아이디 : <input type="text" name="id" /></p>
      <p>비밀번호 : <input type="password" name="passwd" /></p>
      <p><input type="button" value="전송" onclick="checkLogin()" /></p>   
   </form>
</body>
</html>