<%@ page  contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
	response.setIntHeader("Refresh",5);
	%>
	<p>현재 시간은 <%=java.util.Calendar.getInstance().getTime() %></p>
	<p><a href="response_data.jsp">Google 홈페이지로 이동하기</a></p>
</body>
</html>