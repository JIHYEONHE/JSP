<%@ page  contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<p>전송된 요청 파라미터 : <%=request.getQueryString()%></p>
<p>경로 : <%=request.getContextPath()%></p>
</body>
</html>