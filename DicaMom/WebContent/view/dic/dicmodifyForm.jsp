<%@page import="dic.DicVO"%>
<%@page import="dic.DicDaoImpl"%>
<%@page import="dic.DicDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("ID");
DicDao dicdao = DicDaoImpl.getInstance();
DicVO vo = dicdao.getdicInfo(id);
%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/QnAlist/QnAlist.css"
	rel="stylesheet" type="text/css">
<title>회원 정보 수정</title>	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<style>
ul {
	list-style-type: none;
	padding: 0px;
	margin: 0px;
	width: 200px;
	background: #2192b4;
	height: 550px;
	overflow: auto;
	position: fixed;
	text-align: center;
}

li a {
	text-decoration: none;
	padding: 10px;
	display: block;
	color: #000;
	font-weight: bold;
}

li a:hover {
	background: rgb(49, 40, 40);
	color: #fff;
}

li a.home {
	background: #333;
	color: #fff;
}

.cd1 {
	margin-left: 10px;
	text-align: center;
}

.member {
	display: flex;
	justify-content: center;
	background: #333;
	color: #fff;
	
}
</style>
</head>

<body>
	<ul>
		<li><a class="home" href="#">HOME</a></li><br>
	   	<li><a href="<%=request.getContextPath()%>/view/dic/dicmodifyForm.jsp">회원정보 설정</a></li><br>
       	<li><a href="<%=request.getContextPath()%>/mypage/list.do">나의 정보게시판</a></li><br>
       	<li><a href="<%=request.getContextPath()%>/mypage/qalist.do">나의  Q&A</a></li><br>
	</ul>
	<main>
	<h1>회원 정보 수정</h1>
		<form action="<%=request.getContextPath()%>/DicUpdateController.do"
			method="post">
			<table>
				<tr>
					<td>I D :</td>
					<td><input id="dicId" type="text" name="dicId"
						value="<%=vo.getDicId()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td>현재 패스워드 :</td>
					<td><input type="password" id="dicPw" name="dicPw" value="" onblur="f_chk()">
						<div id="disp"></div>
						</td>
				</tr>
				<tr>
					<td>변경 패스워드 :</td>
					<td><input type="password" id="dicmodifyps" name="dicmodifyps"
						value=""></td>
				</tr>
				<tr>
					<td>변경 패스워드 확인 :</td>
					<td><input type="password" id="dicmodifyreps" name="dicmodifyreps" value="" onblur="f_pschk()">
						<div style="height:10px" "id="idpschk"></div>
						</td>
				</tr>
				<tr>
					<td>이름 :</td>
					<td><input type="text" name="dicName"
						value="<%=vo.getDicName()%>"></td>
				</tr>
				<tr>
					<td>생년월일 :</td>
					<td><input type="text"  id="dicBir" name="dicBir" class="datepicker"
						value="<%=vo.getDicBir()%>"></td>
				</tr>
				<tr>
					<td>주소 :</td>
					<td><input type="text" id="dicAddr" name="dicAddr" 
						value="<%=vo.getDicAddr()%>"></td>
				</tr>
				<tr>
					<td>상세주소 :</td>
					<td><input type="text" id="dicAddr2" name="dicAddr2"
						value="<%=vo.getDicAddr2()%>"></td>
				</tr>
				<tr>
					<td>전화번호 :</td>
					<td><input type="text"  id="dicPh" name="dicPh"
						value="<%=vo.getDicPh()%>"></td>
				</tr>
				<tr>
					<td>이메일 :</td>
					<td><input type="text" name="dicMail"
						value="<%=vo.getDicMail()%>"></td>
				</tr>
				
				<tr>
					<td>닉네임 :</td>
					<td><input type="text" name="dicNic"
						value="<%=vo.getDicNic()%>"></td>
				</tr>
			</table>
			<input id="check" type="submit" value="수정완료" onsubmit="f_check()" >
			<a href="<%=request.getContextPath()%>/view/dic/delete.jsp"
				class="member">회원탈퇴</a>

		</form>
	</main>


		


	<script type="text/javascript">   
		$(document).ready(function() {         
			$(".datepicker").datepicker({                     
			changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.              
			changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.              
			minDate: '-100y', // 현재날짜로부터 100년이전까지 년을 표시한다.              
			nextText: '다음 달', // next 아이콘의 툴팁.              
			prevText: '이전 달', // prev 아이콘의 툴팁.              
			numberOfMonths: [1,1], // 한번에 얼마나 많은 월을 표시할것인가. [2,3] 일 경우, 2(행) x 3(열) = 6개의 월을 표시한다.             
			stepMonths: 3, // next, prev 버튼을 클릭했을때 얼마나 많은 월을 이동하여 표시하는가.               
			yearRange: 'c-100:c+10', // 년도 선택 셀렉트박스를 현재 년도에서 이전, 이후로 얼마의 범위를 표시할것인가.            
			showButtonPanel: true, // 캘린더 하단에 버튼 패널을 표시한다. ( ...으로 표시되는부분이다.)              
			currentText: '오늘 날짜' , // 오늘 날짜로 이동하는 버튼 패널              
			closeText: '닫기',  // 닫기 버튼 패널              
			dateFormat: "yy-mm-dd", // 텍스트 필드에 입력되는 날짜 형식.              
			showAnim: "slide", //애니메이션을 적용한다.                
			showMonthAfterYear: true , // 월, 년순의 셀렉트 박스를 년,월 순으로 바꿔준다.              
			 dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], // 요일의 한글 형식.              
			monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] // 월의 한글 형식.          
			});     
		});
	
		window.onload = function(){
		    document.getElementById("dicAddr").addEventListener("click", function(){ //주소입력칸을 클릭하면
		        //카카오 지도 발생
		        new daum.Postcode({
		            oncomplete: function(data) { //선택시 입력값 세팅
		                document.getElementById("dicAddr").value = data.address; // 주소 넣기
		                document.querySelector("input[name=dicAddr2]").focus(); //상세입력 포커싱
		            }
		        }).open();
		    });
		}
		
		//입력 시 하이픈 자동 삽입 정규식.
		$(document).on("keyup", "#dicPh", function() { 
			$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") ); 
		});
	
	
		let $dicId = $("#dicId").val();
		
		var idpschk;
		
	 	function f_chk(){
	 		
			console.log($dicId);
		$.ajax({
			  url: "<%=request.getContextPath()%>/DicModifyController.do", // 요청이 전송될 URL 주소
				type : 'POST', // http 요청 방식 (default: ‘GET’)
				data : {
					"dicId" : $dicId,
					"dicPw" : $("#dicPw").val()
				}, // 요청 시 포함되어질 데이터
				dataType : 'text', // 응답 데이터 형식 (명시하지 않을 경우 자동으로 추측)
				success : function(p_arg) {
					if (p_arg == "OK") {
						$("#disp").html("비밀번호 일치").css("color", "green");
						idpschk = true;
					}
				},
				error : function(request, status, error) {
					idpschk = false;
					$("#disp").html("아이디 비밀번호를 확인하세요.").css("color", "red");
					console.log("code: " + request.status)
					console.log("message: " + request.responseText)
					console.log("error: " + error);
					// 응답을 받지 못하였다거나 정상적인 응답이지만 데이터 형식을 확인할 수 없기 때문에
					// error 콜백이 호출될 수 있습니다.
					// 예를 들어, dataType을 지정해서 응답 받을 데이터 형식을 지정하였지만,
					// 서버에서는 다른 데이터형식으로 응답하면  error 콜백이 호출되게 됩니다.
				}
			})
		}

		function f_pschk() {
			var $dicps = $("#dicmodifyps").val();
			var $dicmodifyreps = $("#dicmodifyreps").val();

			if ($dicps == $dicmodifyreps) {
				$("#idpschk").html("비밀번호 일치");
			} else {
				$("#idpschk").html("비밀번호를 확인해주세요");

			}
		}
		
	</script>
	 
</body>

</html>
<%@ include file="../footer.jsp"%>