<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie</title>
</head>
<body>

<%
Cookie[] cookies = request.getCookies();
cookies[0].setMaxAge(0);
response.addCookie(cookies[0]);   

response.sendRedirect("cookie.jsp");
%>

</body>
</html>