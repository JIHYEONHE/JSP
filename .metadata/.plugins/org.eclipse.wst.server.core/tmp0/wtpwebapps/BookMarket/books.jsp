<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto.BookVO"%>
<%@page import="java.util.List"%>
<%@page import="dao.BookRepository"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%
	//기본적으로 3개의 책이 생성되어 있는 객체 생성
	BookRepository bookDAO = BookRepository.getInstance();
	//SELECT * FROM BOOK
	List<BookVO> listOfBooks = bookDAO.getAllBooks();
%>
<c:set var="listOfBooks" value="<%=listOfBooks%>" scope="page" />
<html>
<head>
<link rel="stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 목록</title>
</head>
<body>
	<!-- 머리글에 해당하는 menu.jsp 파일의 내용을 포함하도록
	include 액션 태그를 작성 -->
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<!-- 내용 들어온다 -->
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<!--============= 도서 목록 시작 ================-->
	<div class="container">
		<div class="row" align="left">
			<c:forEach var="bookVO" items="${listOfBooks}">
				<div>
					<h3>${bookVO.category}${bookVO.name}</h3>
					<p>${bookVO.description}</p>
					<h5>${bookVO.author}|${bookVO.publisher}|${bookVO.unitPrice}원</h5>
					<hr />
				</div>
			</c:forEach>
		</div>
	</div>
	<!--============= 도서 목록 끝==================-->
	<jsp:include page="footer.jsp" />
</body>
</html>