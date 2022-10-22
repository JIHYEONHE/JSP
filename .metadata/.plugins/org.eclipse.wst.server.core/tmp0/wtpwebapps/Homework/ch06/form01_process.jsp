<%@ page  contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>>Form Processing</title>
</head>
<body>
<!-- form01_process.jsp?name=개똥이 &addr=대전&email,=test@test.com -->
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
%>

<!-- 
<c:set var="name" value="<%=name%>" />
<c:set var="addr" value="<%=addr%>" />
<c:set var="email" value="<%=email%>" />
-->

<p>아이디 :<%=name%></p>
<p>주소 :<%=address%></p>
<p>이메일 :<%=email%></p>

<!-- 
<script type="text/javascript">
let name = "${name}";
let addr = "${addr}";
let email = "${email}"
</script>
-->


</body>
</html>