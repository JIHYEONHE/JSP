<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>

<%
String userid = (String)session.getAttribute("userID");

if(userid == null){
	response.sendRedirect("session_out.jsp");
}
%>

<h3><%=userid %>님 반갑습니다.</h3>
<a href="session_out.jsp">로그아웃</a>

</body>
</html>