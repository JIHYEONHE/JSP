<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="reply.ReplyServiceImpl"%>
<%@page import="reply.ReplyService"%>
<%@page import="dic.DicService"%>
<%@page import="reply.ReplyVO"%>
<%@page import="java.util.List"%>
<%@page import="comm.AtchFileVO"%>
<%@page import="infoboBoard.InfoBoardVO"%>
<%@ page import="dic.DicVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	InfoBoardVO ibv = (InfoBoardVO) request.getAttribute("ibv");

	List<AtchFileVO> atchFileList = 
			(List<AtchFileVO>)request.getAttribute("atchFileList");
	int infoboNum = Integer.parseInt(request.getParameter("infoboNum"));
		request.setAttribute("infoboNum", infoboNum);
		 ReplyService replyservice = ReplyServiceImpl.getInstance();
		List<ReplyVO> vo = replyservice.getReplyList(infoboNum);  
%>    
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="./css/styles2.css">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/QnAlist/qadetail.css">
<title>정보 게시판</title>
</head>

<style>

table {
 border-collapse : collapse;
}
th, td {
   text-align: left;
   vertical-align : top;
}

.img {
width: 400px;
height : 250px;
}
 
</style> 

<body>
	<main>
		<div class="h1Container">
		 <h1>정보게시판 상세페이지 </h1>
	 </div>
	   <table>
			<tr>
				<td width=80px>제목 </td>
				<td width=400px><%=ibv.getInfoboTitle() %></td>
			</tr>
			<tr>
				<td width=80px>작성일 </td>
				<td width=400px><%=ibv.getInfoboDate() %></td>
			</tr>
			<tr>
				<td width=80px>작성자 </td>
				<td width=400px><%=ibv.getDicId() %></td>
			</tr>
			<tr height=400px text-align: left>
				<td width=80px rowspan=2>내용 </td>
				<td width=400px  height=300px> <img class="img" src="<%=request.getContextPath()%>/filedown.do?fileId=<%=ibv.getAtchFileId() %>&fileSn=<%=ibv.getFileSn() %>"></td>
			</tr>
			<tr height=250px>
				<td width=400px><%=ibv.getInfoboCon() %></td>
			</tr>

		</table>

	<form action="<%=request.getContextPath()%>/ReplyInsertController.do" method="get">
		
		<table>
				<tr>
					<td> 작성자 : </td>
					<td><input name="replyCon" style="width: 800px; height:100px" type="text" value="" required></td>
					<td><input style="width: 100px;" type="submit" value="댓글 작성" ></td>
					<input type="hidden" name= "infoboNum" value="<%=request.getAttribute	("infoboNum")%>">
				</tr>
		</table>
	</form>
				
				<%
					 for(int i=0; i < vo.size(); i++){ 
				%>
				<div id="divs">
					 <div style="display: inline;">I D : <%=vo.get(i).getDicId()%></div> 
					<div style="display: block; font-size: 5px"><%=vo.get(i).getReplyDate() %></div>
					<input  readonly="readonly" "name="replyCon" style="width: 920px; height:100px" disply="inline"type="text" value="<%=vo.get(i).getReplyCon() %> ">
					<input type="hidden"name="replyNum" value="<%=vo.get(i).getReplyNum()%> ">
					
					<input id="delbtn" style="width: 100px;" type="button" value="댓글 삭제" onclick="f_replyDel('<%=vo.get(i).getReplyNum()%>', '<%=vo.get(i).getDicId()%>' , '<%=request.getAttribute("infoboNum")%>')">
					<br><br>
				</div>
					<% 
					}
				%>
				
		<script>
		
		
			
			function f_replyDel(replyNum, dicId, infoboNum){
			
				$.ajax({
					url:'<%=request.getContextPath()%>/ReplyDeleteController.do',
					method :"post", 
					dataType : "text",
					data : { "replyNum": replyNum,
							 "dicId": dicId,
							 "infoboNum" : infoboNum
					},
					success:function(result){
						if(result == "OK"){
						alert("삭제되었습니다.");
						location.href="<%=request.getContextPath() %>/infoBoard/detail.do?infoboNum=<%=request.getAttribute("infoboNum") %>"
						}else if(result =="NO"){
							alert("본인 글만 삭제 가능합니다.");
						}
					},
					error:function(result){
						alert("잘못된 접근 입니다. 다시 시도 하세요.")
					}
				});
			}
		
		
		</script>
				
				
		
		<div class="btn">
					<a href="/DicaMom/infoBoard/list.do">[목록]</a>
					<a class="btn1" href="update.do?infoboNum=<%=ibv.getInfoboNum() %>">[글 수정]</a>
					<a class="btn2" href="delete.do?infoboNum=<%=ibv.getInfoboNum() %>">[글 삭제]</a>				
		</div>
       
	</form>
<script>
	var btn1 = document.querySelector(".btn1");
	var btn2 = document.querySelector(".btn2");

	if("<%= session.getAttribute("ID") %>" != "<%=ibv.getDicId() %>") { // 로그인 했을때
			btn1.style.display = "none";
			btn2.style.display = "none";
	}
</script>		
	
</body>
</html>
<%@ include file="../footer.jsp"%>