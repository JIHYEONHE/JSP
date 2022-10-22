<%@page import="dic.DicVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<center>
	<body>
		<b><font size="10" color="gray">회원탈퇴</font></b>
		<hr>
		<br>
		<form id= "delete" name="deleteform" action="" method="post" onsubmit="userDelete();">
		 <input type="hidden" name="dicId" value="<%= session.getAttribute("ID") %>">
			<table border="3" bordercolor="skyblue">
				<tr>
					<td width="80" align="center">비밀번호</td>
					<td><input type="password" name="dicPw"  required pattern="^[A-Za-z0-9]{3,12}$"></a></td>
				</tr>
			</table>
			<br><input type="submit"  value="회원탈퇴"> 
			    <input type="button" value="취소" onclick="location.href='<%=request.getContextPath()%>/view/dic/dicmodifyForm.jsp'">
		</form>
		
		<script>
		function userDelete() {
			if(!confirm("정말로 탈퇴할꺼임?")){
				return false;
			}
			
			event.preventDefault(); // 폼 전송 막기
			let dataM = $("#delete").serialize(); // dicName=?&dicPh=?	
			$.ajax({
				method:"get",
				url:"<%=request.getContextPath() %>/dic/delete.do",
				data:dataM,
				dataType:"text", // 주의 보내는 데이타 타입 아님, 받는 데이터타입
				success:function(result){
					console.log("넘어온 값:",result);
					if(result == "fail"){
						return;  // 종료 빼먹으면 안되용
					}
					alert("회원탈퇴되었습니다");
					location.href="<%=request.getContextPath()%>";
					
				},  
				error: function (request, status, error) {
		                 console.log("code: " + request.status)
		                 console.log("message: " + request.responseText)
		                 console.log("error: " + error);
			   }			
			})	
		}
		</script>
		
	
	</body>
</center>
</html>
