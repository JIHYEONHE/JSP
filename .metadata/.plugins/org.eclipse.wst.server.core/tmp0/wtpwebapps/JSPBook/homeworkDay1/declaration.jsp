<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<!-- 선언문 태그에 문자형 전역변수를 선언하여 "Hello, Java Server Pages" 저장
	           문자형 변수 값을 반환하는 전역 메소드 getString()을 작성
	     getString()메소드를 호출하여 문자형 변수값을 출력  -->
	<%! String getString(){
		return "Hello, Java Server Pages";
	}
	%>
	<%
	out.println(getString());
	%>
</body>
</html>