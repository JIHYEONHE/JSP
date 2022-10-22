<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 0부터 10까지 0,2,4,8,10 출력 -->
<!-- var : variable 변수 -->
<c:forEach var="k" begin="0" end="10" step="2">
	<p>${k}</p>
	<c:out value="${k}" />
</c:forEach>
</body>
</html>