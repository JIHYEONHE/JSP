<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>

<form action="session_process.jsp" method="post">
<p> 아이디 : <input type="text" name="id"> 
<p> 비밀번호 : <input type="text" name="passwd">
<input type="submit" value="전송">

</body>
</html>