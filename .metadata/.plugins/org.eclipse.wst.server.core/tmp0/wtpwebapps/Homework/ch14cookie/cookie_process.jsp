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
String id = request.getParameter("id");
String pw = request.getParameter("passwd");

if(id.equals("admin") && pw.equals("admin1234")){
   Cookie cookieID = new Cookie("userID", id);
   response.addCookie(cookieID);
   response.sendRedirect("welcome.jsp");
}else{
   out.println("세션 연결에 실패했습니다.");
}
%>

</body>
</html>