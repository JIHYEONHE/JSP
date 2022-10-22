<%@page import="qaboard.QaBoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<QaBoardVO> qaList = (List<QaBoardVO>) request.getAttribute("qaList");

	String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
	session.removeAttribute("msg"); //꺼내온 메세지 속성값 삭제하기
%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/QnAlist/QnAlist.css"
	rel="stylesheet" type="text/css">
<!-- <link href="css/QnAlist/QnAlist.css" rel="stylesheet" /> -->
<link href="css/QnAlist/Styles.css" rel="stylesheet" />
<style>
a {
display:inline-block;
text-align:center;
}
</style>

<title>QA 게시판 목록</title>
<script>
	function createQnA() {
		window.location.href = "insert.do";
	}
</script>
</head>
<body>

	<main>
		<h1>Q&A Board</h1>
		<section>
			<table>
				<thead>
					<th class="listNumber">글번호</th>
					<th class="listTitle">제목</th>
					<th class="listWriter">작성자</th>
					<th class="listDate">작성일</th>
				</thead>
				<tbody>
					<%
					int qaSize = qaList.size();
					int pageSize = 5;
					String pageNum = request.getParameter("pageNum");
					if (pageNum == null) {
						pageNum = "1";
					}

					int currentPage = Integer.parseInt(pageNum);
					int startRow = (currentPage - 1) * pageSize;
					int endRow = startRow + (pageSize);
					if (endRow >= qaSize) {
						endRow = qaSize;
					}
					%>

					<%
						if (qaSize > 0) {
						for (int i = startRow; i < endRow; i++) {
					%>

					<tr>
						<td><%=qaList.get(i).getQaQnum()%></td>
						<td><a
							href="detail.do?qaQnum=<%=qaList.get(i).getQaQnum()%>"><%=qaList.get(i).getQaQtitle()%></a></td>
						<td><%=qaList.get(i).getDicId()%></td>	
						<td><%=qaList.get(i).getQaQdate().substring(0, 10)%></td>
					</tr>
					<%
						}
					} else {
					%>
					<tr>
						<td colspan="5">게시판정보가 없습니다.</td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<div class="buttonContainer">
				<button class="createQnA" onclick="createQnA()">게시물 등록</button>
			</div>
			<%
				if (qaSize > 0) {
				int pageCount = qaSize / pageSize + (qaSize % pageSize == 0 ? 0 : 1);

				int pageBlock = 10;

				int startPage = ((int) ((currentPage - 1) / pageBlock)) * pageBlock + 1;

				int endPage = startPage + pageBlock - 1;

				if (endPage > qaSize - 1) {
					endPage = qaSize - 1;
				}
			%>
			
			<div id="page_control">


				<% if(startPage > pageBlock) { %>
				<a href="list.do?pageNum=<%=startPage - pageBlock%>">Prev</a>
				<%} %>

				<%	for(int i = 1; i <= pageCount; i++) { %>
				<a href="list.do?pageNum=<%=i%>"><%=i%></a>
				<%} %>

				<% if(endPage < pageCount) { %>
				<a href="list.do?pageNum=<%=startPage + pageBlock%>">Next</a>
				<%} %>

			</div>
				<%
					}
				%>
		</section>
	</main>
	<%
		if (msg.equals("성공")) {
	%>
	<%
		}
	%>
</body>
</html>
<%@ include file="../footer.jsp"%>
