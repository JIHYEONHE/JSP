<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//process.jsp?name = 개똥이
		//name=개똥이 => request 객체에 들어있음
		request.setCharacterEncoding("UTF-8"); //인코딩해서 한글 안깨지게 해주기
		String name = request.getParameter("name"); //개똥이라는 value가 가져와짐
	%>
	<p>이름: <%=name%></p>
	<p>요청 정보 길이: <%=request.getContentLength()%></p>
	<p>클라이언트 전송 방식 : <%=request.getMethod()%></p>
	<p>요청 URI : <%=request.getRequestURI()%></p>
	<p>서버 이름 : <%=request.getServerName()%></p>
	<p>서버 포트 : <%=request.getServerPort()%></p>
</body>
</html>