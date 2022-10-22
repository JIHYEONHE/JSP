<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %> <!-- 정적 포함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>현재 시간 : <%=java.util.Calendar.getInstance().getTime() %></p>
	<jsp:include page="./header.jsp"> <!-- include태그는  잘 쓰지 않음 -->
		<jsp:param value="a001" name="id"/> <!-- 동적 포함 -->
	</jsp:include>
</body>
</html>